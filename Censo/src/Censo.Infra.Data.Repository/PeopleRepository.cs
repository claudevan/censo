using System;
using System.Collections.Generic;
using System.Data;
using Censo.Domain.Core.Entities;
using Censo.Infra.Data.Repository.Base;
using Censo.Infra.Data.Repository.Interfaces;
using Dapper;
using Microsoft.Extensions.Configuration;

namespace Censo.Infra.Data.Repository
{
    public class PeopleRepository : BaseRepository<People>, IPeopleRepository
    {
        public PeopleRepository(IConfiguration configuration) : base(configuration.GetConnectionString("CensoDatabase"))
        {
        }

        public IEnumerable<People> GetSons(Guid parentId, int? commandTimeout = null)
        {
			using (var connection = GetConnection())
            {
                return connection.Query<People>(GetSonsQuery, new { Id = parentId }, commandTimeout: commandTimeout,
                    commandType: CommandType.Text);
            }
		}

        public IEnumerable<People> GetParents(Guid sonId, int? commandTimeout = null)
        {
            using (var connection = GetConnection())
            {
                return connection.Query<People>(GetParentsQuery, new {Id = sonId }, commandTimeout: commandTimeout,
                    commandType: CommandType.Text);
            }
        }

        #region Querys

        private string GetParentsQuery => @";WITH CTE_Pais AS (
	                        --Ancora
	                        SELECT 
		                        REL.SonId, ParentId, nivel = 1
	                        FROM 
		                        dbo.TB_Relationship AS REL
	                        WHERE
		                        REL.SonId = @Id

	                        UNION ALL
	                        
	                        SELECT 
		                        REL.SonId, REL.ParentId, nivel + 1 AS nivel
	                        FROM 
		                        dbo.TB_Relationship AS REL
	                        INNER JOIN 
		                        CTE_Pais AS CTE ON REL.SonId = CTE.ParentId
                        )
                        SELECT 
	                        PEO.*
                        FROM 
	                        CTE_Pais AS CTE
                        INNER JOIN
	                        dbo.TB_People AS PEO
		                        ON PEO.Id = CTE.ParentId
                        OPTION(MaxRecursion 3)";

        private string GetSonsQuery => @";WITH CTE_Filhos AS (
	                --Ancora
	                SELECT 
		                REL.SonId, ParentId, nivel = 1
	                FROM 
		                dbo.TB_Relationship AS REL
	                WHERE
		                REL.ParentId = @Id

	                UNION ALL
	                
	                SELECT 
		                REL.SonId, REL.ParentId, nivel + 1 AS nivel
	                FROM 
		                dbo.TB_Relationship AS REL
	                INNER JOIN 
		                CTE_Filhos AS CTE ON REL.ParentId = CTE.SonId
                )
                SELECT 
	                PEO.*
                FROM 
	                CTE_Filhos AS CTE
                INNER JOIN
	                dbo.TB_People AS PEO
		                ON PEO.Id = CTE.SonId
                OPTION(MaxRecursion 3)";

        #endregion
    }
}
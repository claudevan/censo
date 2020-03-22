using System;
using System.Collections.Generic;
using System.Data;
using Censo.Infra.Data.Repository.Interfaces.Base;
using Dapper.Contrib.Extensions;

namespace Censo.Infra.Data.Repository.Base
{
    public class BaseRepository<T> : BasicRepository, IBaseRepository<T>, IDisposable where T : class
    {
        //TODO: Trocar após implementar o UoW
        private IDbConnection Connection { get; set; }

        public BaseRepository(string strConnection) : base(strConnection)
        {
            Connection = GetConnection();
        }


        public virtual long Add(T entity, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return Connection.Insert(entity, transaction, commandTimeout);
        }

        public virtual IEnumerable<T> List(int? commandTimeout = null)
        {
            return Connection.GetAll<T>(null, commandTimeout);
        }

        public virtual T GetById(Guid id, int? commandTimeout = null)
        {
            return Connection.Get<T>(id, null, commandTimeout);
        }

        public virtual bool Update(T entity, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return Connection.Update(entity, transaction, commandTimeout);
        }

        public virtual bool Delete(T entity, IDbTransaction transaction = null, int? commandTimeout = null)
        {
            return Connection.Delete(entity, transaction, commandTimeout);
        }

        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }
}
using System;
using System.Collections.Generic;
using Censo.Domain.Core.Entities;
using Censo.Infra.Data.Repository.Interfaces.Base;

namespace Censo.Infra.Data.Repository.Interfaces
{
    public interface IPeopleRepository : IBaseRepository<People>
    {
        IEnumerable<People> GetSons(Guid parentId, int? commandTimeout = null);
        IEnumerable<People> GetParents(Guid sonId, int? commandTimeout = null);
    }
}
using System;
using System.Collections.Generic;
using System.Data;

namespace Censo.Infra.Data.Repository.Interfaces.Base
{
    public interface IBaseRepository<T>
    {
        long Add(T entity, IDbTransaction transaction = null, int? commandTimeout = null);
        IEnumerable<T> List(int? commandTimeout = null);
        T GetById(Guid id, int? commandTimeout = null);
        bool Update(T entity, IDbTransaction transaction = null, int? commandTimeout = null);
        bool Delete(T entity, IDbTransaction transaction = null, int? commandTimeout = null);
    }
}
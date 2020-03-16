using Censo.Domain.Core.Entities;
using Censo.Infra.Data.Repository.Base;
using Censo.Infra.Data.Repository.Interfaces;

namespace Censo.Infra.Data.Repository
{
    public class PeopleRepository : BaseRepository<People>, IPeopleRepository
    {
        public PeopleRepository(string strConnection) : base(strConnection)
        {
        }
    }
}
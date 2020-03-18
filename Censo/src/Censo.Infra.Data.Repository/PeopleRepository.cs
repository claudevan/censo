using Censo.Domain.Core.Entities;
using Censo.Infra.Data.Repository.Base;
using Censo.Infra.Data.Repository.Interfaces;
using Microsoft.Extensions.Configuration;

namespace Censo.Infra.Data.Repository
{
    public class PeopleRepository : BaseRepository<People>, IPeopleRepository
    {
        public PeopleRepository(IConfiguration configuration) : base(configuration.GetConnectionString("CensoDatabase"))
        {
        }
    }
}
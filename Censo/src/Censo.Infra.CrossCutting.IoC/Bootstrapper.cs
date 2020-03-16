using Censo.Application;
using Censo.Application.Interfaces;
using Censo.Infra.Data.Repository;
using Censo.Infra.Data.Repository.Interfaces;
using Microsoft.Extensions.DependencyInjection;

namespace Censo.Infra.CrossCutting.IoC
{
    public static class Bootstrapper
    {
        public static void RegisterServices(IServiceCollection services)
        {
            //Configs
            //services.AddFluentValidation();

            //Aplication
            services.AddScoped<IPeopleService, PeopleService>();

            //Data
            //services.AddScoped<IPeopleRepository, PeopleRepository>();
        }
    }
}

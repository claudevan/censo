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
            //services.AddTransient<IValidator<PeopleVM>, PeopleVMValidator>();

            //Data
        }
    }
}

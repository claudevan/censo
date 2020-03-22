using AutoMapper;
using Censo.Application.ViewModels;
using Censo.Domain.Core.Entities;
using Censo.Domain.Core.ValueObjects;

namespace Censo.Application.AutoMapper
{
    public class DomainToViewModelMappingProfile : Profile
    {
        public DomainToViewModelMappingProfile()
        {
            CreateMap<People, PeopleVM>();

            //CreateMap<Categoria, CategoriaViewModel>();
        }
    }
}

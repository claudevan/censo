using AutoMapper;
using Censo.Application.ViewModels;
using Censo.Domain.Core.Entities;

namespace Censo.Application.AutoMapper
{
    public class DomainToViewModelMappingProfile : Profile
    {
        public DomainToViewModelMappingProfile()
        {
            CreateMap<People, PeopleVM>();

            CreateMap<People, RelantionshipVM>();
        }
    }
}

using AutoMapper;
using Censo.Application.ViewModels;
using Censo.Domain.Core.Entities;

namespace Censo.Application.AutoMapper
{
    public class ViewModelToDomainMappingProfile : Profile
    {
        public ViewModelToDomainMappingProfile()
        {
            CreateMap<PeopleVM, People>()
                .ConstructUsing(p => new People(p.Document, p.Birthdate, p.FirstName, p.LastName, p.EthnicityId, p.GenderId, p.EducationalId, p.DistrictId));

        }
    }
}

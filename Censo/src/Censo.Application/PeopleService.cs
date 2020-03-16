using System.Collections.Generic;
using Censo.Application.Interfaces;
using Censo.Application.ViewModels;
using Censo.Domain.Core.Entities;
using Censo.Domain.Core.ValueObjects;
using Censo.Infra.Data.Repository.Interfaces;
using Microsoft.AspNetCore.Routing.Matching;
using Microsoft.Extensions.Configuration;

namespace Censo.Application
{
    public class PeopleService : IPeopleService
    {
        private readonly IPeopleRepository _repository;
        private readonly IConfiguration _configuration;

        public PeopleService(IPeopleRepository repository, IConfiguration configuration)
        {
            _repository = repository;
            _configuration = configuration;
        }

        public bool Save(PeopleVM people)
        {
            //TODO: Trocar pelo automapper
            var entity = new People(new Document {Number = people.Document}, people.Birthdate, people.FirstName,
                people.LastName, people.EthnicityId, people.GenderId, people.EducationalId, people.DistrictId);
            
            var result = _repository.Add(entity);

            return result > 0;
        }

        public IEnumerable<PeopleVM> List()
        {
            var entityList = _repository.List();

            //TODO: Trocar pelo automapper
            List<PeopleVM> list = new List<PeopleVM>();

            foreach (var people in entityList)
            {
                list.Add(item: new PeopleVM
                {
                    Birthdate = people.Birthdate,
                    FirstName = people.FirstName,
                    LastName = people.LastName,
                    DistrictId =  people.DistrictId,
                    Document =  people.Document.Number,
                });
            }

            return list;
        }
    }
}
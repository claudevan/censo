using Censo.Application.Interfaces;
using Censo.Application.ViewModels;
using Censo.Domain.Core.Entities;
using Censo.Infra.Data.Repository.Interfaces;
using System.Collections.Generic;
using AutoMapper;

namespace Censo.Application
{
    public class PeopleService : IPeopleService
    {
        private readonly IPeopleRepository _repository;
        private readonly IMapper _mapper;
        
        public PeopleService(IPeopleRepository repository, IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }

        public bool Save(PeopleVM people)
        {
            var result = _repository.Add(_mapper.Map<People>(people));

            return result > 0;
        }

        public IEnumerable<PeopleVM> List()
        {
            return _mapper.Map<IEnumerable<PeopleVM>>(_repository.List());
        }
    }
}
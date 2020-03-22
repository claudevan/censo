using System;
using System.Collections.Generic;
using Censo.Application.ViewModels;

namespace Censo.Application.Interfaces
{
    public interface IPeopleService
    {
        bool Save(PeopleVM people);
        IEnumerable<PeopleVM> List();
        PeopleVM Get(Guid id);
    }
}
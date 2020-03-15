using Censo.Domain.Core.Entities.Base;
using System;
using Censo.Domain.Core.ValueObjects;

namespace Censo.Domain.Core.Entities
{
    public class People : EntityBase
    {
        public People(Document document, DateTime birthdate, string firstName, string lastName, Guid ethnicityId, Guid genderId, Guid educationalId, Guid districtId)
        {
            Document = document;
            Birthdate = birthdate;
            FirstName = firstName;
            LastName = lastName;
            EthnicityId = ethnicityId;
            GenderId = genderId;
            EducationalId = educationalId;
            DistrictId = districtId;
        }

        public Document Document { get; private set; }
        public DateTime Birthdate { get; private set; }
        public string FirstName { get; private set; }
        public string LastName { get; private set; }
        public Guid EthnicityId { get; private set; }
        public Guid GenderId { get; private set; }
        public Guid EducationalId { get; private set; }
        public Guid DistrictId { get; private set; }

    }
}

using Censo.Domain.Core.Entities.Base;
using System;
using System.ComponentModel.DataAnnotations.Schema;
using Censo.Domain.Core.ValueObjects;

namespace Censo.Domain.Core.Entities
{
    [Table("TB_People")]
    public class People : EntityBase
    {
        public People()
        {
            
        }

        public People(string document, DateTime birthdate, string firstName, string lastName, Guid ethnicityId, Guid genderId, Guid educationalId, Guid districtId)
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

        public string Document { get; set; }
        public DateTime Birthdate { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Guid EthnicityId { get; set; }
        public Guid GenderId { get; set; }
        public Guid EducationalId { get; set; }
        public Guid DistrictId { get; set; }

    }
}

using System;

namespace Censo.Domain.Core.Entities
{
    public class Relationship
    {
        public Guid SonId { get; set; }
        public Guid ParentId { get; set; }
    }
}
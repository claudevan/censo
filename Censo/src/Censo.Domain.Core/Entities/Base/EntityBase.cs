using System;
using System.ComponentModel.DataAnnotations;

namespace Censo.Domain.Core.Entities.Base
{
    public abstract class EntityBase
    {
        protected EntityBase()
        {
            Id = Guid.NewGuid();
            Active = true;
        }

        [Key]
        public Guid Id { get; private set; }
        public DateTime CreateAt { get; private set; }
        public DateTime AlterAt { get; private set; }
        public bool Active { get; private set; }
    }
}

using Censo.Domain.Core.Entities.Base;

namespace Censo.Domain.Core.Entities
{
    public class District : EntityBase
    {
        public string Description { get; set; }

        //Poderiamos aqui ter uma listagem de bairros que compoe essa região
    }
}

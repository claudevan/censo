using Censo.Domain.Core.Enums;
using System;

namespace Censo.Domain.Core.ValueObjects
{
    public class Document
    {
        public EnumDocumentType Type { get; set; }
        public string Number { get; set; }
        public DateTime EmissionDate { get; set; }
        public DateTime ExpireDate { get; set; }

        public bool Valid()
        {
            //Regra de validação de documento aqui

            return true;
        }
    }
}

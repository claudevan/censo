using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using Censo.Application.ViewModels;

namespace Censo.API.V1.Controllers
{
    /// <summary>
    /// Gestão de Pessoas
    /// </summary>
    [Route("v{v:ApiVersion}/[controller]")]
    [ApiVersion("1.0")]
    [ApiController]
    public class PeopleController : ControllerBase
    {
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        //[HttpGet("{id}", Name = "Get")]
        //public string Get(int id)
        //{
        //    return "value";
        //}

        [HttpPost]
        public ActionResult Post([FromBody] PeopleVM people)
        {
            return Created("", people);
        }
    }
}

using System;
using Censo.Application.Interfaces;
using Censo.Application.ViewModels;
using Microsoft.AspNetCore.Mvc;

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
        private readonly IPeopleService _service;

        public PeopleController(IPeopleService service)
        {
            _service = service;
        }

        [HttpGet]
        public ActionResult Get()
        {
            return Ok(_service.List());
        }

        [HttpGet("{id}", Name = "Get")]
        public ActionResult Get(Guid id)
        {
            return Ok(_service.Get(id));
        }

        [HttpPost]
        public ActionResult Post([FromBody] PeopleVM people)
        {
            return Created("", _service.Save(people));
        }
    }
}

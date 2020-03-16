﻿using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using Censo.Application.Interfaces;
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

        //[HttpGet("{id}", Name = "Get")]
        //public string Get(int id)
        //{
        //    return "value";
        //}

        [HttpPost]
        public ActionResult Post([FromBody] PeopleVM people)
        {
            return Created("", _service.Save(people));
        }
    }
}
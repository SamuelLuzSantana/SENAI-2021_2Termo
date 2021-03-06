using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai_inLock_tarde.Domain;
using Senai_inLock_tarde.Interface;
using Senai_inLock_tarde.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

/// <summary>
/// Controller responsavel pelos endpoints referentes aos jogos
/// </summary>

namespace Senai_inLock_tarde.Controller
{

    //Define que o tipo de resposta da API será no formato json
    
    [Produces("application/json")]

    //Define que a rota da requisição será no formato dominio/api/nomeController
    // ex: http://localhost:5000/api/jogos
    [Route("api/[controller]")]

    //Define que é um controlador de API
    [ApiController]
    public class JogosController : ControllerBase
    {

        /// <summary>
        /// Objeto jogoRepository irá receber todos os métodos definidos na interface IJogoRepository
        /// </summary>
        private IJogoRepository _jogoRepository { get; set; }

        public JogosController()
        {
            _jogoRepository = new JogoRepository();

        }

        /// <summary>
        /// Lista todos os generos
        /// </summary>
        /// <returns>Lista e um status code </returns>
        /// 

        [Authorize(Roles = "ADMINISTRADOR")]


        [HttpGet]
        public IActionResult Get()
        {
            //Cria a lista nomeada para receber os dados 
            List<JogoDomain> listaJogos = _jogoRepository.ListarTodos();
            // Retorna o status code com a lista
            return Ok(listaJogos);
        }


        /// <summary>
        /// Cadastra um novo gênero
        /// </summary>
        /// <returns>status code 201 - Created</returns>
        [HttpPost]

        public IActionResult Post(JogoDomain novoJogo)
        {
            //Faz a chamada para o método Cadastrar()
            _jogoRepository.Cadastrar(novoJogo);

            //Retorna um StatusCode 201 - Created
            return StatusCode(201);
        }

       

    }
}

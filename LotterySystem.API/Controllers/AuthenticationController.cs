using LotterySystem.Application.Interfaces.AthuenticationsInterfaces;
using LotterySystem.Domain.DTO_s.AuthenticationDTO;
using LotterySystem.Domain.DTOs.AccountDTO.Request;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace LotterySystem.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthenticationController : ControllerBase
    {
        private readonly IAuth _auth;
        
        public AuthenticationController(
          IAuth auth)
        {
            _auth = auth;
        }

        [AllowAnonymous]
        [HttpPost("login")]
        public async Task<IActionResult> SignIn([FromBody] LoginRequest request)
        {
            var result = await _auth.LoginUser(request);
            return Ok(result);
        }
    }
}

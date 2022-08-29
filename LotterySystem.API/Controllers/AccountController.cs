using LotterySystem.Application.Interfaces.AccountInterfaces;
using LotterySystem.Application.Interfaces.AthuenticationsInterfaces;
using LotterySystem.Domain.DTOs.AccountDTO.Request;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace LotterySystem.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        private readonly IAccountServices _account;
        private readonly IAuth _auth;

        public AccountController(
          IAccountServices account,IAuth auth)
        {
            _account = account;
            _auth = auth;
        }
        [HttpPost("Signup")]
        public async Task<IActionResult> AddUser([FromBody] UserRegistrationRequestDTO request)
        {
            var restut = await _account.SignUp(request);
            return Ok(restut);
        }
    }
}

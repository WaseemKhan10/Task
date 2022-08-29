using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using LotterySystem.Application.Interfaces.User;

namespace LotterySystem.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserNotificationController : ControllerBase
    {
        private readonly IUserNotificationService _userNotificationService;
        public UserNotificationController(IUserNotificationService userNotificationService)
        {
            _userNotificationService = userNotificationService;
        }
        //[HttpPost("AddNotification")]
        //[Authorize]
        //public async Task<IActionResult> CreateUpdate(UserNotificationDTO userNotificationDTO)
        //{
        //    return Ok(await _userNotificationService.AddNotification(userNotificationDTO));
        //}
        [HttpGet("GetNotificationsByUserId")]
        [Authorize]
        public async Task<IActionResult> GetNotificationsByUserId(string id, int page, int row)
        {
            return Ok(await _userNotificationService.GetNotificationsById(id, page, row));
        }
    }
}

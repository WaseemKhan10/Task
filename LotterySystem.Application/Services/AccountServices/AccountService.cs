using LotterySystem.Application.Interfaces.AccountInterfaces;
using LotterySystem.Domain.DTOs.AccountDTO.Request;
using LotterySystem.Domain.Interfaces;
using LotterySystem.Domain.Models;
using NowSoft.Utilities.RequestResponse;
using NowSoft.Utilities.StatusCode;
using Microsoft.AspNetCore.Identity;
using System;
using System.Text.Json;
using System.Threading.Tasks;

namespace LotterySystem.Application.Services.AccountServices
{
    public class AccountServices : IAccountServices
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        public AccountServices(
            UserManager<ApplicationUser> userManager,
            RoleManager<IdentityRole> roleManager
            )
        {
            _roleManager = roleManager;
            _userManager = userManager;
        }
       
        public async Task<Response<object>> SignUp(UserRegistrationRequestDTO userDTO)
        {
            var userexist = await _userManager.FindByEmailAsync(userDTO.Email);
            if (userexist != null)
            {
                return Response<object>.Failure("Email Already Exist", ApiStatusCode.InternalServer);
            }
            var userenamexist = await _userManager.FindByNameAsync(userDTO.UserName);
            if (userenamexist != null)
            {
                return Response<object>.Failure("User Name Already Exist", ApiStatusCode.InternalServer);
            }

            var user = new ApplicationUser()
            {
                FirstName = userDTO.FirstName,
                LastName = userDTO.LastName,
                Email = userDTO.Email,
                UserName = userDTO.UserName,
                device = userDTO.device,
                ipaddress = userDTO.ipaddress,
            };

            var res = await _userManager.CreateAsync(user, userDTO.Password);
            if (res.Succeeded)
            {
              
                return Response<object>.Success("User Created");
            }
            else
            {
                string error = JsonSerializer.Serialize(res.Errors);
                return Response<object>.Failure(error.ToString(), ApiStatusCode.InternalServer);
            }


            throw new NotImplementedException();
        }



    }
}

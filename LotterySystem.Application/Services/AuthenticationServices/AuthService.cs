using LotterySystem.Application.Configrations.TokenSettings;
using LotterySystem.Application.Interfaces.AthuenticationsInterfaces;
using LotterySystem.Domain.DTO_s.AuthenticationDTO;
using LotterySystem.Domain.DTO_s.AuthenticationDTO.Response;
using LotterySystem.Domain.DTOs.AuthenticationDTO.Token;
using LotterySystem.Domain.Models;
using NowSoft.Utilities.RequestResponse;
using NowSoft.Utilities.StatusCode;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using System.Diagnostics.CodeAnalysis;
using System.Threading.Tasks;

namespace LotterySystem.Application.Services.AuthenticationServices
{
    public class AuthService : IAuth
    {
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly JWTTokenSettingsManager _tokenSettings;
        public AuthService(
            SignInManager<ApplicationUser> signInManager,
            UserManager<ApplicationUser> userManager,
            IOptions<JWTTokenSettingsManager> tokenSettings
            )
        {
            _signInManager = signInManager;
            _userManager = userManager;
            _tokenSettings = tokenSettings.Value;
        }
        public async Task<Response<UserAuthResponse>> LoginUser([NotNull] LoginRequest loginRequest)
        {
            UserAuthResponse authResponse = new UserAuthResponse();
            var useremail = await _userManager.FindByEmailAsync(loginRequest.Email);
            if (useremail == null)
            {
                return Response<UserAuthResponse>.Failure(authResponse, "User Not Found", ApiStatusCode.InvalidEmailPassword);
            }
            var result = await _signInManager.CheckPasswordSignInAsync(useremail, loginRequest.Password, false);
            if (!result.IsNotAllowed)
            {
                if (result.Succeeded)
                {
                    var roles = await _userManager.GetRolesAsync(useremail);
                    string rolestring = roles.Count > 0 ? roles[0] : "NA";
                    authResponse.Id = useremail.Id;
                    authResponse.Email = useremail.Email;
                    authResponse.FirstName = useremail.FirstName;
                    authResponse.LastName = useremail.LastName;
                    authResponse.UserName = useremail.UserName;
                    authResponse.Token = new Token()
                    {
                        RefreashToken = JWT.JWTManager.GenerateJwtRefreshToken(useremail, rolestring, _tokenSettings.Key, _tokenSettings.Issuer, _tokenSettings.Audience),
                        TokenString = JWT.JWTManager.GenerateJwtToken(useremail, rolestring, _tokenSettings.Key, _tokenSettings.Issuer, _tokenSettings.Audience)
                    };
                    useremail.RefreashToken = authResponse.Token.RefreashToken;
                    await _userManager.UpdateAsync(useremail);

                    return Response<UserAuthResponse>.Success(authResponse, "User Found");
                }
                return Response<UserAuthResponse>.Failure("Incorrect email or password", ApiStatusCode.InvalidEmailPassword);
            }
            else
            {
                return Response<UserAuthResponse>.Failure("User Not Allowed to sign in", ApiStatusCode.UserDisabled);
            }

        }

    }
}

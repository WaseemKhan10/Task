using LotterySystem.Application.Interfaces.AccountInterfaces;
using LotterySystem.Application.Interfaces.AthuenticationsInterfaces;
using LotterySystem.Application.Services.AccountServices;
using LotterySystem.Application.Services.AuthenticationServices;
using Microsoft.Extensions.DependencyInjection;

namespace LotterySystem.Application
{
    public static class ServicesModule
    {
        public static void Register(IServiceCollection services)
        {
            #region Core Services
            services.AddScoped<IAuth, AuthService>();
            services.AddScoped<IAccountServices, AccountServices>();
            #endregion
        }
    }
}

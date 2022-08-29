using LotterySystem.Domain.DTO_s.AuthenticationDTO;
using LotterySystem.Domain.DTO_s.AuthenticationDTO.Response;
using NowSoft.Utilities.RequestResponse;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Text;
using System.Threading.Tasks;
using System.Security.Claims;
using LotterySystem.Domain.DTOs.AccountDTO.Request;

namespace LotterySystem.Application.Interfaces.AthuenticationsInterfaces
{
    public interface IAuth
    {
        Task<Response<UserAuthResponse>> LoginUser([NotNull] LoginRequest loginRequest);
    }
}

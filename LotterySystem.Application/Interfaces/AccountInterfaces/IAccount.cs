using LotterySystem.Domain.DTOs.AccountDTO.Request;
using NowSoft.Utilities.RequestResponse;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Threading.Tasks;
using System.Security.Claims;

namespace LotterySystem.Application.Interfaces.AccountInterfaces
{
    public interface IAccountServices
    {
        Task<Response<object>> SignUp(UserRegistrationRequestDTO userDTO);
    }
}

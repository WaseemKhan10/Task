using System;
using System.Collections.Generic;
using System.Text;

namespace LotterySystem.Domain.DTOs.AuthenticationDTO.Token
{
    public class Token
    {
        public string TokenString { get; set; }
        public string RefreashToken { get; set; }
    }
}

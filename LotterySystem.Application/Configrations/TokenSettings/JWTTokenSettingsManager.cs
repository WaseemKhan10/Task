using System;
using System.Collections.Generic;
using System.Text;

namespace LotterySystem.Application.Configrations.TokenSettings
{
    public class JWTTokenSettingsManager
    {
        public string Issuer { get; set; }
        public string Audience { get; set; }
        public string Key { get; set; }
    }
}

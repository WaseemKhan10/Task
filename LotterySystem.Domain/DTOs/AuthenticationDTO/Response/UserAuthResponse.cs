using LotterySystem.Domain.DTOs.AuthenticationDTO.Token;

namespace LotterySystem.Domain.DTO_s.AuthenticationDTO.Response
{
    public class UserAuthResponse
    {
        public string Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string UserName { get; set; }
        public Token Token { get; set; }
    }
}

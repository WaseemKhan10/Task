using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace LotterySystem.Domain.Models
{
    public class ApplicationUser : IdentityUser
    {
        [NotMapped]
        public Guid UserGuid { get { return new Guid(Id); } }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string RefreashToken { get; set; }
        public string device { get; set; }
        public string ipaddress { get; set; }
    }
}

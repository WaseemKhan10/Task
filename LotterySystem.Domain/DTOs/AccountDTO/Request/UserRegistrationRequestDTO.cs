using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace LotterySystem.Domain.DTOs.AccountDTO.Request
{
    public class UserRegistrationRequestDTO
    {

        [Required]
        public string UserName { get; set; }
        [EmailAddress(ErrorMessage = "Invalid email address")]
        public string Email { get; set; }
        [DataType(DataType.Password)]
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        [Required]
        public string device { get; set; }
        public string ipaddress { get; set; }
    }
    public class UserDTO
    {
        public string Id { get; set; }
        [Required]
        public string Email { get; set; }
        public string FullName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Role { get; set; }
        public DateTime DOB { get; set; }
        public DateTime CreatedDate { get; set; }
        public bool Status { get; set; }
        public bool EmailConfirmed { get; set; }
        public bool PhoneNumberConfirmed { get; set; }

        public string Password { get; set; }
        public int Total { get; set; }
        public string ImgUrl { get; set; }
        public string Photo { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Country { get; set; }


    }
}

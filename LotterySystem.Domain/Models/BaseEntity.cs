using LotterySystem.Domain.Interfaces;
using System;
using System.ComponentModel.DataAnnotations;

namespace LotterySystem.Domain.Models
{
    public class BaseEntity : IEntity
    {
        [Key]
        public string Id { get; set; }
        public Guid? ModifiedBy { get; set; }
        public Guid? CreatedBy { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
        public DateTime ModifiedAt { get; set; } = DateTime.UtcNow;
        public bool IsActive { get; set; } = true;
        public bool IsDeleted { get; set; } = false;
      
    }

}

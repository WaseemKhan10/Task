using LotterySystem.Domain.Interfaces;
using System;

namespace LotterySystem.Domain.Models.Base
{
    public class EntityNoId : IEntityNoId
    {
        public string ModifiedBy { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedAt { get; set; } 
        public DateTime ModifiedAt { get; set; }
        public bool IsActive { get; set; } = true;
        public bool IsDeleted { get; set; } = false;
    }
}

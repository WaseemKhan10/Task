using System;

namespace LotterySystem.Domain.Interfaces
{
    public interface IEntityNoId
    {
        public string ModifiedBy { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime ModifiedAt { get; set; }
        public bool IsActive { get; set; }
        public bool IsDeleted { get; set; }
    }
}

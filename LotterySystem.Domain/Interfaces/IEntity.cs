using System;

namespace LotterySystem.Domain.Interfaces
{
    public interface IEntity
    {
        public string Id { get; set; }
        public Guid? ModifiedBy { get; set; }
        public Guid? CreatedBy { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime ModifiedAt { get; set; }
        public bool IsActive { get; set; }
        public bool IsDeleted { get; set; }
    }

}

using System.Threading.Tasks;

namespace LotterySystem.Domain.Interfaces
{
    public interface IGenericRepositoryI<ApplicationUser> 
    {
        Task<ApplicationUser> GetByIdAsync(object id);
        Task UpdateAsync(ApplicationUser entity);
     
    }
}

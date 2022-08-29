using LotterySystem.Domain.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace LotterySystem.Infra.Data.Context
{
    public class NowSoftDbContext : IdentityDbContext<ApplicationUser>
    {
        public NowSoftDbContext(DbContextOptions<NowSoftDbContext> options) : base(options)
        {

        }
  
    }
}


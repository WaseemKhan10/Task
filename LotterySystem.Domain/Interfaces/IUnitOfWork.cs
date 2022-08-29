using Dapper;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace LotterySystem.Domain.Interfaces
{
    public interface IUnitOfWork
    {
        List<TEntity> SpRepositoryList<TEntity>(string spName, params object[] parameters) where TEntity : class;
        TEntity SpSingleRepository<TEntity>(string spName, params object[] parameters) where TEntity : class;
        Task<int> DapperSpInsert<TEntity>(string SpName, DynamicParameters parmas) where TEntity : class;
        Task<List<TEntity>> DapperSpListWithParam<TEntity>(string SpName, DynamicParameters parmas) where TEntity: class;
        Task<List<TEntity>> DapperSpListWithOutParam<TEntity>(string SpName) where TEntity : class;
    }
}

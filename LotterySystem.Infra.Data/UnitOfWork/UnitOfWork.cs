using Dapper;
using LotterySystem.Domain.Interfaces;
using LotterySystem.Infra.Data.Context;
using LotterySystem.Infra.Data.DbSettings;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace LotterySystem.Infra.Data.UnitOfWork
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly NowSoftDbContext _databaseContext;
        private readonly ConnectionStrings _connectionStrings;
        public UnitOfWork(NowSoftDbContext databaseContext, IOptions<ConnectionStrings> connectionStrings)
        {
            _databaseContext = databaseContext;
            _connectionStrings = connectionStrings.Value;
        }
        public List<TEntity> SpRepositoryList<TEntity>(string spName, params object[] parameters) where TEntity : class
        {
            try
            {
                return _databaseContext.Set<TEntity>().FromSqlRaw(spName, parameters).ToList();
            }
            catch
            {
                throw;
            }
        }

        public TEntity SpSingleRepository<TEntity>(string spName, params object[] parameters) where TEntity : class
        {
            try
            {
                return _databaseContext.Set<TEntity>().FromSqlRaw(spName, parameters).FirstOrDefault();
            }
            catch
            {
                throw;
            }
        }

        #region Dapper SP
        public async Task<int> DapperSpInsert<TEntity>(string SpName, DynamicParameters parmas) where TEntity : class
        {
            using var connection = new SqlConnection(_connectionStrings.DefaultConnection);
            return await connection.ExecuteAsync(SpName, parmas, null, null, CommandType.StoredProcedure);
        }
        public async Task<List<TEntity>> DapperSpListWithParam<TEntity>(string SpName, DynamicParameters parmas) where TEntity : class
        {
            using var connection = new SqlConnection(_connectionStrings.DefaultConnection);
            var result= await connection.QueryAsync<TEntity>(SpName, parmas, commandType: CommandType.StoredProcedure);
            return result.ToList();
        }

        public async Task<List<TEntity>> DapperSpListWithOutParam<TEntity>(string SpName) where TEntity : class
        {
            using var connection = new SqlConnection(_connectionStrings.DefaultConnection);
            var result = await connection.QueryAsync<TEntity>(SpName, commandType: CommandType.StoredProcedure);
            return result.ToList();
        }
        #endregion
    }
}
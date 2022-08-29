using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Net;
using System.Threading.Tasks;

namespace LotterySystem.ExceptionHandler
{
    public class ExceptionResponseMiddleware
    {
        private readonly RequestDelegate _next;
        private readonly ILogger _logger;

        public ExceptionResponseMiddleware(RequestDelegate next, ILoggerFactory loggerFactory)
        {
            _next = next;
            _logger = loggerFactory.CreateLogger("Exception");
        }
        public async Task InvokeAsync(HttpContext httpContext)
        {
            try
            {
                await _next(httpContext);
            }
            catch (Exception ex)
            {
                _logger.LogError($"Something went wrong: {ex.Message}");
                await HandleGlobalExceptionAsync(httpContext,ex.Message);
            }
        }

        private static Task HandleGlobalExceptionAsync(HttpContext context,string message)
        {
            context.Response.ContentType = "application/json";
            context.Response.StatusCode = (int)HttpStatusCode.InternalServerError;
            var response = new GlobalErrorDetails()
            {
                StatusCode = context.Response.StatusCode,
                Message = "Something went wrong !Internal Server Error " + message
            };
            return context.Response.WriteAsync(JsonConvert.SerializeObject(response));
        }
    }
}

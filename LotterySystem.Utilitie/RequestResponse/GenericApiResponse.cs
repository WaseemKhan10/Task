using NowSoft.Utilities.StatusCode;

namespace NowSoft.Utilities.RequestResponse
{
    public class Response<T>
    {
        public string Message { get; set; }
        public string Status { get; set; }
        public bool IsSuccess { get; set; }
        public int ErrorCode { get; set; }
        public T Payload { get; set; }
        public static Response<T> Success(T payload, string message)
        {
            return new Response<T>
            {
                ErrorCode = 0,
                Status = "Success",
                Message = message,
                Payload = payload,
                IsSuccess = true
            };
        }
        public static Response<T> Success(string message)
        {
            return new Response<T>
            {
                ErrorCode = 0,
                Status = "Success",
                Message = message,
                IsSuccess = true
            };
        }
        public static Response<T> Failure(string message, ApiStatusCode apiStatusCode)
        {
            return new Response<T>
            {
                ErrorCode = (int)apiStatusCode,
                Status = "Fail",
                Message = message,
                IsSuccess = false
            };
        }
        public static Response<T> Failure(T payload, string message, ApiStatusCode apiStatusCode)
        {
            return new Response<T>
            {
                ErrorCode = (int)apiStatusCode,
                Status = "Fail",
                Message = message,
                Payload = payload,
                IsSuccess = false
            };
        }

       
    }
}

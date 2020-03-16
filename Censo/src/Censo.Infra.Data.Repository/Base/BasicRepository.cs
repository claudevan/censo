using Microsoft.Data.SqlClient;

namespace Censo.Infra.Data.Repository.Base
{
    public class BasicRepository
    {
        private readonly string strConnection;

        public BasicRepository(string strConnection)
        {
            this.strConnection = strConnection;
        }

        protected SqlConnection GetConnection()
        {
            var cnn = new SqlConnection(strConnection);
            cnn.Open();

            return cnn;
        }
    }
}
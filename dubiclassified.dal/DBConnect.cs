
namespace dubiclassified.dal
{
    public class DBConnect
    {
        string ConnectionStringName = "CS";

        public DBDataContext GetDB()
        {
            var db = new DBDataContext(System.Configuration.ConfigurationManager.ConnectionStrings[ConnectionStringName].ConnectionString);
            return db;
        }
    }
}


namespace DubiClassified.DAL
{
    public class DBConnect
    {
        string ConnectionStringName = "DefaultConnection";

        public DBDataContext GetDB()
        {
            var db = new DBDataContext(System.Configuration.ConfigurationManager.ConnectionStrings[ConnectionStringName].ConnectionString);
            return db;
        }
    }
}

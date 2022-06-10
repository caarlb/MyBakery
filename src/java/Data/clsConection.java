package Data;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class clsConection {

    private String user = "sa";
    private String pass = "Umg$19";
    private String conectionString = "jdbc:sqlserver://localhost;"
            + "databaseName=DB_BAKER;user="
            + user + ";password="
            + pass + ";";

    public Connection conect() throws Exception {
        Connection cn = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn = DriverManager.getConnection(conectionString);
        } catch (SQLException e) {
            throw e;
        } 
        return cn;
    }
}

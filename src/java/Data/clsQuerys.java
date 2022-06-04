package Data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class clsQuerys {

    public clsQuerys() {
    }
    
    public ResultSet fcnBreadQuery() throws Exception {
        ResultSet resp = null;
        try {
            clsConection Con = new clsConection();
            Connection cn = Con.conect();
            String query = "SELECT * FROM TB_BREAD";
            PreparedStatement ps = cn.prepareStatement(query);
            resp = ps.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return resp;
    }

    /*
    public ResultSet fncConsultaPersona() throws Exception {
        ResultSet Resp = null;
        try {
            clsConexion Con = new clsConexion();
            Connection cn = Con.conectar();
            //String consulta = "SELECT CUI, NOMBRE, PUESTO, SUELDO FROM TB_PERSONA";
            String consulta = "SELECT CUI, NOMBRE, PUESTO, SUELDO FROM TB_PERSONA";
            PreparedStatement ps = cn.prepareStatement(consulta);
            Resp = ps.executeQuery();
        } catch (SQLException Ex) {
            System.out.println(Ex.getMessage());
        }
        return Resp;
    }
     */
}

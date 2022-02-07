/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author dell
 */
public class tModel extends AbstractTableModel {


    public tModel() throws SQLException, ClassNotFoundException
    {
            Class.forName("com.mysql.jdbc.Driver");
            conn = null;
            conn = DriverManager.getConnection(DBConnector.url,DBConnector.username, DBConnector.password);
    }

    
    public void readDates(String urz) throws SQLException
    {
        String query = "SELECT DISTINCT d.idSem, dataPocz FROM ocena o "
                + "JOIN uczen u ON o.idUcz=u.idUcz "
                + "JOIN datasem d ON d.idSem=o.idSem "
                + "WHERE (u.NazwaUz=?)";

        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1, urz);
        dates.removeAllElements();
        
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            dates.add( rs.getString("dataPocz"));
        }
   
    
    }
    
    
    
    public void readArgs(String urz, String dataPocz) throws SQLException
    {
        String query = "SELECT DISTINCT NazwaPrz FROM ocena o "
                + "JOIN uczen u ON o.idUcz=u.idUcz "
                + "JOIN przedmiot p ON p.idPrzed=o.idPrzed "
                + "JOIN datasem d ON d.idSem=o.idSem "
                + "WHERE (u.NazwaUz=?) AND dataPocz=?";

        PreparedStatement st = conn.prepareStatement(query);
        st.setString(1, urz);
        st.setString(2, dataPocz);
        names2.removeAllElements();
        
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            names2.add( rs.getString("NazwaPrz"));
        }
   
    
    }
    
    public void readTables(String przedm, String urz, String dataPocz) throws SQLException
    {
        String query = "SELECT p.NazwaPrz, NazwaCw, o.Wartosc, o.idOc, u.Imie, u.Nazwisko "
                + "FROM ocena o "
                + "JOIN uczen u ON o.idUcz=u.idUcz  "
                + "JOIN nauczyciel n ON o.idNau=n.idNau "
                + "JOIN przedmiot p ON p.idPrzed=o.idPrzed "
                + "JOIN datasem d ON d.idSem=o.idSem "
                + "WHERE ( u.nazwaUz=? )  AND NazwaPrz=? AND dataPocz=?";


        PreparedStatement st = conn.prepareStatement(query);
        st.setString(2, przedm);
        st.setString(1, urz);
        st.setString(3, dataPocz);

        names.removeAllElements();
        vals.removeAllElements();

        rows=0;
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            names.add( rs.getString("NazwaCw")); 
            vals.add( rs.getInt("o.Wartosc")); 

            rows++;
        }

        cols=2;
       // rows=names.size()-1;
        st.close();
        
        srednia=0;
        if(vals.size()>0)
        {
            
            for(int i=0; i<vals.size(); i++)
            {
                srednia+=vals.get(i);

            }
            srednia/=vals.size();
        }
    }
    
    
       public void readFinalTables(String przedm, String urz, String dataPocz) throws SQLException
    {
        String query = "SELECT p.NazwaPrz,  o.Wartosc, o.idOcKon, u.Imie, u.Nazwisko, zaliczony "
                + "FROM ocenako o " 
                + "JOIN uczen u ON o.idUcz=u.idUcz  "
                + "JOIN nauczyciel n ON o.idNau=n.idNau "
                + "JOIN przedmiot p ON p.idPrzed=o.idPrzed "
                + "JOIN datasem d ON d.idSem=o.idSem "
                + "WHERE ( u.nazwaUz=? )  AND NazwaPrz=? AND dataPocz=?";


        PreparedStatement st = conn.prepareStatement(query);
        st.setString(2, przedm);
        st.setString(1, urz);
        st.setString(3, dataPocz);

        //System.out.println(przedm);
       // System.out.println(urz);
       // System.out.println(dataPocz);
        
        ResultSet rs = st.executeQuery();
        if(rs.next())
        {
            koncowa=rs.getInt("o.Wartosc"); 
            if(rs.getString("zaliczony").equals("tak")) zaliczony=true;
            else zaliczony=false;

        }
        else 
        {
            zaliczony=false;
            koncowa=0;
        }
        st.close();
    }
    
    @Override
    public int getColumnCount() {
        return cols;
    }

    @Override
    public int getRowCount() {
        return rows;
    }

    @Override
    public String getColumnName(int col) {
        if(col==0) return "Nazwa ćw";
        if(col==1) return "Ocena";
        return "";//Oc." + Integer.toString(col-1);
    }

    @Override
    public Object getValueAt(int row, int col) {
        if(col==0) return names.get(row);
        if(col==1) return ((float)vals.get(row))/10;
        
        return "-1";
    }
    
    
    public void endConn() throws SQLException
    {
        conn.close();
    }
    public Connection conn;
    public boolean zaliczony;
    int rows=0;
    int cols=0;
    public int srednia, koncowa;
    //int [] vals ;
    Vector<Integer> vals = new Vector<>();
    Vector<String> names = new Vector<>();
    public Vector<String> names2 = new Vector<>();
    public Vector<String> dates = new Vector<>();
    //string [] headers;
}
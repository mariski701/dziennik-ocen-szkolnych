
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin2
 */
public class tModelNau extends DefaultTableModel{
    
    
       public tModelNau() throws SQLException, ClassNotFoundException
    {
            Class.forName("com.mysql.jdbc.Driver");
            conn = null;
            conn = DriverManager.getConnection(DBConnector.url,DBConnector.username, DBConnector.password);
    }


    
    public void readTables(String urz) throws SQLException
    {
        String query = "SELECT o.idOc, u.Imie, u.Nazwisko, p.NazwaPrz, NazwaCw, o.Wartosc " +
            "FROM ocena o  "+
            "JOIN uczen u      ON o.idUcz=u.idUcz " +
            "JOIN nauczyciel n ON o.idNau=n.idNau " +
            "JOIN przedmiot p ON p.idPrzed=o.idPrzed " +
            "WHERE  n.nazwaUz=? ORDER BY o.idOc DESC";//  AND NazwaPrz=? AND dataPocz=?";


        PreparedStatement st = conn.prepareStatement(query);
//        st.setString(2, przedm);
          st.setString(1, urz);
//        st.setString(3, dataPocz);

        idOc.removeAllElements();
        im.removeAllElements();
        nazw.removeAllElements();
        przedm.removeAllElements();
        cw.removeAllElements();
        oc.removeAllElements();
        
        
        rows=0;
        ResultSet rs = st.executeQuery();
        while(rs.next())
        {
            idOc.add( rs.getInt("o.idOc")); 
            im.add( rs.getString("u.Imie")); 
            nazw.add( rs.getString("u.Nazwisko")); 
            przedm.add( rs.getString("p.nazwaPrz")); 
            cw.add( rs.getString("NazwaCw")); 
            oc.add( rs.getInt("o.Wartosc")); 

            rows++;
        }

        cols=5;
       // rows=names.size()-1;
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
    public boolean isCellEditable(int rowIndex, int columnIndex) {
        switch(columnIndex)
        {
            case 0: return false;
            case 1: return false;
            case 2: return false;
            case 3: return true;
            case 4: return true;
            default: return false;
        }
    }
    
    @Override
    public String getColumnName(int col) {
        if(col==0) return "Imie";
        if(col==1) return "Nazwisko";
        if(col==2) return "Przedmiot";
        if(col==3) return "Ćwiczenie";
        if(col==4) return "Ocena";
        return "";//Oc." + Integer.toString(col-1);
    }

    @Override
    public Object getValueAt(int row, int col) {
        if(col==0) return im.get(row);
        if(col==1) return nazw.get(row);
        if(col==2) return przedm.get(row);
        if(col==3) return cw.get(row);
        if(col==4) return ((float)oc.get(row))/10;
        
        return "-1";
    }

    @Override
    public void setValueAt(Object o, int row, int col) {

        if(col==0) return;
        if(col==1) return;
        if(col==2) return;
      
        if(col==3) 
        {
            cw.setElementAt((String)o, row);
        }
        if(col==4)
        {
            if(Arrays.asList(legitVals).contains((String)o))
            {
                int val=(int)(10.0*Float.parseFloat((String)o));
                oc.setElementAt(val, row);
            }
        }
        
        String query ="UPDATE ocena SET wartosc=?, nazwaCw=? WHERE idOc=?";

           try {
                PreparedStatement preparedStmt = conn.prepareStatement(query);
               
                preparedStmt.setInt(1, oc.get(row));
                preparedStmt.setString(2, cw.get(row));
                preparedStmt.setInt(3, idOc.get(row));
               
                preparedStmt.execute();
                preparedStmt.close();
                
           } catch (SQLException ex) {
               Logger.getLogger(tModelNau.class.getName()).log(Level.SEVERE, null, ex);
           }


    }

    
    
    public void endConn() throws SQLException
    {
        conn.close();
    }
    public Connection conn;
    public boolean zaliczony;
    int rows=0;
    int cols=0;

    Vector<Integer> idOc = new Vector<>();
    Vector<String> im = new Vector<>();
    Vector<String> nazw = new Vector<>();
    Vector<String> przedm = new Vector<>();
    Vector<String> cw = new Vector<>();
    Vector<Integer> oc = new Vector<>();
    
//    int [] legitVals = {20, 25, 30, 35, 40, 45, 50};
      String [] legitVals = {"2", "3", "4", "5", "2.0", "2.5", "3.0", "3.5", "4.0", "4.5", "5.0"};
    //string [] headers;
}

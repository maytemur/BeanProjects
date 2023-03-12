package com.dt;
import java.sql.*;
public class DatabaseManagerClass {
    public Connection getConnection() throws Exception {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        String url="jdbc:odbc:Kurs";
        Connection con=DriverManager.getConnection(url);
        return con;
    }
}
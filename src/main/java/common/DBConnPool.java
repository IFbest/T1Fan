package common;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConnPool {
	public static Connection getConnection() throws SQLException, NamingException, ClassNotFoundException {
		Context initCtx = new InitialContext(); 
		Context ctx = (Context)initCtx.lookup("java:comp/env"); 
		DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
		Connection con = source.getConnection();
		return con;	
	}
}

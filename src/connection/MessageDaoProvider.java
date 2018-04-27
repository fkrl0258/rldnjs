package connection;

//import mssql.MSSQLMessageDao;
//import mssql.MySQLMessageDao;

//MessageDao md  = MessageDaoProvider.getInstance().getMessageDao()
import connection.OracleMessageDao;


public class MessageDaoProvider {
	
	private static MessageDaoProvider instance = new MessageDaoProvider();
	public static MessageDaoProvider getInstance() {
		return instance;
	}
	private MessageDaoProvider() {}
	
	//private MSSQLMessageDao oracleDao = new MSSQLMessageDao();
	private OracleMessageDao oracleDao = new OracleMessageDao();
	//private MySQLMessageDao oracleDao = new MySQLMessageDao();
	private String dbms;
	
	void setDbms(String dbms) {
		this.dbms = dbms;
	}
	//MessageDaoProvider.getInstance().getMessageDao()
	public MessageDao getMessageDao() {
		if("oracle".equals(dbms)) {
			return oracleDao;
		}
		return null;
	}

}

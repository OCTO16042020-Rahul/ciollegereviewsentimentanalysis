package Test;

import Database.DatabaseConnection;

public class RefershAll {
	public static void main(String args[]) {
		
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "delete from collegerating";
		db.getUpdate(query);
		query = "delete from commentanalysis";
		db.getUpdate(query);
		query = "update college set JEEMainIT ='0', JEEMainCS = '0' ,JEEMainEXTC = '0' ,JEEMainCIVIL = '0' ,JEEMainMECH = '0' ,CETcutoffIT = '0' ,CETcutoffCS = '0' ,CETcutoffEXTC  = '0' ,CETcutoffCIVIL = '0' ,CETcutoffMECH = '0' ,review = '0' , rate ='0'";
		db.getUpdate(query);
	}
}

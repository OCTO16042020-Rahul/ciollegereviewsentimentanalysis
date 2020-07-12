package Test;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Database.DatabaseConnection;

public class C45 {
	public static ArrayList<String> main(ArrayList<String> marksclg, ArrayList<String> userrequire) {
//		public static void main (String args[]){
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		
		ArrayList<String> finalresult = new ArrayList<String>();
		Map<String, Double> pmap = new HashMap<String, Double>();
		Map<String, Double> nmap = new HashMap<String, Double>();
		
//		ArrayList<String> marksclg = new ArrayList<String>();
//		ArrayList<String> userrequire = new ArrayList<String>();
//		userrequire.add("vhigh");
//		userrequire.add("high");
//		userrequire.add("medium");
//		userrequire.add("low");
//		marksclg.add("3");
//		marksclg.add("4");
//		marksclg.add("7");
//		marksclg.add("12");
//		marksclg.add("22");

		String subject[] = { "infrastructure", "placements", "library", "crowd" };
		int z = 0;
		for (int j = 0; j < marksclg.size(); j++) {
			double totalprate = 0;
			double totalnrate = 0;
			ArrayList<Double> pratearray = new ArrayList<Double>();
			ArrayList<Double> nratearray = new ArrayList<Double>();
			for (int i = 0; i < subject.length; i++) {
				String query = "select " + subject[i] + " from collegerating where id = '" + marksclg.get(j) + "'";
				ResultSet rr = db.getResultSet(query);
				try {
					if (rr.next()) {
						String[] rate = rr.getString(subject[i]).split(",");
						double prate = Double.valueOf(rate[0]);
						pratearray.add(prate);
						double nrate = Double.valueOf(rate[1]);
						nratearray.add(nrate);

						totalprate+=prate;
						totalnrate+=nrate;
					}
				} catch (NumberFormatException | SQLException e) {
					e.printStackTrace();
				}
			
			double finalavgpsubentrophy = 0;
			for (int k = 0; k < pratearray.size(); k++) {
				if(totalprate!=0){
					double finalpsubentrophy = Math.log(totalprate);
					finalavgpsubentrophy+= finalpsubentrophy;
				}
			}
			System.out.println(marksclg.get(j) +"  "+subject[z]+"  "+finalavgpsubentrophy);
			
			if(i==0){
				pmap.put(marksclg.get(j), finalavgpsubentrophy);
			}
			
			double finalavgnsubentrophy = 0;
			for (int k = 0; k < nratearray.size(); k++) {
				if(totalnrate!=0){
					double finalnsubentrophy = Math.log(totalnrate);
					finalavgnsubentrophy+= finalnsubentrophy;
				}
			}
			System.err.println(marksclg.get(j) +"  "+subject[z]+"  "+finalavgnsubentrophy);
			if(i==0){
				nmap.put(marksclg.get(j), finalavgnsubentrophy);
			}
			z++;
			}
			z=0;
		}
		
		List<Map.Entry<String,Double>> entries = new ArrayList<Map.Entry<String, Double>> (pmap.entrySet());
		Collections.shuffle(entries);
		for (Map.Entry<String, Double> entry : entries) {
			System.out.println(entry);
			finalresult.add(entry.getKey());
		}
		return finalresult;
	}
}

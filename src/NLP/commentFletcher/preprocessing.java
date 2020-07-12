//package NLP.commentFletcher;
//
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.net.URL;
//import java.net.URLConnection;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//import org.jsoup.Jsoup;
//import org.jsoup.nodes.Document;
//import org.jsoup.nodes.Element;
//import org.jsoup.select.Elements;
//
//import Database.DatabaseConnection;
//import NLP.src.SentenceDetector;
//import NLP.src.analyzer;
//
//public class preprocessing {
//
//	public static String CommentExtractStupidSid(String link)
//			throws IOException {
//		URL url = new URL(link);
//		URLConnection spoof = url.openConnection();
//
//		// Spoof the connection so we look like a web browser
//		spoof.setRequestProperty("User-Agent",
//				"Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;    H010818)");
//		BufferedReader in = new BufferedReader(new InputStreamReader(
//				spoof.getInputStream()));
//		String strLine = "";
//		String finalHTML = "";
//		// Loop through every line in the source
//		while ((strLine = in.readLine()) != null) {
//			finalHTML = finalHTML + "\n" + strLine;
//		}
//
//		// System.out.print(finalHTML);
//		// System.out.println(finalHTML);
//
//		// Pattern div = Pattern.compile("<div id=\"comments\">(.*?)</div>",
//		// Pattern.DOTALL);
//		// System.out.println(div);
//		// System.out.println("============================================================");
//		String comment = "";
//		Document document = Jsoup.parse(finalHTML);
//		Elements divs = document.select("div");
//		for (Element div : divs) {
//			String divtext = div.ownText().trim();
//			if(divtext.equals("TAKE A PRODUCT TOUR") || divtext.equals("NEED HELP? CONTACT US")|| divtext.equals("")){
//				divtext = "";
//			}else{
//			comment = comment +" "+ divtext;
//			}
//		}
//		// System.out.println("=================================================");
//		comment = comment.replaceAll("'", "");
//		comment = comment.replaceAll("\"", "");
//		return comment;
//	}
//	
//	public static  void main(String args[]) throws SQLException, IOException {
//		GiveResult("22");
//	}
//	
//
//	public static void GiveResult(String id) throws SQLException, IOException {
//		DatabaseConnection db = new DatabaseConnection();
//		db.dbconnection();
//		SentenceDetector s = new SentenceDetector();
//		analyzer a = new analyzer();
//		String query = "Select * from wordscollection";
//		ResultSet rs = (ResultSet) db.getResultSet(query);
//		while (rs.next()) {
//			if (rs.getString("positivecollection").trim().length() > 2) {
//				a.positive.add(rs.getString("positivecollection").trim());
//				a.pmap.put(rs.getString("positivecollection"), rs.getInt("prate"));
//			}
//			if (rs.getString("negativecollection").trim().length() > 2) {
//				a.negative.add(rs.getString("negativecollection").trim());
//				a.nmap.put(rs.getString("negativecollection"), rs.getInt("nrate"));
//			}
//		}
//		///////////////////////////////////////////////// WORD Trainer /////////////////////
//		
//		String Query = "select id , link from college where id ="+id+"";
//		rs = db.getResultSet(Query);
//		while (rs.next()) {
//			String comment = CommentExtractStupidSid(rs.getString("link"));
//			System.out.println(comment);
//			s.Sentencedetector(rs.getInt("id"),comment);
//		}
//	}
//}

package InfoExtractor;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import Database.DatabaseConnection;

public class TextExtractor {

	public static HashMap<String, String> map = new HashMap<String, String>();
	public static ArrayList<String> TopicToExtract = new ArrayList<String>();

	public static void DataExtractor(String link, int id) throws IOException {

		TopicToExtract.add("location:");
		boolean location = false;
		TopicToExtract.add("infrastructure:");
		boolean infrastructure = false;
		TopicToExtract.add("faculty:");
		boolean faculty = false;
		TopicToExtract.add("attendance:");
		boolean attendance = false;
		TopicToExtract.add("crowd:");
		boolean crowd = false;
		TopicToExtract.add("canteen:");
		boolean canteen = false;
		TopicToExtract.add("hangouts:");
		boolean hangouts = false;
		TopicToExtract.add("festivals:");
		boolean festivals = false;
		TopicToExtract.add("placements:");
		boolean placements = false;
		TopicToExtract.add("fees:");
		boolean fees = false;
		TopicToExtract.add("contact address:");
		boolean contact = false;
		
		
		URL url = new URL(link);
		URLConnection spoof = url.openConnection();

		// Spoof the connection so we look like a web browser
		spoof.setRequestProperty("User-Agent",
				"Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0;    H010818)");
		BufferedReader in = new BufferedReader(new InputStreamReader(
				spoof.getInputStream()));
		String strLine = "";
		String finalHTML = "";
		// Loop through every line in the source
		while ((strLine = in.readLine()) != null) {
			finalHTML = finalHTML + "\n" + strLine;
		}
		// System.out.println(finalHTML);

		Document document = Jsoup.parse(finalHTML);
		Elements divs = document.select("p, h3,div");
		for (Element div : divs) {
			String content = div.ownText();
			// System.out.println(content);
			content = content.replace("'", "");
//			content = content.replace("|", "");
			content = content.trim();
			
			
			if (location) {
				System.out.println("=================================== Location =================================");
				System.out.println();
				String locationContent = map.get("location");
				locationContent = locationContent + " " + content;
				locationContent.replace("'", "");
				map.put("location", locationContent);
				System.out.println(locationContent);
				System.out.println();
				location = false;
			} 
			else if (infrastructure) {
				System.out.println("==================================== infrastructure =============================");
				System.out.println();
				String infrastructureContent = map.get("infrastructure");
				infrastructureContent = infrastructureContent + " " + content;
				map.put("infrastructure", infrastructureContent);
				System.out.println(infrastructureContent);
				System.out.println();
				infrastructure = false;
			} 
			else if (faculty) {
				System.out.println("==================================== faculty =============================");
				System.out.println();
				String facultyContent = map.get("faculty");
				facultyContent = facultyContent + " " + content;
				map.put("faculty", facultyContent);
				System.out.println(facultyContent);
				System.out.println();
				faculty = false;
			} 
			else if (attendance) {
				System.out.println("==================================== attendanceContent =============================");
				System.out.println();
				String attendanceContent = map.get("attendance");
				attendanceContent = attendanceContent + " " + content;
				map.put("attendance", attendanceContent);
				System.out.println(attendanceContent);
				System.out.println();
				attendance = false;
			} 
			else if (crowd) {
				System.out.println("==================================== crowdContent =============================");
				System.out.println();
				String crowdContent = map.get("crowd");
				crowdContent = crowdContent + " " + content;
				map.put("crowd", crowdContent);
				System.out.println(crowdContent);
				System.out.println();
				crowd = false;
			} 
			else if (canteen) {
				System.out.println("==================================== canteenContent =============================");
				System.out.println();
				String canteenContent = map.get("canteen");
				canteenContent = canteenContent + " " + content;
				map.put("canteen", canteenContent);
				System.out.println(canteenContent);
				System.out.println();
				canteen = false;
			} 
			else if (hangouts) {
				System.out.println("==================================== hangoutscontent =============================");
				System.out.println();
				String hangoutscontent = map.get("hangouts");
				hangoutscontent = hangoutscontent + " " + content;
				map.put("hangouts", hangoutscontent);
				System.out.println(hangoutscontent);
				System.out.println();
				hangouts = false;
			} 
			else if (festivals) {
				System.out.println("==================================== festivalscontent =============================");
				System.out.println();
				String festivalscontent = map.get("festivals");
				festivalscontent = festivalscontent + " " + content;
				map.put("festivals", festivalscontent);
				System.out.println(festivalscontent);
				System.out.println();
				festivals = false;
			}
			else if (placements) {
				System.out.println("==================================== placementscontent =============================");
				System.out.println();
				String placementscontent = map.get("placements");
				placementscontent = placementscontent + " " + content;
				map.put("placements", placementscontent);
				System.out.println(placementscontent);
				System.out.println();
				placements = false;
			}
			else if (fees) {
				System.out.println("==================================== feescontent =============================");
				System.out.println();
				String feescontent = map.get("fees");
				feescontent = feescontent + " " + content;
				map.put("fees", feescontent);
				System.out.println(feescontent);
				System.out.println();
				fees = false;
			}
			else if (contact) {
				System.out.println("==================================== contact =============================");
				System.out.println();
				String contactcontent = map.get("contact");
				contactcontent = contactcontent + " " + content;
				map.put("contact", contactcontent);
				System.out.println(contactcontent);
				System.out.println();
				contact = false;
			}
			if (content.toLowerCase().startsWith(TopicToExtract.get(0))) {
				map.put("location", "");
				location = true;
				infrastructure = false;
				faculty = false;
				attendance = false;
				crowd = false;
				canteen = false;
				hangouts = false;
				festivals = false;
				placements = false;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(1))) {
				map.put("infrastructure", "");
				location = false;
				infrastructure = true;
				faculty = false;
				attendance = false;
				crowd = false;
				canteen = false;
				hangouts = false;
				festivals = false;
				placements = false;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(2))) {
				map.put("faculty", "");
				infrastructure = false;
				location = false;
				faculty = true;
				attendance = false;
				crowd = false;
				canteen = false;
				hangouts = false;
				festivals = false;
				placements = false;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(3))) {
				map.put("attendance", "");
				infrastructure = false;
				location = false;
				faculty = false;
				attendance = true;
				crowd = false;
				canteen = false;
				hangouts = false;
				festivals = false;
				placements = false;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(4))) {
				map.put("crowd", "");
				infrastructure = false;
				location = false;
				faculty = false;
				attendance = false;
				crowd = true;
				canteen = false;
				hangouts = false;
				festivals = false;
				placements = false;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(5))) {
				map.put("canteen", "");
				infrastructure = false;
				location = false;
				faculty = false;
				attendance = false;
				crowd = false;
				canteen = true;
				hangouts = false;
				festivals = false;
				placements = false;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(6))) {
				map.put("hangouts", "");
				infrastructure = false;
				location = false;
				faculty = false;
				attendance = false;
				crowd = false;
				canteen = false;
				hangouts = true;
				festivals = false;
				placements = false;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(7))) {
				map.put("festivals", "");
				infrastructure = false;
				location = false;
				faculty = false;
				attendance = false;
				crowd = false;
				canteen = false;
				hangouts = false;
				festivals = true;
				placements = false;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(8))) {
				map.put("placements", "");
				infrastructure = false;
				location = false;
				faculty = false;
				attendance = false;
				crowd = false;
				canteen = false;
				hangouts = false;
				festivals = false;
				placements = true;
				contact = false;
				fees = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(9))) {
				map.put("fees", "");
				infrastructure = false;
				location = false;
				faculty = false;
				attendance = false;
				crowd = false;
				canteen = false;
				hangouts = false;
				festivals = false;
				placements = false;
				fees = true;
				contact = false;
			} else if (content.toLowerCase().startsWith(TopicToExtract.get(10))) {
				map.put("contact", "");
				infrastructure = false;
				location = false;
				faculty = false;
				attendance = false;
				crowd = false;
				canteen = false;
				hangouts = false;
				festivals = false;
				placements = false;
				fees = false;
				contact = true;
			}
		}

		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "insert into collegedetails values('"+id
				+"','"+ map.get("location") + "','" + map.get("infrastructure")
				+ "','" + map.get("faculty") + "','" + map.get("attendance")
				+ "','" + map.get("crowd") + "','" + map.get("canteen")
				+ "','"+ map.get("placements") + "','"+ map.get("fees")
				+ "','"+ map.get("contact") + "')";
		db.getUpdate(query);
		
//		map.put("location", "");
//		map.put("infrastructure", "");
//		map.put("faculty", "");
//		map.put("attendance", "");
//		map.put("crowd", "");
//		map.put("canteen", "");
//		map.put("hangouts", "");
//		map.put("festivals", "");
//		map.put("placements", "");
//		map.put("fees", "");
//		map.put("contact", "");
	}

	public static void main(String args[]) throws SQLException, IOException {
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
		String query = "select id,link from college";
		ResultSet rs = (ResultSet) db.getResultSet(query);
		while (rs.next()) {
			System.out.println("                                            "+ rs.getInt("id"));
			System.out.println("*********************************************************************************************************");
			
			DataExtractor(rs.getString("link"), rs.getInt("id"));
			
			System.out.println("**********************************************************************************************************");
		}
	}
}

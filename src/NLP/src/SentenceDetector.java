package NLP.src;

import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import opennlp.tools.sentdetect.SentenceDetectorME;
import opennlp.tools.sentdetect.SentenceModel;

import com.mysql.jdbc.ResultSetMetaData;

import Database.DatabaseConnection;

public class SentenceDetector {
	
	public ArrayList<String> SentenceSplitter(String comment) {
		ArrayList<String> Sentences = new ArrayList<String>();
		Pattern re = Pattern.compile("[^.!?\\s][^.!?]*(?:[.!?](?!['\"]?\\s|$)[^.!?]*)*[.!?]?['\"]?(?=\\s|$)", Pattern.MULTILINE | Pattern.COMMENTS);
	    Matcher reMatcher = re.matcher(comment);
	    while (reMatcher.find()) {
	    	String sentnce = reMatcher.group().trim();
	    	if(!sentnce.equals("")){
	    		Sentences.add(sentnce);
	    	}
	    }
		return Sentences;
	}
	
//	public ArrayList<String> SentenceSplitter(String comment) {
//		SentenceDetectorME sentenceDetector = null;
//		InputStream modelIn = null;
//
//		try {
//			modelIn = getClass().getResourceAsStream("dependency/en-sent.bin");
//			final SentenceModel sentenceModel = new SentenceModel(modelIn);
//			modelIn.close();
//			sentenceDetector = new SentenceDetectorME(sentenceModel);
//		} catch (final IOException ioe) {
//			ioe.printStackTrace();
//		} finally {
//			if (modelIn != null) {
//				try {
//					modelIn.close();
//				} catch (final IOException e) {
//				}
//			}
//		}
//		String sentences[] = (((opennlp.tools.sentdetect.SentenceDetector) sentenceDetector)
//				.sentDetect(comment));
//		ArrayList<String> Sentences = new ArrayList<String>();
//		for (int i = 0; i < sentences.length; i++) {
//			System.out.println(sentences[i]);
//			Sentences.add(sentences[i]);
//		}
//		return Sentences;
//	}
	
	public static void Sentencedetector(int id, String comment) {
		try {
		DatabaseConnection db = new DatabaseConnection();
		db.dbconnection();
//		String recorsdClear = "delete from commentanalysis where id="+id+"";
//		db.getUpdate(recorsdClear);
		
		analyzer.positive.clear();
		analyzer.pmap.clear();
		analyzer.negative.clear();
		analyzer.nmap.clear();
		
		String query = "Select * from wordscollection";
		ResultSet rs = (ResultSet) db.getResultSet(query);
		while (rs.next()) {
			if (rs.getString("positivecollection").trim().length() > 2) {
				analyzer.positive.add(rs.getString("positivecollection").trim());
				analyzer.pmap.put(rs.getString("positivecollection"), rs.getInt("prate"));
			}
			if (rs.getString("negativecollection").trim().length() > 2) {
				analyzer.negative.add(rs.getString("negativecollection").trim());
				analyzer.nmap.put(rs.getString("negativecollection"), rs.getInt("nrate"));
			}
		}
				
		SentenceDetector s = new SentenceDetector();
		ArrayList<String> sentences = s.SentenceSplitter(comment);
//		analyzer a = new analyzer();
		for (int i = 0; i < sentences.size(); i++) {
			ArrayList<String> result = analyzer.analyzer(sentences.get(i).replaceAll("[&\\/\\\\#,+()$~%.'\":*?<>{}^@!।]",""));
			System.out.println("sentences: "+sentences.get(i));

			if (result.contains("negative")) {
				query = "insert into  commentanalysis values(" + id + ",'"
						+ result.get(0) + "','" + result.get(1) + "','0','"
						+ result.get(2) + "')";
			} else if(!result.get(2).equals("0")){
				query = "insert into  commentanalysis values(" + id + ",'"
						+ result.get(0) + "','" + result.get(1) + "','"
						+ result.get(2) + "','0')";
			}
			else{
				query = "insert into  commentanalysis values(" + id + ",'"
						+ result.get(0) + "','" + result.get(1) + "','0','0')";
			}
			db.getUpdate(query);
		}
		
		 query = "SELECT DISTINCT subject FROM commentanalysis where id = '"+id+"' ";
		System.out.println(query);
		
		ArrayList<String> sub = new ArrayList<String>();
		rs = db.getResultSet(query);
		while(rs.next())
			{
			sub.add(rs.getString(1));
			}
		
		double subentrophy = 0;
        for (int i = 0; i < sub.size(); i++) {
        	System.out.println(sub.size());
            query = "select * from commentanalysis where id = '" + id + "' and subject='" + sub.get(i) + "'";
            rs = db.getResultSet(query);
            
            double ploop = 0;
            double nloop = 0;
            double pv = 0;
            double nv = 0;
            while (rs.next()) {
                if (rs.getInt("prate") > 0) {
                    pv = pv + rs.getInt("prate");
                    ploop++;
                }

                if (rs.getInt("nrate") > 0) {
                    nv = nv + rs.getInt("nrate");
                    nloop++;
                }
            }

            double pr = 0;
            double nr = 0;
            if (ploop != 0) {
                pr = pv / ploop;
                System.out.println("Final positive rating: " + pr);
            } else {
                System.out.println("No Positive Feedback");
            }
            if (nloop != 0) {
                nr = nv / nloop;
                System.out.println("Final negative rating: " + nr);
            } else {
                System.out.println("No NEgative Feedback");
            }
            
            String rate = pr+","+nr;   
            
            subentrophy = subentrophy + Math.log(pr) / Math.log(nr);
            System.out.println(subentrophy);
            
            query = " SELECT id FROM collegerating WHERE id ='"+id+"'";
            rs = db.getResultSet(query);
            if(rs.next()){
            	String subject = sub.get(i);
            	query=  "Update collegerating set "+subject+"='"+rate+"' where id='"+id+"'";
                db.getUpdate(query);
            }
            else
            {
            query=  "insert into collegerating (id," + sub.get(i) + ") values('"+id+"','"+rate+"')";
            db.getUpdate(query);
            }
        }
        
        int totalsub = sub.size();
        double totalpvrate = 0.0;
        query = "select * from collegerating where id = '" + id + "'";
        rs = db.getResultSet(query);
        
        ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
        int columnCount = rsmd.getColumnCount();

        // The column count starts from 1
        if(rs.next()){
        for (int i = 2; i <= columnCount; i++ ) {
          String columnname = rsmd.getColumnName(i);
          String[] subject = rs.getString(columnname).split(",");
          totalpvrate = totalpvrate + Double.valueOf(subject[0]);
        }
        }
        double avgpv = totalpvrate/totalsub;
        double finalsubentrophy = Math.log(totalpvrate/subentrophy);
        
        System.out.println("avgpv "+finalsubentrophy);
        
//        int cutoff = 0;
//        query = "select * from college where id = '" + id + "'";
//        rs = db.getResultSet(query);
//        if(rs.next()){
//        	cutoff = rs.getInt("cutoff");
//        }
        
//        double whlrate = ((((cutoff)/2)+avgpv)/2);
        
        String reviewrate = String.format("%.01f", avgpv);
        
        query=  "Update college set review='"+reviewrate+"', rate='0' where id='"+id+"'";
        db.getUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String args[]) {
		Sentencedetector(1, "");
	}
}

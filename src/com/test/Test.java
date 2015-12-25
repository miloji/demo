package com.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.SynchronousQueue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.management.relation.RelationServiceNotRegisteredException;

public class Test {
	
	public static String readContent() throws Exception{
		File file = new File("D:\\yum-update.git\\changelog-20151207");
		FileReader  fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);
		String tempString = null;
		StringBuffer content = new StringBuffer();
		while ((tempString=br.readLine()) != null) {
			if("".equals(tempString)){
				content.append("##########");
			}else{
				content.append(tempString);
			}
		}
		br.close();
		fr.close();
		return content.toString();
	}
	
	public static Map<Integer, ChangeLog>  splitTitle(String content){
		Map<Integer, ChangeLog> map = new HashMap<Integer,ChangeLog>();
		Pattern p = Pattern.compile("\\[\\w+-\\w+\\]");
		Matcher matcher = p.matcher(content);
		int i = 1;
		while (matcher.find()) {
			String title = matcher.group();
			title = title.substring(1, title.length()-1);
			String [] titles = title.split("-");
			ChangeLog changeLog = new ChangeLog();
			changeLog.setRepertory(titles[0]);
			changeLog.setAction(titles[1]);
			map.put(i, changeLog);
			i=i+1;
		}
		return map;
	}
	
	
	public static Map<Integer, String>  splitContent(String content){
		Map<Integer, String> map = new HashMap<Integer,String>();
		String [] s1 = content.split("\\[\\w+-\\w+\\]");
		for (int i = 0; i < s1.length; i++) {
			String prop = s1[i];
			if(!"".equals(prop)){
				map.put(i, s1[i]);
			}
		}
		return map;
	}
	
	
	public static String extractContent(String content,String regexp){
		Pattern p = Pattern.compile(regexp);
		Matcher matcher = p.matcher(content);
		String result=null;
		while (matcher.find()) {
			result = matcher.group();
		}
		return result;
	}
	
	
	
	public List<ChangeLog>  getChangeLogList(){
		try {
			String content = readContent();
			Map<Integer,ChangeLog>  map = splitTitle(content);
			Map<Integer,String> map2 = splitContent(content);
			List<ChangeLog>  results  = new ArrayList<ChangeLog>();
			for (Entry<Integer, ChangeLog> entry : map.entrySet()) {
				Integer key = entry.getKey();
				ChangeLog changelog = entry.getValue();
				String propStr = map2.get(key);
				String[] props= propStr.split("#{5,}"); 
				for (String prop : props) { 
					ChangeLog changeLog2 = new ChangeLog();
					changeLog2.setName(changelog.getName());
					changeLog2.setVersion(changelog.getVersion());
					changeLog2.setRepertory(changelog.getRepertory());
					String[] p = prop.split("-{5,}"); 
					if(p.length>=2){
						String version = extractContent(p[0], "\\d+\\.\\d+\\.\\d+\\.?\\d*"); 
						changeLog2.setVersion(version); 
						changeLog2.setName(p[0]); 
						changeLog2.setDesction(p[1]);
					}
					results.add(changeLog2);
				}
			}
			return results;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
	public static void main(String[] args) throws FileNotFoundException {
		
	}
}



package com.athensoft.util.string;

import java.util.ArrayList;
import java.util.List;

//import java.util.StringTokenizer;

public class KeywordParser {

	public static String[] getKeywordArray(String raw_keywords){
		List<String> list = new ArrayList<String>();
		
		String[] keywords =raw_keywords.split(" ");
		  for (int i = 0; i < keywords.length; i++) {
		   if(! keywords[i].trim().equals("")){
			   list.add(keywords[i]);
		   }
		  }
		  String[] a = new String[list.size()];
		  keywords = list.toArray(a);
		  return keywords;
	}
	
	public static List<String> getKeywordList(String raw_keywords){
		List<String> list = new ArrayList<String>();
		
		String[] keywords =raw_keywords.split(" ");
		  for (int i = 0; i < keywords.length; i++) {
		   System.out.print(keywords[i]+"\n");
		   if(! keywords[i].trim().equals("")){
			   list.add(keywords[i]);
		   }
		  }
		  return list;
	}
	
	public static void main(String[] args) {
		String raw_keywords = "hey       we";
		String[] s = getKeywordArray(raw_keywords);
		for(int i=0; i<s.length; i++){
			System.out.println(s[i]);
		}
		
	}

}

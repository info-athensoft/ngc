package test;

import com.athensoft.util.string.KeywordParser;

public class SqlTest {
	public static void main(String[] args) {
		String queryString = "aaa bbb       ccc";
		String[] keywords = KeywordParser.getKeywordArray(queryString);
		
		String sql="";
		
		//get intersect set
		int len = keywords.length;
		
		System.out.println("len="+len);

		
		String cross_join_string = " ";
		String where_string = " ";
		String table_alias= "";
		
		String paramNamePrefix =":itemName";
		String paramName = "";
		
		for(int i=0; i<len; i++){
			table_alias = "t"+String.valueOf(i);
			paramName = paramNamePrefix+String.valueOf(i);
			
			if(i==0){
				cross_join_string 	= " ";
				where_string 		= "and t0.ItemName like "+paramName+" ";
			}
			if(i>0){
				cross_join_string 	+= "cross join view_item_sale "+table_alias+" "
	               		   			+ "on t0.itemId = "+table_alias+".itemId ";
				where_string 		+= "and "+table_alias+".ItemName like "+paramName+" ";
			}
			
		}
		
		sql = "select t0.* "
		        + "from view_item_sale t0 "
				+ cross_join_string
				+ "where 1=1 "
				+ where_string;

		System.out.println(sql);
	}
}

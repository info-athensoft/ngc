//global settings
var imagePathBase = '/images/photos/';


//5. View 
	//5.1 view all in json array
	function getAllItems(){
		
		//alert("imagePathBase="+imagePathBase);
		
		$.ajax({
			type:		"post",
			url:		"getallitems.do",
			dataType:	"json",
			timeout: 	30000,
			
			success:function(data){
				var dataList = data.itemList;
						
				var str ="";
				for(var i in dataList){
					var index = i;
					str = str 
					+ "<li class='col-md-4 col-sm-6 col-xs-12 product'>"
					+ "<span class='product-thumb-info'>"					
					+ "	<a href='viewitemdetail.do'> "
					+ " 	<span class='product-thumb-info-image'>"
					+ "			<span class='product-thumb-info-act'>"
					+ "				<span class='product-thumb-info-act-left'><em>View</em></span>"
					+ "				<span class='product-thumb-info-act-right'><em><i class=''fa fa-plus'></i> Details</em></span>"
					+ "			</span>"
					+ "			<img alt='' class='img-responsive' src="+imagePathBase+dataList[i].itemPicName+"'>"
					+ "		</span>"
					+ "	</a>"
					+ "	<span class='product-thumb-info-content'>"
					+ "		<a href='viewitemdetail.do'>"
					+ "			<h4>"+dataList[i].itemName+"</h4>"
					+ "			<span class='price'>"
					+ "				<span class='amount'>$189</span>"
					+ "			</span>"
					+ "		</a>"
					+ "	</span>"
					+ "</span>"
				    + "</li>";
				}
				
				
				$("#data").html(str);
				
			},
			
			error:function(){
				  alert("ERROR: query failed!");
			},
			
			complete: function(XMLHttpRequest, textStatus){
			}
		
		});
	}
	
	
	//5.2 view by classStatuaId (1:available, 5:deleted)
	function getItemByClassCode(itemClassCode){
		
//		alert("imagePathBase="+imagePathBase);
//		alert("getItemByClassCode");
		
		$.ajax({
			type:		"post",
			url:		"getitem_classcode.do?itemClassCode="+itemClassCode,
			dataType:	"json",
			timeout : 	30000,
			
			success:function(data){
				var dataList = data.itemList;
				
				var str ="";
				for(var i in dataList){
					var index = i;
					str = str 
					+ "<li class='col-md-4 col-sm-6 col-xs-12 product'>"
					+ "<span class='product-thumb-info'>"					
					+ "	<a href='viewitemdetail.do'> "
					+ " 	<span class='product-thumb-info-image'>"
					+ "			<span class='product-thumb-info-act'>"
					+ "				<span class='product-thumb-info-act-left'><em>View</em></span>"
					+ "				<span class='product-thumb-info-act-right'><em><i class=''fa fa-plus'></i> Details</em></span>"
					+ "			</span>"
					+ "			<img alt='' class='img-responsive' src="+imagePathBase+dataList[i].itemPicName+"'>"
					+ "		</span>"
					+ "	</a>"
					+ "	<span class='product-thumb-info-content'>"
					+ "		<a href='viewitemdetail.do'>"
					+ "			<h4>"+dataList[i].itemName+"</h4>"
					+ "			<span class='price'>"
					+ "				<span class='amount'>$189</span>"
					+ "			</span>"
					+ "		</a>"
					+ "	</span>"
					+ "</span>"
				    + "</li>";
				}
				
				
				$("#data").html(str);
			},
			
			error:function(){
				  alert("query failed!");
			},
			
			complete: function(XMLHttpRequest, textStatus){
			}
		
		});
	}

	
	//5.2 view by classStatuaId (1:available, 5:deleted)
	function viewByItemStatusId(itemStatusId){
		
		$.ajax({
			type:		"post",
			url:		"queryItemJSON?itemStatusId="+itemStatusId,
			dataType:	"json",
			timeout: 	30000,
			
			success:function(data){
				var dataList = data;
				var str = "<table class=\"table table-striped\">"
				    	+ "<tr><th>Photo</th>" 
//				    	+ "<th>Item ID</th>" 
//				    	+ "<th>Item Code</th>" 
//				    	+ "<th>ItemClass Id</th>" 
				    	+ "<th>ItemClass Code</th>"
				    	+ "<th>Item Name</th>"
				    	+ "<th>Item Description</th>"
				    	+ "<th>Status</th>"
				    	+ "<th>Operation</th></tr>";

			    for(var i in dataList){
					var index = i;
					str = str +"<tr>"
						+ "<td><img src="+imagePathBase+dataList[i].itemClassCode+"/"+dataList[i].itemName+"' alt=''/></td>"
//						+ "<td>"+dataList[i].itemId+"</td>"
//						+ "<td>"+dataList[i].itemCode+"</td>"
//						+ "<td>"+dataList[i].itemClassId+"</td>"
						+ "<td>"+dataList[i].itemClassCode+"</td>"
						+ "<td>"+dataList[i].itemName+"</td>"
						+ "<td>"+dataList[i].itemDesc+"</td>" 				 
//						+ "<td>"+dataList[i].itemStatusId+"</td>" 
						+ "<td>"+dataList[i].statusName+"</td>" 
						+ "<td><a href='#hero-unit' onclick='updateBeforeSave(dataList,"+index+")'>Update</a> | <a href='#hero-unit' onclick='deleteBeforeSave(dataList,"+index+")'>Delete</a></td>" 
						+ "</tr>";
				}
				str = str + "</table>";
				$("#data").html(str);
			},
			
			error:function(){
				  alert("ERROR: query failed!");
			},
			
			complete: function(XMLHttpRequest, textStatus){
			}
		
		});
	}
	
//search bar
function searchProd(object){
//	alert("ok"+object);
	var queryString = $(object).val();
//	alert(queryString);
	
	//search
	$.ajax({
		type:		"post",
		url:		"search_item_fuzzy.do?queryString="+queryString,
//		dataType:	"html",
		dataType:	"json",
		timeout: 	30000,
		
		success:function(data){
			
			var dataList = data.itemList;
			var str = "";
			
			var saleStatus ;
			var saleIcon="" ;
			for(var i in dataList){
				var index = i;
				saleStatus = dataList[i].itemSale.itemSaleStatus;
				if(saleStatus==2){
					saleIcon = '<span class="onsale">Sale!</span>';
				}else{
					
				}
				
				str+= '<li class="col-md-4 col-sm-6 col-xs-12 product">'
					+ saleIcon
					+'<span class="product-thumb-info">'
					+'<a href="viewitemdetail.do?itemId='+dataList[i].itemId+'">'
					+'	<span class="product-thumb-info-image">'
					+'		<span class="product-thumb-info-act">'
					+'			<span class="product-thumb-info-act-left"><em>View</em></span>'
					+'			<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>'
					+'		</span>'
					+'		<img alt="'+dataList[i].itemName+'" class="img-responsive" src="'+imagePathBase+dataList[i].itemClassId+'/'+dataList[i].itemPicName.trim()+'">'
					+'</span>'
					+'</a>'
					+'<span class="product-thumb-info-content">'
					+'	<a href="viewitemdetail.do?itemId='+dataList[i].itemId+'">'
					+'		<h4>'+dataList[i].itemName+'</h4>'
					+'		<span class="price">'
					+'			<del><span class="amount">$'+dataList[i].itemSale.previousPrice+'</span></del>'
					+'			<ins><span class="amount">$'+dataList[i].itemSale.currentPrice+'</span></ins>'
					+'		</span>'
					+'	</a>'
					+'</span>'
					+'</span>'
					+'</li>'
			}//end of for
			
			
			
			$("#data").html(str);
			
		},
		
		error:function(){
			  alert("ERROR: query failed!");
		},
		
		complete: function(XMLHttpRequest, textStatus){
		}
	
	});
}
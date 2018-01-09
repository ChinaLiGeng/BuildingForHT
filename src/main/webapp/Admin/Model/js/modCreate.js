/**
 * 
 */
	//全局变量modelId
	var modelId;

	
	function createModel(){
		var fd = new FormData();
		var mainPic = document.getElementById("mainPic").files[0];
		var rvtPath = document.getElementById("rvtPath").files[0];
		alert("files-->" + mainPic);
		if (typeof (mainPic) == "undefined" ) {
	        alert("请添加模型封面图片");
	        return;
	    }
		
		fd.append("modelNumber", $("#modelNumber").val());
		fd.append("beType", $("#userType").val());
		fd.append("floor", $("#floor").val());
		fd.append("buildingArea", $("#buildingArea").val());
		fd.append("landArea",$("#landArea").val());
		fd.append("designFee", $("#designFee").val());
		fd.append("mainPic",mainPic);
		fd.append("rvtPath",rvtPath);
		
		$.ajax({
			url:"./ModelAdmin/createMod",
			type:"post",
			data:fd,
			cache:false,           //上传文件不需要缓存
			processData:false,   //不处理数据
		    contentType:false,    //不设置内容类型
		    success:function(data){
		    	
		    	if(data.meta.success) {
		    		alert("模型创建成功");
		    		modelId = data.data;
		    		document.cookie="modelId="+modelId;
		    		document.cookie="beType=" + $("#userType").val();
		    		document.cookie="modelNumber" + $("#modelNumber").val();
		    	}else{
		    		alert(data.meta.message);
		    	}
		    }
		});
	}

function change(){
	var element = document.getElementById("userType");
	$("userType").val(element.value);
}


function uploadIsome(){
	alert("upload");
	var fd = new FormData();
    var files = document.getElementById("uploadIsomeForm").files;
    alert(files);
    for (var i in files) {  
    	alert("i=" + i);
    }
    
	/*$.ajax({
		url:"./uploadAdmin/uploadIsome",
		type:"post",
		data:new FormData($("#uploadIsomaForm")[0]),
		cache:false,           //上传文件不需要缓存
		processData:false,   //不处理数据
	    contentType:false,    //不设置内容类型
	    success:function(data){
	    	
	    	if(data.meta.success) {
	    		alert("轴测图上传成功");
	    	}else{
	    		alert(data.meta.message);
	    	}
	    }
	});*/
}

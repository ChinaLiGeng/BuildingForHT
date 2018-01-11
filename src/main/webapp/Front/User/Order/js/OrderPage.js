$(document).ready(function(){
	
})

function makeOrder(){
	var address = $("#address").val();
	var phone = $("#phone").val();
	
	if( phone == "" || address == "" ){
		alert("必填项不能为空")
		return;
	}
	
	var json = {
			"modelId":modelId,
			"userPhone":phone,
			"orderFee":price,
			"address":address
	}
	
	$.ajax({ 
        url:"../F/Model/create_order.final", 
		type:"post",
		contentType: 'application/json',
		data:JSON.stringify(json),
        dataType:"json", 
        success:function(data){ 
        	
	        	if(data.meta.success == false){
	    			alert(data.meta.message)
	    		}else{
	    			alert("提交成功！")
	    			window.location.reload();
	    		}
        }
	})
}
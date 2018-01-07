$(document).ready(function(){
	
})

//user login
function login(){

	var userAccount = $("#userAccount").val();
	var userPassword = $("#userPassword").val();
	
	$.post("../../F/User/login.final",{
		"userAccount":userAccount,
		"userPassword":userPassword
    },function(data){
    	
	   if(data.meta.success == true){
		   window.location.href="../home.jsp";
		   window.reload();
	   }else{
		   alert("密码错误");
	   }
    })
}
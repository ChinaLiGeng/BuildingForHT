$(document).ready(function(){  
	
	$.ajaxSetup({                //设置同步
	    async : false  
	}); 
	
	$.ajax({
		type: "post",
		url: "nav.json",
		dataType: "json",
		success: function(json){
			
			if(json.meta.success){
				
				$("#side-menu").empty();
				addTop();
				addMenu(json);
			}else{
				alert(json.meta.message)
			}
		}
	})
})

//加载头部
function addTop(){
	
	$("#side-menu").append(
		'<li class="nav-header">'+
             '<div class="dropdown profile-element">'+
                 '<span><img alt="image" class="img-circle" src="../../Admin/Template/img/profile_small.jpg" /></span>'+
                 '<a data-toggle="dropdown" class="dropdown-toggle" href="#">'+
                     '<span class="clear">'+
                    '<span class="block m-t-xs"><strong class="font-bold">Beaut-zihan</strong></span>'+
                     '<span class="text-muted text-xs block">超级管理员<b class="caret"></b></span>'+
                     '</span>'+
                 '</a>'+
                 '<ul class="dropdown-menu animated fadeInRight m-t-xs">'+
                     '<li><a class="J_menuItem" href="form_avatar.html">修改头像</a>'+
                     '</li>'+
                     '<li><a class="J_menuItem" href="profile.html">个人资料</a>'+
                     '</li>'+
                     '<li><a class="J_menuItem" href="contacts.html">联系我们</a>'+
                     '</li>'+
                     '<li><a class="J_menuItem" href="mailbox.html">信箱</a>'+
                     '</li>'+
                     '<li class="divider"></li>'+
                     '<li><a href="login.html">安全退出</a>'+
                     '</li>'+
                 '</ul>'+
             '</div>'+
             '<div class="logo-element">H+'+
             '</div>'+
         '</li>'
	)
}

//加载菜单
function addMenu(json){
	
	for(var obj in json.data){
		
		var sonMenu = new Array();
		$("#side-menu").append(
			'<li>'+
             	'<a href="#">'+
             		'<i class="fa fa-edit"></i> '+
             		'<span class="nav-label">'+json.data[obj].faMenuName+'</span>'+
             		'<span class="fa arrow"></span>'+
             	'</a>'+
             	'<ul class="nav nav-second-level" id="each_menu'+obj+'">'+
                  	
                 '</ul>'+
            '</li>'
		)
		for(var i in json.data[obj].menus){
			$("#each_menu"+obj+"").append(
				'<li><a class="J_menuItem" href="../../Admin/'+json.data[obj].menus[i].menuUrl+'">'+json.data[obj].menus[i].menuName+'</a></li>'
			)
		}
	}
}
$(document).ready(function(){
	getList(number,area,page);
})
var page = 1;
var area = 0;
var number = 0;

function getList(n,a,p){
	page = p;
	area = a;
	number = p;
	
	$.post("../F/Model/modelAllList",{
		"page":page,
		"floor":number,
	    "area":area
	},"application/json",function(data){
		alert(1)
	})
}
/*
  ActionPlanTemplateDetailScripts
  version 1
  3th May 2010
  Oliver Cortinas
  
  Add <script src="ActionPlanTemplateDetailScripts.js"></script> to your HTML
*/
var taskSize = 75;
ActionPlanTemplateDetailScripts = {	
	showComments : function (row){ 
		for (i=0; i < taskSize; i++){
			if (document.getElementById("detailPage:detailForm:templateDetail:taskSection:theTable:"+ i +":commentPanel")){
				document.getElementById('detailPage:detailForm:templateDetail:taskSection:theTable:'+ i +':commentPanel').style.display = "none";
		   	}
		}
		var rowSplit = row.split(":");
		row = rowSplit[5];      
	    document.getElementById('detailPage:detailForm:templateDetail:taskSection:theTable:'+row+':commentPanel').style.display = "block";
	},
	     
	hideComments : function (row){
	    var rowSplit = row.split(":");
		row = rowSplit[5];
		document.getElementById('detailPage:detailForm:templateDetail:taskSection:theTable:'+row+':commentPanel').style.display = "none";
	},
	removeHover : function (){
		var allTd = getElementsByClass('assigned_to_field',null,'td');
		var selObj = null;
		for(var i in allTd ){
		    //get link
		    if ( allTd [i].getElementsByTagName('a').length > 0 ){
				selObj = allTd [i].getElementsByTagName('a')[0];
				selObj.onmouseover  = null;
				selObj.onmouseout	= null;
				selObj.onfocus  	= null;
				selObj.onblur  		= null;
		    }
		}
	}
}

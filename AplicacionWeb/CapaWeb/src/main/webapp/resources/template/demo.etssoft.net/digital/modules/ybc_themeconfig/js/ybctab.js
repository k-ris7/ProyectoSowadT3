/**
 * Ybc tab 
 */
(function($){$.fn.ybcTabs=function(){var s={"start":null,"return":false,"click":null};for(var i=0;i<arguments.length;++i){var n={},a=arguments[i];switch(typeof a){case"object":$.extend(n,a);break;case"number":case"string":n.start=a;break;case"boolean":n["return"]=a;break;case"function":n.click=a;break;};$.extend(s,n);}
var self=this;var list=$("a[href^='#']",this).click(function(){if($("a.selected",self)[0]==this)
return s["return"];var id="#"+this.href.split('#')[1];var aList=[];var idList=[];$("a",self).each(function(){if(this.href.match(/#/)){aList[aList.length]=this;idList[idList.length]="#"+this.href.split('#')[1];}});if(s.click&&!s.click(id,idList,self))return s["return"];for(i in aList)$(aList[i]).removeClass("selected");for(i in idList){$(idList[i]).addClass('block_hidden_only_for_screen');}
$(this).addClass("selected");$(id).removeClass('block_hidden_only_for_screen');return s["return"];});var test;if(typeof s.start=="number"&&(test=list.filter(":eq("+s.start+")")).length)
test.click();else if(typeof s.start=="string"&&(test=list.filter("[href='#"+s.start+"']")).length)
test.click();else if((test=list.filter(".selected")).length)
test.removeClass("selected").click();else list.filter(":first").click();return this;};$(function(){$(".ybcTabs").each(function(){$(this).ybcTabs();});});})(jQuery);

$(document).ready(function(){
     if($(".title_tab_product").length > 0)
        $(".title_tab_product").ybcTabs();
     
     
     
});











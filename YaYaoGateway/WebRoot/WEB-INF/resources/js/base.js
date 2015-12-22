$(function(){
	//轮播图片
		$("#myCarousel").carousel({interval:5000});
	//回到顶部
    $("#gotoTop").click(function(){
        $("html,body").animate({scrollTop:0},1000);//回到顶端
        return false;
    });
    //底部bottomhr
    if($(window).width()>"768"){
    setInterval("$('#bottomhr').bottomhr()",500);
    }
    /**
     * 替换<br>标签为<p></p>
     */
    $("#contentText br").each(function(){
    	$(this).after("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
    });
});
/**
 * 元素居中
 */
;(function($){
$.fn.center=function(top,left){
$(this).css("position","absolute");
this.css("top",(($(window).height()-this.height())/2+$(window).scrollTop()+top)+"px");
this.css("left",(($(window).width()-this.width())/2+$(window).scrollLeft()+left)+"px");
return this;
}})(jQuery);
/**
 * 底部色彩横线变换bottomhr
 */
;(function($){
	$.fn.bottomhr=function(){
		var ballnumber=100;
		if($(this).children().size()<ballnumber){
		for (var int = 0; int <ballnumber; int++) {
		$(this).append("<div></div>");
		}
		}
		var $this=$(this).children();
		//alert($(this).children().size())
	var colorstr=["#1685a9","#16a951","#003472","#ffb61e","#ff4777"
	              ,"#574266","#8d4bbb","#cca4e3","#30dff3","#424c50"];
	$this.each(function(){
		$(this).css("display","inline-block");
		$(this).css("width","1%");
		$(this).css("height","5px");
		//$(this).css("border-radius",$(this).css("width"));
		$(this).css("background-color",colorstr[Math.ceil(Math.random()*10)]);
	});
	}})(jQuery);
/**
 * jQuery Validate 电话号码验证
 */	
	jQuery.validator.addMethod("isTell", function(value, element) {
			 var RegExp = /^(\d{3}-(\d{8})|(\d{7}))$|^(\d+)$|^(\d{4}-(\d{7})|(\d{8}))$|^(\d{7,8})$/;
			     return RegExp.test(value);
			   }, $.validator.format("电话号码输入不正确!"));

/**
 * 图片预加载
 * 
 */	
	
//	$("img").each(function(){
//		var $this=$(this);
//		alert("dfs")
//		//alert($this.attr("src"))
//		addImg('resources/img/5.jpg');
//		function addImg(isrc) {
//			imgObj1 = new Image();
//			imgObj1.src = isrc;
//			imgObj1.onload = function() {
//				$this.src = this.src;
//				//imgObj.height = 50;
//				//imgObj.width = 50;
//			}
//		}
//	});

	/**
	 * 验证中文
	 */
	/*jQuery.extend(jQuery.validator.messages, {
		required: "必选字段",
		remote: "请修正该字段",
		email: "请输入正确格式的电子邮件",
		url: "请输入合法的网址",
		date: "请输入合法的日期",
		dateISO: "请输入合法的日期 (ISO).",
		number: "请输入合法的数字",
		digits: "只能输入整数",
		creditcard: "请输入合法的信用卡号",
		equalTo: "请再次输入相同的值",
		accept: "请输入拥有合法后缀名的字符串",
		maxlength: jQuery.validator.format("请输入一个 长度最多是 {0} 的字符串"),
		minlength: jQuery.validator.format("请输入一个 长度最少是 {0} 的字符串"),
		rangelength: jQuery.validator.format("请输入 一个长度介于 {0} 和 {1} 之间的字符串"),
		range: jQuery.validator.format("请输入一个介于 {0} 和 {1} 之间的值"),
		max: jQuery.validator.format("请输入一个最大为{0} 的值"),
		min: jQuery.validator.format("请输入一个最小为{0} 的值")
	});*/
$(function(){
	
	  /**
	   * 表单验证
	   */  
	    $("#customerForm").validate({
	    	/*onfocusin: function(element){
	    		 $(".success").css({"color":"red","right":"0px"});
	    		$(".success").attr("class","error");
	    	        $(element).valid();
	    	    },*/
	    	
	    	onfocusout: function(element){
	    		$(".success").css({"color":"red"});
	    		$(".success").attr("class","error");
	    	    	//$(element).valid();
	    	    },
	    	        rules: {
	    	   userName: {
	    		   required:true, 
	    		   minlength:2,
	    	   		},
	    	   
	    	   cellPhone: {
	    	    required: true,
	    	    number: true,
	    	    minlength: 7,
	    	    maxlength: 13,
	    	    isTell: true
	    	   },
	    	   email: {
	    	    required: true,
	    	    email: true,
	    	   },
	    	   content: {
	    	    required: true,
	    	    minlength: 2,
	    	   }
	    	  },
	    	       
	    	  messages: {
	    		  userName: {
	    			  required:"请输入您的姓名",
	    			  minlength:"姓名至少两个字"
	    			  },
	    		  cellPhone: {
	    	    required: "请输入电话号码",
	    	    minlength: "最少7个数字",
	    	    maxlength: "最长13个数字",
	    	    number: "电话必须是数字",
	    	   isTell: "电话格式不正确"
	    	   },
	    	   email: {
	    		   required: "请输入Email地址",
	    		   email: "请输入正确的email地址"
	    	   },
	    	   content: {
	    	    required: "请输入需求与意见",
	    	    minlength: "长度不能小于2个字"
	    	   }
	    	  },
	    	  success:function(label){
	    		  $(label).addClass("glyphicon glyphicon-ok success");
	  			  $(label).css({"color":"green"});
	    	  },
	    	  //focusCleanup: true
	    		  
	    	 /* errorPlacement: function(error, element) {
	    		 $(element.next()).attr("class","glyphicon glyphicon-remove form-control-feedback");
	 			$(element.next()).css({"color":"red","right":"3%"});
	    	 }*/
	    	   
	    });
	/*    $("#customerForm").validate({
	    	debug:true
	    	
	    });*/
	   /**
	    * 表单提交
	    */
	    $("#customerFormSubmit").on("click",function(){
	    	if(!$("#customerForm").valid()) {return; 
	    	}else{
	    	$.ajax({
                type: "POST",
                url:$("#customerForm").attr("action"),
                data:$('#customerForm').serialize(),// 你的formid
                async: true,
                error: function(request) {
                    alert("提交失败！");
                },
                success: function(data) {
                	//alert(data.content)
                	if(data==null||data==undefined||data==''){
                	return;
                	}
                	//alert(data);
                	//$("#customerForm").parent().html("userName:"+data.userName+"cellPhone:"+data.cellPhone);
                	$("#customerForm").parent().html("<div class='jumbotron'>"+
                			"<div class='glyphicon glyphicon-ok' style='color:green;font-size:1.2em;text-aglin:center;'>尊敬的"+
                			data.userName+"，感谢您的宝贵信息，我们将竭诚为您服务！</div></div>");
                	/*$("#customerMessage").text("尊敬的客户，感谢您的宝贵信息，我们将竭诚为您服务！");
                	$("#userName").parent().html(data.userName);
                	$("#cellPhone").parent().html(data.cellPhone);
                	$("#email").parent().html(data.email);
                	$("#content").parent().html(data.content);
                	$("#customerFormSubmit").remove();
                	 */
                }
            });
	    	} 
	    });
	    $("#userName").on("change",function(){
	    	var date=new Date(); 
	    	var expiresDays=5; 
	    	date.setTime(date.getTime()+expiresDays*1000);  
	    document.cookie="userName="+$(this).val()+";expires="+date.toGMTString();
	    //alert(document.cookie+"  "+date)
	    });
	});

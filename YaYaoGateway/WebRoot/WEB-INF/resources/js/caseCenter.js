$(function(){
	$(".caseDIV img").each(function(){
		var $this=$(this);
	$(this).parent().on("mouseover",function(){
		//alert($this.css('border-radius'))
	/*	$this.next().css({"width":$this.css('width'),
			"height":$this.css('height'),
			"background-color":"#cccccc",
			"opacity":"0.5",
			"margin-top":"-"+$this.css('height'),
			"border":$this.css('border'),
			"border-radius":$this.css('border-radius')});*/
		if($this.attr("src").indexOf("OnceBloodAndFire")>-1){
			$this.next().text("俄罗斯抗战老兵中国行——湖南站");
		}
		if($this.attr("src").indexOf("TheMostBeautifulEmbroideryXiuNv")>-1){
			$this.next().text("最美湘绣——做最美的你");
		}
		
		//$this.next().children().css({"transform":"translateY(500px)","transition-delay":"0.5s"});
		$this.next().show();
		
	});
	$(this).parent().mouseout(function(){
		//$this.next().css({"transform":"translateX(150px)","transition-delay":"0.5s"});
	$this.next().hide();
	});
	});
	});

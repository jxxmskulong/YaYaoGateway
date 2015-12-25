/**
     * 图片预加载
     * 
     */	
	var imgNames=document.getElementsByTagName("img");
   for (var i = 0; i < imgNames.length; i++) {
	 $this=imgNames[i];
	$thissrc=$this.src;
	function addImg(isrc) {
		 imgObj1 = new Image();
		imgObj1.src = isrc;
		//alert($thissrc)
		$thissrc=imgObj1.src;
		$this.onload=function() {
			//alert("df")
			//$this.src=$thissrc;
			setTimeout(function(){
				$this.src=$thissrc;
			}
			,1000);
		}
	}
	addImg('resources/img/prevLoad.jpg');
}
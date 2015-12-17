
		//创建地图
	var map = new AMap.Map('LBSMAP',{
        zoom: 14,
        center: [112.945989,28.217831]
  });
	/* var map = new AMap.Map('LBSMAP');
	    map.setZoom(10);
	    map.setCenter([112.945989,28.217831]);*/
	    var marker = new AMap.Marker({
	        position: [112.945989,28.217831],
	    	map:map
	    });
	    var circle = new AMap.Circle({
	        center: [112.945989,28.217831],
	        radius: 100,
	        fillOpacity:0.1,
	        strokeWeight:1
	    });
	    circle.setMap(map);
	    map.setFitView();
	    var info = new AMap.InfoWindow({
	        content:"<span style='color:#2add9c;font-weight:bold;'>欢迎您</span><br/><span style='color:#2add9c;font-weight:bold;'>这里是雅耀（湖南）科技有限公司</span>",
	        offset:new AMap.Pixel(0,-28)
	    });
	    info.open(map,marker.getPosition());
	    
	    //工具条比例尺
	    AMap.plugin(['AMap.ToolBar','AMap.Scale'],function(){
	        var toolBar = new AMap.ToolBar();
	        var scale = new AMap.Scale();
	        map.addControl(toolBar);
	        map.addControl(scale);
	    });
	    //var map = new AMap.Map('LBSMAP');
	    map.setZoom(10);
	    map.setCenter([112.945989,28.217831]);
	   /*  AMap.plugin('AMap.AdvancedInfoWindow',function(){
	    	  var infowindow = new AMap.AdvancedInfoWindow({
	    	    content: "<h3 class='title'>高德地图</h1>"+
	    	             "<div class='content'>高德是中国领先的数字地图内容、"+
	    	             "导航和位置服务解决方案提供商。</div>",
	    	    offset: new AMap.Pixel(0, -30),
	    	    asOrigin:false
	    	  });
	    	  infowindow.open(map,new AMap.LngLat(112.945989,28.217831));
	    	}); */
	
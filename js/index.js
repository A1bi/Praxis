$(function () {
	var maps = {};
	
	var initMap = function (id, index) {
		var box = $("#"+id);
	
		var map = new Map(id);
		map.registerLocations(mapData.locations);
		map.registerIcons(mapData.icons);
		
		var markers = [{loc: index, icon: "red"}];
		if (mapData.addresses[index] != 0) {
			markers.push({loc: 0, icon: "logo"});
		}
		map.addMarkers(markers);
		
		map.setCenter(index, 16);
		map.map.moveByPx(box.find(".info").position().left / 2 + 15, 0);
		
		maps[id] = map;
	}
	
	initMap("mapDoc", 0);
	initMap("mapPharma", 1);
	
	$(".onCall .column .zoom").click(function () {
		_this = $(this).parent().parent();
		var onCall = $(".onCall");
		var action;
		
		if (_this.is(".big")) {
			_this.removeClass("big");
			$(".small", onCall).removeClass("hidden");
			_this.addClass("small");
		
			action = "vergrößern";
		
		} else {
			_this.removeClass("small");
			$(".small", onCall).addClass("hidden");
			_this.addClass("big");
			
			action = "verkleinern";
		}
		
		$(".columns", onCall).toggleClass("big");
		$(".zoom", _this).html(action);
		
		setTimeout(function () {
			maps[$(".map", _this).attr("id")].map.updateSize();
		}, 1000);
	});
});
$(function () {
	var maps = {};
	
	var initMap = function (id, type) {
		var box = $("#"+id);
	
		var map = new Map(id);
		map.registerLocations(mapData.locations);
		map.registerIcons(mapData.icons);
		
		var markers = [];
		if (mapData.onCall[type] == null || mapData.onCall[type].address != 0) {
			markers.push({loc: 0, icon: "logo"});
		}
		
		if (mapData.onCall[type] != null) {
			var loc = mapData.onCall[type].location;
			markers.push({loc: loc, icon: "red"});
			
			map.setCenter(loc, 16);
			var infoBox = box.find(".info");
			map.map.moveByPx((infoBox.position().left / 2 + 5) * (1.3 * infoBox.width() / 170), 0);
			
		} else {
			map.setCenter(0, 14);
		}
		
		map.addMarkers(markers);
		
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
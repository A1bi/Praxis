$(function () {
	var initMap = function (id) {
		var box = $("#"+id);
	
		var map = new Map(id);
		map.registerLocations([[7.137041, 50.230914]]);
		map.setCenter(0, 15);
		map.map.moveByPx((box.parent().width() - box.next(".info").outerWidth(true)) / 2, 0);
	}
	
	initMap("mapDoc");
	initMap("mapPharma");
});
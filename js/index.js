$(function () {
	var initMap = function (id, marker) {
		var box = $("#"+id);
	
		var map = new Map(id);
		map.registerLocations(mapData.locations);
		map.registerIcons(mapData.icons);
		
		var markers = [mapData.markers[marker]];
		if (mapData.markers[marker].loc != mapData.markers.oster.loc) {
			markers.push(mapData.markers.oster);
		}
		map.addMarkers(markers);
		
		map.setCenter(mapData.markers[marker].loc, 16);
		map.map.moveByPx(box.find(".info").position().left / 2 + 15, 0);
	}
	
	initMap("mapDoc", "doc");
	initMap("mapPharma", "pharma");
});
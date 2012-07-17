	<script>
		var mapData = {
			"icons": [
				{
					"name": "logo",
					"size": [19, 52],
					"offset": [-7, -52],
					"file": "/gfx/map/logo.png"
				},
				{
					"name": "red",
					"size": [21, 25],
					"offset": [-10, -25],
					"file": "/gfx/map/red.png"
				}
			],
			"locations": [
				[{$addresses[0]['lon']}, {$addresses[0]['lat']}],
{foreach $onCall as $addr}
				[{$addresses[$addr['address']]['lon']}, {$addresses[$addr['address']]['lat']}],
{/foreach}
			],
			"onCall": {
{foreach $onCall as $addr}
				"{$addr['type']}": {
					"address": {$addr['address']},
					"location": {$addr@index+1}
				}{if !$addr@last},{/if}

{/foreach}
			}
		}
	</script>
{include file="head.tpl" jsfiles=[["openlayers", 1], ["map", 0], ["index", 0]]}
<div class="section noMargin slides">
	<div class="slide">
		<img src="/gfx/slide.png" alt="" />
		<div class="caption">Herzlich willkommen!</div>
	</div>
</div>
<div class="sep"></div>
<div class="section">
	<div class="hl">Aktueller Hinweis</div>
	<p>Für die Zeit der Erkrankung von Herrn Dr. Oster gelten folgende Sprechstundenzeiten:</p>
	<p class="bigger indent">
		<b>Montag, Dienstag, Donnerstag, Freitag: 8 bis 12 Uhr</b><br />
		Mittwochs nur Rezeptbestellungen und Terminvereinbarungen.<br />
		Hausbesuche werden wie üblich gefahren.
	</p>
	<p>Die Vertretung in unserer Praxis übernimmt:</p>
	<p class="bigger indent">
		<b>Herr Dr. med. Bernd Paulus</b><br />
		Facharzt für Allgemeinmedizin<br />
		Facharzt für Chirurgie<br />
		Psychotherapie
	</p>
</div>
<div class="sep"></div>
<div class="section onCall">
	<div class="hl">
		Notdienst in Kaisersesch
		<div class="smaller">{$smarty.now|date_format:"%A, der %d. %B %Y"}</div>
	</div>
	<div class="columns">
		<div class="column">
			<div class="hl">Ärzte</div>
			<div id="mapDoc" class="map">
				<div class="info">
					<div class="name bigger">Praxis Dr. Möller</div>
					<div class="address">Hauptstraße 2<br />
					Kaisersesch</div>
					<div class="phone">Tel: 02653 7660</div>
				</div>
			</div>
		</div>
		<div class="bar"></div>
		<div class="column">
			<div class="hl">Apotheken</div>
			<div id="mapPharma" class="map">
				<div class="info">
					<div class="name bigger">Römer Apotheke</div>
					<div class="address">Bahnhofstraße 2<br />
					Kaisersesch</div>
					<div class="phone">Tel: 02653 1234</div>
				</div>
			</div>
		</div>
	</div>
	<div class="smaller hcen">Kartendaten: CC-By-SA by <a href="http://www.openstreetmap.org" target="_blank">OpenStreetMap</a></div>
</div>
{include file="foot.tpl"}
{include file="head.tpl" jsfiles=[["openlayers", 1], ["map", 0], ["index", 0]] head="index_head.tpl" cssfile="index"}
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
{foreach [["doc", "Ärzte", "Doc"], ["pharma", "Apotheken", "Pharma"]] as $type}
		<div class="column small {$type[0]}">
			<div class="hl"><div class="smaller">{$type[1]}</div></div>
			<div id="map{$type[2]}" class="map">
{if $onCall[$type@index]['address'] != ""}
{$address=$addresses[$onCall[$type@index]['address']]}
				<div class="info">
					<div class="name bigger">{$address['name']}</div>
					<div class="address">{$address['street']}<br />
					{$address['city']}</div>
					<div class="phone">Tel: {$address['tel']}</div>
				</div>
				<div class="zoom">vergrößern</div>
{else}
				<div class="unavail">
					Der aktuelle Notdienst ist derzeit nicht verfügbar.
					<br />Vielen Dank für Ihr Verständnis!
				</div>
{/if}
			</div>
		</div>
{/foreach}
		<div class="bar small"></div>
	</div>
	<div class="smaller hcen">Kartendaten: CC-By-SA by <a href="http://www.openstreetmap.org" target="_blank">OpenStreetMap</a></div>
</div>
{include file="foot.tpl"}
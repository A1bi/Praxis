<!DOCTYPE html>
<html>
<head>
	<title>Praxis Dr. med. Albrecht Oster{if $title != ""} - {$title}{/if}</title>
	<meta charset="utf-8" />
	<meta name="keywords" content="Praxis, Kaisersesch, Notdienst, Allgemeinmedizin, Diabetes, Diabetologie" />
	<link rel="icon" type="image/png" href="/gfx/favicon.png" />
	
	<link rel="stylesheet" type="text/css" href="/css/main.css{fileVersion file="/css/main.css"}" />
	<script src="/core/js/jquery.js"></script>
	<script src="/js/main.js{fileVersion file="/js/main.js"}"></script>

{if $cssfile != ""}
	<link rel="stylesheet" type="text/css" href="/css/{$cssfile}.css{fileVersion file="/css/{$cssfile}.css"}" />
{/if}
{foreach $jsfiles as $jsfile}
{if $jsfile[1] == 0}
{$file = "/js/{$jsfile[0]}.js"}
{$file = "{$file}{fileVersion file=$file}"}
{elseif $jsfile[1] == 1}
{$file = "/core/js/{$jsfile[0]}.js"}
{else}
{$file = $jsfile[0]}
{/if}
	<script src="{$file}"></script>
{/foreach}
{if $head != ""}

{include file=$head}

{/if}
</head>

<body>
	<div id="logo">Praxis Dr. Oster</div>
	<div id="content">
		<div id="head">
			<div class="section noMargin">
				<div class="title">Praxis Dr. med. Albrecht Oster</div>
				<div>
					Allgemeinmedizin<br />
					Diabetologie
				</div>
			</div>
			<div class="shadow up"></div>
			<div class="sep"></div>
		</div>
<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}}>
<head>
	<title>{browserTitle}</title>
	{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client{{{if bootswatchSkin}}}-{bootswatchSkin}{{{end}}}{{{ if (languageDirection=="rtl") }}}-rtl{{{ end }}}.css?{config.cache-buster}" />
	{{{each linkTags}}}{function.buildLinkTag}{{{end}}}

	<script>
		var config = JSON.parse('{{configJSON}}');
		var app = {
			user: JSON.parse('{{userJSON}}')
		};

		document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
	</script>

	{{{if useCustomHTML}}}
	{{customHTML}}
	{{{end}}}
	{{{if useCustomCSS}}}
	<style>{{customCSS}}</style>
	{{{end}}}
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}}">
	<div class="layout-container d-flex justify-content-between pb-4 pb-md-0">
		<!-- IMPORT partials/sidebar-left.tpl -->

		<main id="panel" class="d-flex flex-column gap-3 flex-grow-1 mt-3" style="min-width: 0;">
			<div class="global-header">
				<div class="global-header-inner">
					<a id='theshow-link'>THESHOW.COM</a>
					<div class="global-menu-survey" style="display: none;">
						<div class="global-menu-survey-wrapper">
							<svg class="global-toggle-survey" height="8" viewBox="0 0 8 8" width="8" xmlns="http://www.w3.org/2000/svg">
								<path d="M0 0v7h7v-3.59l-1 1v1.59h-5v-5h3.59l1-1h-5.59zm7 0l-3 3-1-1-1 1 2 2 4-4-1-1z"></path>
							</svg>
							<div class="global-menu-survey-label"></div>
						</div>
					</div>
					<div class="global-header-links-right">
						<a class="svg" href="https://mlb22.theshow.com/dashboard" onclick="gtag('event', 'Header', { 'event_category': 'Game', 'event_label': 'Global Header - Game Site'});">
							<svg class="link-icon" height="12" viewbox="0 0 496 512" width="12" xmlns="http://www.w3.org/2000/svg">
								<path d="M368.5 363.9l28.8-13.9c11.1 22.9 26 43.2 44.1 60.9 34-42.5 54.5-96.3 54.5-154.9 0-58.5-20.4-112.2-54.2-154.6-17.8 17.3-32.6 37.1-43.6 59.5l-28.7-14.1c12.8-26 30-49 50.8-69C375.6 34.7 315 8 248 8 181.1 8 120.5 34.6 75.9 77.7c20.7 19.9 37.9 42.9 50.7 68.8l-28.7 14.1c-11-22.3-25.7-42.1-43.5-59.4C20.4 143.7 0 197.4 0 256c0 58.6 20.4 112.3 54.4 154.7 18.2-17.7 33.2-38 44.3-61l28.8 13.9c-12.9 26.7-30.3 50.3-51.5 70.7 44.5 43.1 105.1 69.7 172 69.7 66.8 0 127.3-26.5 171.9-69.5-21.1-20.4-38.5-43.9-51.4-70.6zm-228.3-32l-30.5-9.8c14.9-46.4 12.7-93.8-.6-134l30.4-10c15 45.6 18 99.9.7 153.8zm216.3-153.4l30.4 10c-13.2 40.1-15.5 87.5-.6 134l-30.5 9.8c-17.3-54-14.3-108.3.7-153.8z"></path>
							</svg>
						</a>
						<a class="link-text" href="https://mlb22.theshow.com/dashboard" onclick="gtag('event', 'Header', { 'event_category': 'Game', 'event_label': 'Global Header - Game Site'});">Game</a>
						<a class="svg" href="https://theshow.sonysandiegostudio.games/hc/en-us" onclick="gtag('event', 'Header', { 'event_category': 'Support', 'event_label': 'Global Header - Support Site'});">
							<svg class="link-icon" height="12" viewbox="0 0 512 512" width="12" xmlns="http://www.w3.org/2000/svg">
								<path d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 448c-110.532 0-200-89.431-200-200 0-110.495 89.472-200 200-200 110.491 0 200 89.471 200 200 0 110.53-89.431 200-200 200zm107.244-255.2c0 67.052-72.421 68.084-72.421 92.863V300c0 6.627-5.373 12-12 12h-45.647c-6.627 0-12-5.373-12-12v-8.659c0-35.745 27.1-50.034 47.579-61.516 17.561-9.845 28.324-16.541 28.324-29.579 0-17.246-21.999-28.693-39.784-28.693-23.189 0-33.894 10.977-48.942 29.969-4.057 5.12-11.46 6.071-16.666 2.124l-27.824-21.098c-5.107-3.872-6.251-11.066-2.644-16.363C184.846 131.491 214.94 112 261.794 112c49.071 0 101.45 38.304 101.45 88.8zM298 368c0 23.159-18.841 42-42 42s-42-18.841-42-42 18.841-42 42-42 42 18.841 42 42z"></path>
							</svg>
						</a>
						<a class="link-text" href="https://theshow.sonysandiegostudio.games/hc/en-us" onclick="gtag('event', 'Header', { 'event_category': 'Support', 'event_label': 'Global Header - Support Site'});">Support</a>
						<a class="svg" href="https://account.theshow.com/" onclick="gtag('event', 'Header', { 'event_category': 'My Account', 'event_label': 'Global Header - My Account Site'});">
							<svg class="link-icon" height="12" viewbox="0 0 496 512" width="12" xmlns="http://www.w3.org/2000/svg">
								<path d="M248 104c-53 0-96 43-96 96s43 96 96 96 96-43 96-96-43-96-96-96zm0 144c-26.5 0-48-21.5-48-48s21.5-48 48-48 48 21.5 48 48-21.5 48-48 48zm0-240C111 8 0 119 0 256s111 248 248 248 248-111 248-248S385 8 248 8zm0 448c-49.7 0-95.1-18.3-130.1-48.4 14.9-23 40.4-38.6 69.6-39.5 20.8 6.4 40.6 9.6 60.5 9.6s39.7-3.1 60.5-9.6c29.2 1 54.7 16.5 69.6 39.5-35 30.1-80.4 48.4-130.1 48.4zm162.7-84.1c-24.4-31.4-62.1-51.9-105.1-51.9-10.2 0-26 9.6-57.6 9.6-31.5 0-47.4-9.6-57.6-9.6-42.9 0-80.6 20.5-105.1 51.9C61.9 339.2 48 299.2 48 256c0-110.3 89.7-200 200-200s200 89.7 200 200c0 43.2-13.9 83.2-37.3 115.9z"></path>
							</svg>
						</a>
						<a class="link-text" href="https://account.theshow.com/" onclick="gtag('event', 'Header', { 'event_category': 'My Account', 'event_label': 'Global Header - My Account Site'});">My Account</a>
					</div>
				</div>
				<div class="theshow-notifications"></div>
			</div>

			<!-- IMPORT partials/header/brand.tpl -->
			<script>
				const headerEl = document.getElementById('header-menu');
				if (headerEl) {
					const rect = headerEl.getBoundingClientRect();
					const offset = Math.max(0, rect.bottom);
					document.documentElement.style.setProperty('--panel-offset', offset + `px`);
				} else {
					document.documentElement.style.setProperty('--panel-offset', `0px`);
				}
			</script>
			<div class="container px-md-4 d-flex flex-column gap-3 h-100" id="content">
			<!-- IMPORT partials/noscript/warning.tpl -->
			<!-- IMPORT partials/noscript/message.tpl -->

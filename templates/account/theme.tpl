<!-- IMPORT partials/account/header.tpl -->

<div class="mb-3 d-flex justify-content-between">
	<h3 class="fw-semibold fs-5">{{tx("themes/harmony:settings.title")}}</h3>

	<button id="save" type="button" class="btn btn-primary">{{tx("global:save-changes")}}</button>
</div>

<form id="theme-settings" role="form">
	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="enableQuickReply" name="enableQuickReply" {{{ if theme.enableQuickReply }}}checked{{{ end }}}>
		<label class="form-check-label" for="enableQuickReply">{{tx("themes/harmony:settings.enableQuickReply")}}</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="centerHeaderElements" name="centerHeaderElements" {{{ if theme.centerHeaderElements }}}checked{{{ end }}}>
		<label class="form-check-label" for="centerHeaderElements">{{tx("themes/harmony:settings.centerHeaderElements")}}</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="mobileTopicTeasers" name="mobileTopicTeasers" {{{ if theme.mobileTopicTeasers }}}checked{{{ end }}}>
		<label class="form-check-label" for="mobileTopicTeasers">{{tx("themes/harmony:settings.mobileTopicTeasers")}}</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="stickyToolbar" name="stickyToolbar" {{{ if theme.stickyToolbar }}}checked{{{ end }}}>
		<label class="form-check-label" for="stickyToolbar">
			{{tx("themes/harmony:settings.stickyToolbar")}}
			<p class="form-text mb-0">
				{{tx("themes/harmony:settings.stickyToolbar.help")}}
			</p>
		</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="autohideBottombar" name="autohideBottombar" {{{ if theme.autohideBottombar }}}checked{{{ end }}}>
		<label class="form-check-label" for="autohideBottombar">
			{{tx("themes/harmony:settings.autohideBottombar")}}
			<p class="form-text mb-0">
				{{tx("themes/harmony:settings.autohideBottombar.help")}}
			</p>
		</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="chatModals" name="chatModals" {{{ if theme.chatModals }}}checked{{{ end }}}>
		<label class="form-check-label" for="chatModals">
			{{tx("themes/harmony:settings.chatModals")}}
		</label>
	</div>

</form>

<!-- IMPORT partials/account/footer.tpl -->

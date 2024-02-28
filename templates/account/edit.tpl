<!-- IMPORT partials/account/header.tpl -->

<div class="d-flex justify-content-between mb-3 align-items-center">
	<h3 class="fw-semibold fs-5 mb-0">{{{ if isSelf }}}[[user:edit-profile]]{{{ else }}}[[pages:account/edit, {username}]]{{{ end }}}</h3>
	<button id="submitBtn" class="btn btn-primary">[[global:save-changes]]</button>
</div>
<div class="row">
	<div class="col-xl-6 col-12">
		<form role="form" component="profile/edit/form">
			<div class="mb-2">
				<label class="form-label fw-bold" for="groupTitle">[[user:grouptitle]]</label>

				<select class="form-select mb-1" id="groupTitle" name="groupTitle" {{{ if allowMultipleBadges }}} size="{groupSelectSize}" multiple{{{ end }}}>
					<option value="">[[user:no-group-title]]</option>
					{{{ each groups }}}
					{{{ if ./userTitleEnabled }}}
					<option value="{groups.displayName}" {{{ if ./selected }}}selected{{{ end }}}>{./userTitle}</option>
					{{{ end }}}
					{{{ end }}}
				</select>
				{{{ if allowMultipleBadges }}}
				<div class="d-none d-md-block">
					<span class="form-text">[[user:group-order-help]]</span>
					<i role="button" component="group/order/up" class="fa fa-chevron-up"></i> <i role="button" component="group/order/down" class="fa fa-chevron-down"></i>
				</div>
				{{{ end }}}
			</div>
		</form>
		<hr class="visible-xs visible-sm"/>
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->

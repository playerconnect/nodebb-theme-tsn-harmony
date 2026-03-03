<!-- IMPORT partials/account/header.tpl -->

<div class="d-flex justify-content-between mb-3 align-items-center">
	<h3 class="fw-semibold fs-5 mb-0">{{{ if isSelf }}}[[user:edit-profile]]{{{ else }}}[[pages:account/edit, {username}]]{{{ end }}}</h3>
	<button id="submitBtn" class="btn btn-primary">[[global:save-changes]]</button>
</div>
<div class="row">
	<div class="col-xl-6 col-12">
		{{{ if groups.length }}}
			<div class="mb-3">
				<label class="form-label fw-bold" for="groupTitle">[[user:grouptitle]]</label>

				<div class="d-flex flex-column gap-2" component="group/badge/list">
					{{{ each groups }}}
					<div component="group/badge/item" class="d-flex gap-2 justify-content-between align-items-center" data-value="{./displayName}" data-selected="{./selected}">
						<!-- IMPORT partials/groups/badge.tpl -->
						<div class="d-flex gap-1">
							<button component="group/toggle/hide" type="button" class="btn btn-ghost btn-sm {{{ if !./selected }}}hidden{{{ end }}}" title="[[user:hide-group-title]]"><i class="fa fa-fw fa-eye"></i></button>
							<button component="group/toggle/show" type="button" class="btn btn-ghost btn-sm {{{ if ./selected }}}hidden{{{ end }}}" title="[[user:show-group-title]]"><i class="fa fa-fw fa-eye-slash"></i></button>
							{{{ if allowMultipleBadges }}}
							<button component="group/order/up" type="button" class="btn btn-ghost btn-sm" title="[[user:order-group-up]]"><i class="fa fa-fw fa-chevron-up"></i></button>
							<button component="group/order/down" type="button" class="btn btn-ghost btn-sm" title="[[user:order-group-down]]"><i class="fa fa-fw fa-chevron-down"></i></button>
							{{{ end }}}
						</div>
					</div>
					{{{ end }}}
				</div>
			</div>
		{{{ end }}}
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->

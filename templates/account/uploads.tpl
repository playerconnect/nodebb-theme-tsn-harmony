<!-- IMPORT partials/account/header.tpl -->

<h3 class="fw-semibold fs-5">{{tx(title)}}</h3>

<div class="alert alert-info text-center">
	{{{ if privateUploads }}}{{tx("uploads:private-uploads-info")}}{{{ else }}}{{tx("uploads:public-uploads-info")}}{{{ end }}}
</div>

{{{ if !uploads.length }}}
<div class="alert alert-warning text-center">{{tx("uploads:no-uploads-found")}}</div>
{{{ end }}}

<table class="table table-striped table-responsive">
	<thead>
		<tr>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		{{{ each uploads }}}
		<tr data-name="{{tx(./name)}}">
			<td>
				<a class="text-break" href="{config.relative_path}{./url}">{./url}</a>
			</td>
			<td>
				<div class="btn-group ">
					<button class="btn btn-danger btn-sm" data-action="delete"><i class="fa fa-trash"></i></button>
				</div>
			</td>
		</tr>
		{{{ end }}}
	</tbody>
</table>

<!-- IMPORT partials/paginator.tpl -->
<!-- IMPORT partials/account/footer.tpl -->

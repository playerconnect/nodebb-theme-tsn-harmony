
<li class="nav-item mx-2 order-last order-md-first" title="{{tx("global:login")}}">
	<a class="nav-link nav-btn" href="{relative_path}/login">
		<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
			<span class="position-relative">
				<i class="fa fa-fw fa-sign-in"></i>
			</span>
			<span class="nav-text small visible-open fw-semibold">{{tx("global:login")}}</span>
		</span>
	</a>
</li>
<hr class="my-2 mx-2 visible-open">
{{{ if allowRegistration }}}
<li class="nav-item mx-2" title="{{tx("global:register")}}">
	<span class="text-xs visible-open">{{tx("login:dont-have-account")}}</span>
	<a class="nav-link nav-btn" href="{relative_path}/register">
		<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
			<span class="position-relative">
				<i class="fa fa-fw fa-user-plus"></i>
			</span>
			<span class="nav-text small visible-open fw-semibold">{{tx("global:register")}}</span>
		</span>
	</a>
</li>
<hr class="my-2 mx-2 visible-open">
{{{ end }}}

{{{ if config.searchEnabled }}}
<li component="sidebar/search" class="visible-open nav-item mx-2 search">
	<div class="d-flex gap-2 py-1 px-2 align-items-center" title="{{tx("themes/harmony:login-register-to-search")}}">
		<i class="fa fa-fw fa-search text-muted"></i>
		<span class="nav-text visible-open text-xs text-muted">{{tx("themes/harmony:login-register-to-search")}}</span>
	</a>
</a>
{{{ end }}}

<div class="account">
	<div data-widget-area="header">
		{{{each widgets.header}}}
		{{widgets.header.html}}
		{{{end}}}
	</div>

	<div class="d-flex flex-column flex-md-row gap-2 w-100 pb-4 mb-4 mt-2 border-bottom">
		<div {{{ if (allowProfilePicture && isSelfOrAdminOrGlobalModerator)}}}component="profile/change/picture"{{{ end }}} class="avatar-wrapper border-4 position-relative align-self-center align-self-md-start hover-parent" style="margin-top: -75px;">
			{buildAvatar(@value, "142px", true)}
			{{{ if (allowProfilePicture && isSelfOrAdminOrGlobalModerator)}}}
			<div component="profile/change/picture" class="d-none d-md-block pointer p-2 rounded-1 opacity-75 text-bg-light position-absolute top-50 start-50 translate-middle hover-visible">
				<span class="upload"><i class="fa fa-fw fa-upload"></i></span>
			</div>
			{{{ end }}}
		</div>

		<div class="d-flex flex-column flex-md-row mt-1 justify-content-between w-100 gap-2">
			<div class="d-flex flex-grow-1 flex-row gap-2">
				<div class="d-flex flex-column gap-1">
					<h2 class="fullname fw-semibold fs-2 tracking-tight mb-0">{{{ if fullname }}}{fullname}{{{ else }}}{username}{{{ end }}}</h2>
					<div class="d-flex flex-wrap gap-1 text-sm align-items-center">
						<span class="username fw-bold">@{username}</span>
						<div class="d-flex align-items-center gap-1 p-1">
							{{{ if selectedGroup.length }}}
							{{{ each selectedGroup }}}
							{{{ if ./slug }}}
							<!-- IMPORT partials/groups/badge.tpl -->
							{{{ end }}}
							{{{ end }}}
							{{{ end }}}
						</div>
					</div>
					<div class="d-flex gap-2" component="user/badges"></div>
					{{{ if isAdminOrGlobalModeratorOrModerator }}}
					{{{ if banned }}}
					<div class="text-xm text-muted">
						{{{ if banned_until }}}
						[[user:info.banned-until, {banned_until_readable}]]
						{{{ else }}}
						[[user:info.banned-permanently]]
						{{{ end }}}
					</div>
					{{{ end }}}
					{{{ end }}}
				</div>
			</div>

			<div class="flex-shrink-0 d-flex gap-1 align-self-stretch align-self-md-start justify-content-end">
				{{{ if loggedIn }}}
				{{{ if !isSelf }}}
				<a component="account/unfollow" href="#" class="btn btn-info flex-fill{{{ if !isFollowing }}} hide{{{ end }}}">[[user:unfollow]]</a>
				<a component="account/follow" href="#" class="btn btn-primary flex-fill{{{ if isFollowing }}} hide{{{ end }}}">[[user:follow]]</a>
				{{{ end }}}
				{{{ end }}}

				{{{ if (loggedIn && (!isSelf && (!banned && !config.disableChat))) }}}
				<div class="btn-group flex-fill">
					<a {{{ if hasPrivateChat }}}component="account/chat"{{{ else }}}component="account/new-chat"{{{ end }}} href="#" class="btn btn-light" role="button">[[user:chat]]</a>
					{{{ if hasPrivateChat}}}
					<button type="button" class="btn btn-light dropdown-toggle flex-0" data-bs-toggle="dropdown">
						<i class="fa fa-caret-down"></i>
					</button>
					<ul class="dropdown-menu dropdown-menu-end p-1 text-sm" role="menu">
						<li><a class="dropdown-item rounded-1" href="#" component="account/new-chat">[[user:new-chat-with, {username}]]</a></li>
					</ul>
					{{{ end }}}
				</div>
				{{{ end }}}
				{{{ if !isSelf }}}
				{{{ if (isAdmin || (canBan || canMute ))}}}
				<!-- IMPORT partials/account/admin-menu.tpl -->
				{{{ end }}}
				{{{ end }}}
			</div>
		</div>
	</div>

	<div class="d-flex flex-column flex-md-row">
		<!-- IMPORT partials/account/sidebar-left.tpl -->
		<div class="account-content flex-grow-1 ps-md-2 ps-lg-3 ps-xl-4" style="min-width: 0;">

{{{ if posts.user.selectedGroups.length }}}
  {{{ each posts.user.selectedGroups }}}
    post-{posts.user.selectedGroups.slug}
  {{{ end }}}
{{{ end }}}

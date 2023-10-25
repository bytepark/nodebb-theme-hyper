<div class="row account-menu">
	<div class="col--12">
		<ul class="nav nav-pills float-end">
			<li>
				<a href="{config.relative_path}/user/{userslug}" class="d-inline-block" id="profile">[[user:profile]]</a>
			</li>
			<!-- IF showHidden -->
			<li><a href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a></li>
			<li><a href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a></li>
			<!-- ENDIF showHidden -->
			<li class="dropdown bottom-sheet">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
			      [[user:more]] <span class="caret"></span>
			    </a>
				<ul class="dropdown-menu dropdown-menu-end">
					<!-- IF loggedIn -->
					<!-- IF !isSelf -->
					<!-- IF !banned -->
					<!-- IF !config.disableChat -->
					<li><a class="dropdown-item" component="account/chat" href="#">[[user:chat_with, {username}]]</a></li>
					<!-- ENDIF !config.disableChat -->

					<li><a class="dropdown-item" component="account/flag" href="#">[[user:flag-profile]]</a></li>
					<li>
						<a class="dropdown-item" component="account/block" href="#"><!-- IF !../isBlocked -->[[user:block_user]]<!-- ELSE -->[[user:unblock_user]]<!-- END --></a>
					</li>
					<li class="dropdown-devider"></li>
					<!-- ENDIF !banned -->
					<!-- ENDIF !isSelf -->
					<!-- ENDIF loggedIn -->


					<!-- IF !isSelf -->
					<!-- IF canBan -->
					<li class="<!-- IF banned -->hide<!-- ENDIF banned -->">
						<a class="dropdown-item" component="account/ban" href="#">[[user:ban_account]]</a>
					</li>
					<li class="<!-- IF !banned -->hide<!-- ENDIF !banned -->">
						<a class="dropdown-item" component="account/unban" href="#">[[user:unban_account]]</a>
					</li>
					<!-- ENDIF canBan -->
					<!-- IF isAdmin -->
					<li>
						<a class="dropdown-item" component="account/delete-account" href="#" class="">[[user:delete_account_as_admin]]</a>
						<a class="dropdown-item" component="account/delete-content" href="#" class="">[[user:delete_content]]</a>
						<a class="dropdown-item" component="account/delete-all" href="#" class="">[[user:delete_all]]</a>
					</li>
					<!-- ENDIF isAdmin -->
					<li class="dropdown-devider"></li>
					<!-- ENDIF !isSelf -->


					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/following">[[user:following]]</a></li>
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/followers">[[user:followers]]</a></li>
					<!-- IF showHidden -->
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/blocks">[[user:blocks]]</a></li>
					<!-- ENDIF showHidden -->
					<li class="dropdown-devider"></li>
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/topics">[[global:topics]]</a></li>
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/posts">[[global:posts]]</a></li>
					<!-- IF !reputation:disabled -->
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/best">[[global:best]]</a></li>
					<!-- ENDIF !reputation:disabled -->
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/groups">[[global:header.groups]]</a></li>

					<!-- IF showHidden -->
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/bookmarks">[[user:bookmarks]]</a></li>
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/watched">[[user:watched]]</a></li>
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/ignored">[[user:ignored]]</a></li>
					<!-- IF !reputation:disabled -->
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/upvoted">[[global:upvoted]]</a></li>
					<!-- IF !downvote:disabled -->
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/downvoted">[[global:downvoted]]</a></li>
					<!-- ENDIF !downvote:disabled -->
					<!-- ENDIF !reputation:disabled -->
					<li><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/uploads">[[global:uploads]]</a></li>
					<!-- ENDIF showHidden -->

					<!-- BEGIN profile_links -->
					<!-- IF @first -->
					<li class="dropdown-devider"></li>
					<!-- ENDIF @first -->
					<li id="{profile_links.id}" class="plugin-link <!-- IF profile_links.public -->public<!-- ELSE -->private<!-- ENDIF profile_links.public -->"><a class="dropdown-item" href="{config.relative_path}/user/{userslug}/{profile_links.route}"><!-- IF profile_links.icon --><i class="fa fa-fw {profile_links.icon}"></i> <!-- ENDIF profile_links.icon -->{profile_links.name}</a></li>
					<!-- END profile_links -->
				</ul>
			</li>
		</ul>
	</div>
</div>

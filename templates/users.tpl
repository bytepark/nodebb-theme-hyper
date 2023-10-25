<div class="users">

	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="row">
		<div class="col-lg-6">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<div class="col--3 float-end">
			<!-- IF showInviteButton -->
			<button component="user/invite" class="btn btn-success"><i class="fa fa-users"></i> [[users:invite]]</button>
			<!-- ENDIF showInviteButton -->
		</div>
		<!-- IF displayUserSearch -->
		<div class="col-lg-3 col--9">
			<div class="search">
				<div class="input-group">
					<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
					<span class="input-group-addon">
						<i component="user/search/icon" class="fa fa-search"></i>
					</span>
				</div>
			</div>
		</div>
		<!-- ENDIF displayUserSearch -->
	</div>

	<div class="row">
		<div class="col--12">
			<ul id="users-container" class="users-container">
				<!-- IMPORT partials/users_list.tpl -->
				<!-- IF anonymousUserCount -->
				<li class="users-box anon-user">
					<div class="user-icon">G</div>
					<br/>
					<div class="user-info">
						<span id="online_anon_count">{anonymousUserCount}</span>
						<span>[[global:guests]]</span>
					</div>
				</li>
				<!-- ENDIF anonymousUserCount -->
			</ul>
		</div>
	</div>

	<!-- IMPORT partials/paginator.tpl -->
</div>

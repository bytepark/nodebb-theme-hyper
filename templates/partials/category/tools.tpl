<!-- IF privileges.editable -->
<div class="btn-group thread-tools bottom-sheet">
	<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">
		<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:thread_tools.title]]</span>
		<span class="visible-xs-inline"><i class="fa fa-fw fa-gear"></i></span>
		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu float-end">
		<li>
			<a class="dropdown-item" component="topic/mark-unread-for-all" href="#">
				<i class="fa fa-fw fa-inbox"></i> [[topic:thread_tools.markAsUnreadForAll]]
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="topic/pin" href="#">
				<i class="fa fa-fw fa-thumb-tack"></i> [[topic:thread_tools.pin]]
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="topic/unpin" href="#" class="hidden">
				<i class="fa fa-fw fa-thumb-tack fa-rotate-90"></i> [[topic:thread_tools.unpin]]
			</a>
		</li>

		<li>
			<a class="dropdown-item" component="topic/lock" href="#">
				<i class="fa fa-fw fa-lock"></i> [[topic:thread_tools.lock]]
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="topic/unlock" href="#" class="hidden">
				<i class="fa fa-fw fa-unlock"></i> [[topic:thread_tools.unlock]]
			</a>
		</li>

		<li class="dropdown-devider"></li>

		<li>
			<a class="dropdown-item" component="topic/move" href="#">
				<i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move]]
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="topic/move-all" href="#">
				<i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move_all]]
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="topic/merge" href="#">
				<i class="fa fa-fw fa-code-fork"></i> [[topic:thread_tools.merge]]
			</a>
		</li>

		<li class="dropdown-devider"></li>

		<li>
			<a class="dropdown-item" component="topic/delete" href="#">
				<i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete]]
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="topic/restore" href="#" class="hidden">
				<i class="fa fa-fw fa-history"></i> [[topic:thread_tools.restore]]
			</a>
		</li>
		<li>
			<a class="dropdown-item" component="topic/purge" href="#" class="hidden">
				<i class="fa fa-fw fa-eraser"></i> [[topic:thread_tools.purge]]
			</a>
		</li>

		<!-- BEGIN thread_tools -->
		<li>
			<a class="dropdown-item" href="#" class="{thread_tools.class}"><i class="fa fa-fw {thread_tools.icon}"></i> {thread_tools.title}</a>
		</li>
		<!-- END thread_tools -->
	</ul>
</div>
<!-- ENDIF privileges.editable -->

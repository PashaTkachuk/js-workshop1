app.factory 'Tasks',['$resource', ($resource)->
	$resource 'api/tasks'
]
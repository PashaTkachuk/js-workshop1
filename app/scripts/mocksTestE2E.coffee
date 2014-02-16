'use strict'

app.run ($httpBackend)->
	tasks = 
    list: [
      'build an angular app'
      'AngularJS'
    ]
	$httpBackend.whenGET('api/tasks').respond(tasks)
	$httpBackend.whenGET(/^views/).passThrough()

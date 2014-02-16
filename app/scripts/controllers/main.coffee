'use strict'

app.controller 'MainCtrl', ['$scope', 'tasks', ($scope, tasks)->
    $scope.todoList = tasks.list
    
    $scope.add= ->
    	$scope.todoList.push $scope.newScope
]

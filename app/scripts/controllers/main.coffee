'use strict'

app.controller 'MainCtrl', ['$scope', ($scope) ->
    $scope.todoList = [
      'build an angular app'
      'AngularJS'
    ]

    $scope.add= ->
    	$scope.todoList.push $scope.newScope
]

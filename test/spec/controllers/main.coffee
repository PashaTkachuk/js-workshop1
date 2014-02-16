'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'devApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
      tasks: 
        list: [
          'build an angular app'
          'AngularJS'
        ]
    }
  
  it 'todoList to be defined', ->
    expect(scope.todoList).toBeDefined()

  it 'should attach a list of todoList to the scope', ->
    expect(scope.todoList.length).toBe 2
  
  it 'should add new task', ->
    scope.newScope= 'Bower'
    scope.add()
    expect(scope.todoList[2]).toBe scope.newScope

  it 'should have cool task with index 1', ->
    expect(scope.todoList[0]).toBe "build an angular app"

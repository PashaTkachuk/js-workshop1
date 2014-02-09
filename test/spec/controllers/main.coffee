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
    }
  
  it 'todo list toBeDefined', ->
    expect(scope.todoList).toBeDefined()
  


  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.todoList.length).toBe 2
  
  it 'should attach a list of todoList to the scope', ->
    scope.newElem= 'Bower'
    score.add()
    expect(scope.todoList[2]).toBe scope.newElem


  it 'should have cool task with index 1', ->
    expect(todoList[1]).toBe "build an angular app"

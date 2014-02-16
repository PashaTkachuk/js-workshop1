'use strict'

window.app = angular.module('devApp', [
  'ngMockE2E',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        resolve: 
          tasks: ['Tasks', (Tasks)->
            Tasks.get().$promise
          ]
      .otherwise
        redirectTo: '/'

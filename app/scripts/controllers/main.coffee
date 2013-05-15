"use strict"

class MainCtrl

  constructor: (@$scope) ->
    @$scope.sayHello = @sayHello
    @setAwesomeThings()

  setAwesomeThings: =>
    @$scope.awesomeThings = ["HTML5 Boilerplate", "AngularJS", "Karma"]

  sayHello: =>
    @$scope.greeting = "Hello World!"

MainCtrl.$inject = ["$scope"]
angular.module("dashboardApp").controller "MainCtrl", MainCtrl

#angular.module("dashboardApp").controller "MainCtrl", ($scope) ->
  #$scope.awesomeThings = ["HTML5 Boilerplate", "AngularJS", "Karma"]
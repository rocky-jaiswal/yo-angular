'use strict'

angular.module("dashboardApp", []).config ($routeProvider) ->
  $routeProvider
  .when("/", {templateUrl: "views/main.html", controller: "MainCtrl"})
  .otherwise({redirectTo: "/"})

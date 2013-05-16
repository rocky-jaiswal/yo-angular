'use strict'

angular.module("dashboardApp", ["dashboardApp.service"]).config ($routeProvider) ->
  $routeProvider
  .when("/", {templateUrl: "views/login.html", controller: "LoginCtrl"})
  .when("/main", {templateUrl: "views/main.html", controller: "MainCtrl"})
  .when("/accounts/:accountNo/:page", {templateUrl: "views/main.html", controller: "NavigationCtrl"})
  .otherwise({redirectTo: "/"})

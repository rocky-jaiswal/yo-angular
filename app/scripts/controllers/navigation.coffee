"use strict"

class NavigationCtrl

  constructor: (@$scope, @$location, @$routeParams, @storageService) ->
    if @storageService.get("token")
      @$scope.accountNo = $routeParams.accountNo
      @$scope.page = $routeParams.page
      @$scope.logout = @logout
    else
      @$location.url("login")

  logout: =>
    @storageService.clear()
    @$location.url("/")

NavigationCtrl.$inject = ["$scope", "$location", "$routeParams", "storageService"]
angular.module("dashboardApp").controller "NavigationCtrl", NavigationCtrl
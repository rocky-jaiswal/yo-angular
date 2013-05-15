"use strict"

class StorageService

  store: (key, value) ->
    localStorage.setItem(key, value)

  get: (key) ->
    localStorage.getItem key


angular.module "dashboardApp.service", [], ($provide) ->
  $provide.factory "storageService", -> new StorageService()

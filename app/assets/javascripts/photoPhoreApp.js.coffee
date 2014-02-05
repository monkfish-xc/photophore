photoPhoreApp = angular.module('photoPhore', ['ngResource']);

photoPhoreApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken
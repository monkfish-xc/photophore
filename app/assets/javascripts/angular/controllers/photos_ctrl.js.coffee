App.controller 'PhotosCtrl', ['$scope', 'Photo', ($scope, Photo) ->
  $scope.photos = Photo.query()
]
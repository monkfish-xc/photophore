'use strict';

function MainController($scope, photoSearchService) {

	$scope.photos = [];

	$scope.picSize = '500';

	$scope.setPicSize = function(size) {
		$scope.picSize = size;
		console.log($scope.picSize);
	}

	$scope.getPhotos = function() {

		$scope.photos = [];

		var accountHash = '123';
		photoSearchService.findPhotos(accountHash, function(photos) {
			$scope.photos = photos;
		});
	};

}
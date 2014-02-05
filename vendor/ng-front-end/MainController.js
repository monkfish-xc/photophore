'use strict';

function MainController($scope, photoSearchService) {

	$scope.photos = [];

	$scope.userUrl = '';

	$scope.picSize = '500';

	$scope.setPicSize = function(size) {
		$scope.picSize = size;
	}

	$scope.getPhotos = function() {

		$scope.photos = [];

		var accountHash = '123';
		photoSearchService.findPhotos(accountHash, function(photos) {
			$scope.photos = photos;
		});
	};

}
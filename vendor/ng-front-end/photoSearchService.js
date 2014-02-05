angular.module('photoPhore').factory('photoSearchService', function() {

	'use strict';

	var service = {};

	/*
		@param accountHash - The account has to search for.
		@param callback - A function to call when the search is complete.
											The function will be passed a single argument which
											is an array of photos matching the account hash.
	*/

	service.findPhotos = function(accountHash, callback) {

		var matches = [];

		if (accountHash === '123') {
			matches = [
			{
				publicUrl: 'img/glass-300.png'
			},
			{
				publicUrl: 'img/dam-300.png'
			},
			{
				publicUrl: 'img/dam-300.png'
			},
			{
				publicUrl: 'img/dam-300.png'
			},
			{
				publicUrl: 'img/glass-300.png'
			},
			{
				publicUrl: 'img/glass-300.png'
			}];
		} 

		callback(matches);
	};

	return service;

});
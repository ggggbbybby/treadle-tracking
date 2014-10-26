(function() {
  this.draft_preview = angular.module('draftPreview', ['ngRoute', 'ngResource']);

  this.draft_preview.config([
    '$routeProvider', function($routeProvider) {
      return $routeProvider.when('/drafts', {
        templateUrl: '../templates/drafts/index.html',
        controller: 'DraftIndexController'
      }).when('/drafts/:id', {
        templateUrl: '../templates/drafts/show.html',
        controller: 'DraftShowController'
      }).otherwise({
        templateUrl: '../templates/drafts/index.html',
        controller: 'DraftIndexController'
      });
    }
  ]);


  this.draft_preview.factory('Draft', 
  	function($resource) {
		return $resource('/api/drafts/:id')
  });

}).call(this);
@draft_preview = angular.module('draftPreview', ['ngRoute'])

@draft_preview.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
  when('/drafts', {
  	templateUrl: '../templates/drafts/index.html',
  	controller: 'DraftIndexController'
  }).
  when('/drafts/:id', {
    templateUrl: '../templates/drafts/show.html',
    controller: 'DraftShowController'
  }).
    otherwise({
      templateUrl: '../templates/home.html'
    }) 
])
@draft_preview = angular.module('draftPreview', ['ngRoute'])

@draft_preview.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
  when('/drafts', {
  	templateUrl: '../templates/drafts/index.html',
  	controller: 'DraftController'
  }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'DraftController'
    }) 
])
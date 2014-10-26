# app/assets/javascripts/angular/controllers/HomeCtrl.js.coffee

@draft_preview.controller 'DraftIndexController', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  
  $scope.drafts = []
  
  $http.get('./drafts.json').success((data) ->
    $scope.drafts = data
  )

  $scope.viewDraft = (id) ->
    $location.url "/drafts/#{id}"
]




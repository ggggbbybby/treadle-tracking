# app/assets/javascripts/angular/controllers/HomeCtrl.js.coffee

@draft_preview.controller 'DraftController', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.drafts = []
  $http.get('./drafts.json').success((data) ->
    $scope.drafts = data
  )
]

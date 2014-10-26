@draft_preview.controller 'DraftShowController', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./drafts/#{$routeParams.id}.json").success((data) ->
    $scope.draft = data.draft
  )

  $scope.view_threading_row = (shafts, thread) -> 
  	((thread == shaft ? 'X' : '.')) for shaft in [1 .. shafts]
]
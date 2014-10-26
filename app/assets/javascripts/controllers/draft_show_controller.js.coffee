@draft_preview.controller 'DraftShowController', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./drafts/#{$routeParams.id}.json").success((data) ->
    $scope.draft = data
  )
]
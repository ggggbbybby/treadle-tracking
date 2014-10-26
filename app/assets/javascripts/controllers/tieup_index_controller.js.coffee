@draft_preview.controller 'TieupIndexController', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  
  $scope.tieups = []
  
  $http.get('./tieups.json').success((data) ->
    $scope.tieups = data
  )

  $scope.viewTieup = (id) ->
    $location.url "/tieups/#{id}"
]





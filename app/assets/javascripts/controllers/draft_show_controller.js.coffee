@draft_preview.controller 'DraftShowController', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
	$http.get("./drafts/#{$routeParams.id}.json").success((data) ->
		$scope.draft = data.draft
		# weaving reads right to left, bottom to top, so reverse the threading and tieup in order to display it correctly
		#$scope.draft.threading.sequence = $scope.draft.threading.sequence.reverse()
		$
	)

	$scope.threading_repeats = 10
	$scope.treadling_repeats = 10

	$scope.range = (length) ->
		return [1..length]

	$scope.view_threading_row = (shafts, thread, repeats=1) -> 
		result = ''
		(result += (if thread%shafts == shaft%shafts then 'X' else '.')) for shaft in [1.. shafts*repeats]
		return result

	$scope.view_tieup_row = (treadle_count, tie) -> 
		result = ''
		(result += (if treadle_index in tie.treadles then 'X' else '.')) for treadle_index in [1 .. treadle_count]
		return result

	$scope.view_treadling_row = (treadles, stomp) -> 
		result = ''
		(result += (if stomp == treadle then 'X' else '.')) for treadle in [1 .. treadles]
		return result

	$scope.view_drawdown_row = (stomp, draft, repeats) -> 
		result = ''
		(result += '.' for shaft in [1 .. draft.shafts*repeats] )
		return result


	# implict return, because reasons.
	$scope
]
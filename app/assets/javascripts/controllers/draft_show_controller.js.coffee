@draft_preview.controller 'DraftShowController', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
	$http.get("./drafts/#{$routeParams.id}.json").success((data) ->
		$scope.draft = data.draft
		# weaving reads right to left, bottom to top, so reverse the threading and tieup in order to display it correctly
		#$scope.draft.threading.sequence = $scope.draft.threading.sequence.reverse()
		$
	)

	$scope.threading_repeats = 10
	$scope.treadling_repeats = 5

	$scope.range = (length) ->
		return [1..length]

	$scope.view_threading_row = (shafts, thread, repeats=1) -> 
		result = ''
		(result += (if thread%shafts == shaft%shafts then (if shaft%shafts == 0 then shafts else shaft%shafts) else '\u00A0')) for shaft in [shafts*repeats .. 1]
		return result

	$scope.view_tieup_row = (treadle_count, tie) -> 
		result = ''
		(result += (if treadle_index in tie.
			treadles then 'O' else '\u00A0')) for treadle_index in [1 .. treadle_count]
		return result

	$scope.view_treadling_row = (treadles, stomp) -> 
		result = ''
		(result += (if stomp == treadle then '1' else '\u00A0')) for treadle in [1 .. treadles]
		return result

	$scope.view_drawdown_row = (stomp, draft, repeats) -> 

		result = ''
		ties_lifted = draft.tieup.sequence.filter (tie) ->
			stomp in tie.treadles
		shafts_lifted = ties_lifted.map (tie) -> 
			tie.shaft%draft.shafts

		(result += (if thread%draft.shafts in shafts_lifted then '|' else '—') for thread in [draft.threading.sequence.length*repeats .. 1] )
		return result


	# implict return, because reasons.
	$scope
]
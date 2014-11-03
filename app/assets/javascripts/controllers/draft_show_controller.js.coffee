@draft_preview.controller 'DraftShowController', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
	$http.get("./drafts/#{$routeParams.id}.json").success((data) ->
		$scope.draft = data.draft
		# weaving reads right to left, bottom to top, so reverse the threading and tieup in order to display it correctly
		#$scope.draft.threading.sequence = $scope.draft.threading.sequence.reverse()
		$
	)

	$scope.threading_repeats = 1
	$scope.treadling_repeats = 5

	$scope.range = (length) ->
		return [1..length]

	$scope.view_threading_row = (threading, shaft, repeats=1) -> 
		result = ''
		threading_width = threading.length * repeats
		(result += (if shaft == parseInt(threading[(thread % threading.length)]) then shaft else '\u00A0')) for thread in [threading_width-1 .. 0]
		return result

	$scope.view_tieup_row = (treadle_count, tie) -> 
		result = ''
		(result += (if treadle_index in tie.
			treadles then 'O' else '\u00A0')) for treadle_index in [1 .. treadle_count]
		return result

	$scope.view_treadling_row = (treadles, stomp) -> 
		console.log stomp
		result = ''
		(result += (if parseInt(stomp) == treadle then '1' else '\u00A0')) for treadle in [1 .. treadles]
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
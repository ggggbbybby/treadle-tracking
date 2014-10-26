# spec/javascripts/controllers_spec.js.coffee

describe "Draft controllers", -> 
	beforeEach module("draftPreview")

	describe "DraftIndexController", -> 
		it  "should set drafts to an empty array", inject(($controller) -> 
			scope = {}
			ctrl = $controller("DraftIndexController", 
				$scope: scope
			)
			expect(scope.drafts.length).toBe 0
		)	

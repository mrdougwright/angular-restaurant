# tutorial states to run this:
# karma start spec/javascripts/restauranteur.conf.js
# but that file has not been created. Running this file doesn't work either.

# spec/javascripts/controllers_spec.js.coffee

describe "Restauranteur controllers", ->
  beforeEach module("restauranteur")

  describe "RestaurantIndexCtrl", ->
    it "should set restaurants to an empty array", inject(($controller) ->
      scope = {}
      ctrl = $controller("RestaurantIndexCtrl",
        $scope: scope
      )
      expect(scope.restaurants.length).toBe 0
    )
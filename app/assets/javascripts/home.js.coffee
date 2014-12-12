app =  angular.module("Rate", ["ngResource"])

app.factory "Currency", ["$resource", ($resource) ->
  $resource("/rates.:format", {format: 'json'})
]

app.controller 'RateCtrl', ["$scope", "Currency", ($scope, Currency) ->
  $scope.currencies = Currency.query()
  $scope.fromCurrency = $scope.currencies[147]
  $scope.toCurrency = $scope.currencies[61]

  $scope.calculate = ->
    total = $scope.toCurrency.val * $scope.fromCurrency.val * $scope.newRate.number
    $scope.newRate.result = total
]
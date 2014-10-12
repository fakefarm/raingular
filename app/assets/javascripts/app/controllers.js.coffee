app = angular.module "bandt"

app.controller "bandtController", ($scope) ->
  $scope.showBill = false
  $scope.showTed = false
  $scope.noPeople = true
  $scope.showResults = false
  $scope.winner = false

  $scope.toggleBill = ->
    $scope.showBill = true
    $scope.showTed = false
    $scope.noPeople = false
    $scope.billScore.points += 1
    $scope.leader()
    $scope.winner = false
    return

  $scope.toggleTed = ->
    $scope.showTed = true
    $scope.showBill = false
    $scope.noPeople = false
    $scope.tedScore.points += 1
    $scope.leader()
    $scope.winner = false
    return

  $scope.endMatch = ->
    $scope.showBill = false
    $scope.showTed = false
    $scope.noPeople = true
    $scope.showResults = true
    $scope.winner = $scope.leader()
    $scope.billScore.points = 0
    $scope.tedScore.points = 0
    return

  $scope.leader = ->
    if $scope.billScore.points > $scope.tedScore.points
      "bill"
    else if $scope.tedScore.points > $scope.billScore.points
      "ted"
    else
      "booth"

  $scope.billScore = points: 0
  $scope.tedScore = points: 0
  $scope.newGame = ->
    if $scope.billScore.points is 0 and $scope.tedScore.points is 0
      false
    else
      true

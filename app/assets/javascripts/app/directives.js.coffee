app = angular.module("bandt")
app.directive "winner", ->
  restrict: "EA"
  controller: "bandtController"
  replace: true
  templateUrl: "winner.html"

app.directive "score", ->
  restrict: "EA"
  controller: "bandtController"
  replace: true
  templateUrl: "score_board.html"

app.directive "buttons", ->
  replace: true
  restrict: "EA"
  controller: "bandtController"
  templateUrl: "buttons.html"

app.directive "models", ->
  restrict: "EA"
  controller: "bandtController"
  replace: true
  templateUrl: "models.html"

app.directive "game", ->
  restrict: "EA"
  controller: "bandtController"
  replace: true
  transclude: true
  templateUrl: "game.html"

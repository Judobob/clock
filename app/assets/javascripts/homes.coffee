# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
receta = angular.module('receta',[
])

angular.module('demo', [ 'ngVidBg' ]).controller 'mainCtrl', [
  '$scope'
  ($scope) ->
    $scope.resources = [
      'http://techslides.com/demos/sample-videos/small.webm'
      '*.ogv'
      '*.mp4'
      '*.swf'
    ]
    $scope.poster = 'http://placehold.it/2000&text=you%20may%20want%20to%20have%20a%20poster'
    $scope.fullScreen = true
    $scope.muted = true
    $scope.zIndex = '-22'
    $scope.playInfo = {}
    $scope.pausePlay = true
    return
]
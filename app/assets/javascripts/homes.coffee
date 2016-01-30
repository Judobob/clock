# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
receta = angular.module('receta',[
])
#define slider controller
slider = angular.module('slider', [ 'pageslide-directive' ])


slider.controller 'pageslideCtrl', [
  '$scope'
  ($scope) ->
    $scope.checked = false
    # This will be binded using the ps-open attribute

    $scope.toggle = ->
      $scope.checked = !$scope.checked

]

video = angular.module('video', [ 'ngVidBg' ])

video.controller 'mainCtrl', [
  '$scope'
  ($scope) ->
    $scope.resources = [
      '/assets/1.webm'
      '*.ogv'
      '*.mp4'
      '*.swf'
    ]
    $scope.poster = ''
    $scope.fullScreen = true
    $scope.muted = true
    $scope.zIndex = '-22'
    $scope.playInfo = {}
    $scope.currentResourceIdx = 0
    $scope.pausePlay = true
    return
]

angular.module('demo',['slider','video'])

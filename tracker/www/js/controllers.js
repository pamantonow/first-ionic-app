angular.module('starter.controllers', ['starter.services'])

.controller('AppCtrl', function($scope, $ionicModal, $timeout) {

  // With the new view caching in Ionic, Controllers are only called
  // when they are recreated or on app start, instead of every page change.
  // To listen for when this page is active (for example, to refresh data),
  // listen for the $ionicView.enter event:
  //$scope.$on('$ionicView.enter', function(e) {
  //});

  // Form data for the login modal
  $scope.loginData = {};

  // Create the login modal that we will use later
  $ionicModal.fromTemplateUrl('templates/login.html', {
    scope: $scope
  }).then(function(modal) {
    $scope.modal = modal;
  });

  // Triggered in the login modal to close it
  $scope.closeLogin = function() {
    $scope.modal.hide();
  };

  // Open the login modal
  $scope.login = function() {
    $scope.modal.show();
  };

  // Perform the login action when the user submits the login form
  $scope.doLogin = function() {
    console.log('Doing login', $scope.loginData);

    // Simulate a login delay. Remove this and replace with your login
    // code if using a login system
    $timeout(function() {
      $scope.closeLogin();
    }, 1000);
  };
})

.controller('TracksCtrl', function($scope, Track) {
    $scope.tracks = Track.query();
})

.controller('TrackCtrl', function($scope, $stateParams, Track, Entry) {
  var id = $stateParams.trackId;
  // var url = 'http://localhost:3000/api/sessions/' + $stateParams.sessionId;

  // $http.get(url)
  //   .success(function(session) {
  //     $scope.session = session;//Session.query();
  //   })
  //   .error(function(data) {
  //     console.log('something went wrong');
  //   })

  // Session.get({ id: 1 }, function(data) {
  //   $scope.session = data;
  // });

    $scope.entries = Entry.query({trackId: id})//get({trackId: id});//[{note: "ok"},{note: "my first entry"}]
    $scope.track = Track.get({trackId: id});

    Track.delete({ id: id });
});

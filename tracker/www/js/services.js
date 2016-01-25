angular.module('starter.services', ['ngResource'])

.factory('Track', function ($resource) {
    return $resource('http://localhost:3000/api/tracks/:trackId');
})

.factory('Entry', function ($resource) {
    return $resource('http://localhost:3000/api/tracks/:trackId/entries/:entryId');
});
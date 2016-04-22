
angular.module("MDKApp").controller("UserManagementCtrl", ["$scope", "$rootScope", "$state", "$q", "apiService", function ($scope, $rootScope, $state, $q, apiService) {


    var userManagementLoaded = $q.defer();

    $scope.allRoles = [
        { text: 'Admin', value: 'ADMIN' },
        { text: 'Accountant', value: 'ACCOUNTANT' }
    ];

    setTimeout(function () {
        $rootScope.loading.then(function () {
            userManagementLoaded.resolve();
        }, function () {
            userManagementLoaded.reject();
        });
    }, 0);

}]);
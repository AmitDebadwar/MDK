
angular.module("MDKApp").controller("DashboardCtrl", ["$scope","$rootScope", "$state", "apiService", function ($scope,$rootScope, $state, apiService) {


    var init = function () {
$rootScope.loading=apiService.getAllPersonsInfo().then(getAllPersonsInfoSuccess).catch();
    };

    var getAllPersonsInfoSuccess = function (data) {
        console.log(data);

        if (data && data.data && data.data.getAllPersonsInfoResult && data.data.getAllPersonsInfoResult.allRecords) {
            
            $scope.businessLines = data.data.getAllPersonsInfoResult.allRecords;
            console.log($scope.businessLines);
        }

    };



    init();
}]);
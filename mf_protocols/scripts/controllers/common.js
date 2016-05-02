// main controller
var app = angular.module('myApp', []) //, ['mwl.confirm']
        .controller('myController', function ($scope, $http, $filter, $rootScope, $sce) {

            // for external controllers
            app.expandControllerFilter($scope, $sce);

            $scope.pages = pages;
            $scope.selectedPage = $scope.pages[0];

            // load 
            angular.element(document).ready(function () {
                // if required
            });
           
            $scope.loadPageEvents = function () {
               
                switch ($scope.selectedPage.file) {
                    case "name":
                        
                        break;
                    case "new":

                        break;
                    case "protocols":
                        
                        break;
                }
            }


            $scope.showPage = function (f) {
                //Enumerable.From($scope.userProducts).Where(function (s) { return s.Selected }).Select("$.Id").ToArray();
                var p = Enumerable.From($scope.pages)
                    .Where(function (o) {
                        return o.file == f;
                    }).FirstOrDefault();
                if (p != null) $scope.selectedPage = p;
            }

           
            /////////////////////////////////////////////////////////
            /// utils
            $scope.safeApply = function (fn) {
                var phase = this.$root.$$phase;
                if (phase == '$apply' || phase == '$digest') {
                    if (fn && (typeof (fn) === 'function')) {
                        fn();
                    }
                } else {
                    this.$apply(fn);
                }
            };

        });



// prevent submit
window.app.directive('a', function () {
    return {
        restrict: 'E',
        link: function (scope, elem, attrs) {
            if (attrs.ngClick || attrs.href === '' || attrs.href === '#') {
                elem.on('click', function (e) {
                    e.preventDefault();
                });
            }
        }
    };
});

var myApp = angular.module('myApp', []);

myApp.controller('myCtrl', function ($scope, $http) {
    $scope.message = "";
    $scope.error_mesage = "";

    //get all product
    $scope.getAllproduct = function () {
        $http({
            mehtod: "GET",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/products'
        }).then(
                function (response) {
                    $scope.products = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    $scope.getAllproduct();


    //save product
    $scope.newProduct = {};
    $scope.saveProduct = function () {
        $http({
            method: "POST",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/products',
            data: angular.toJson($scope.newProduct),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Product Saved Successfully";
                    $scope.getAllproduct();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Select product by click
    
    $scope.clickedProduct = {};
    $scope.selectProduct = function(product){
        $scope.message = "Product Updated Successfully";
        $scope.clickedProduct = product;
    };
    
    //Update Product
    $scope.updateProduct = function () {
        $http({
            method: "PUT",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/products',
            data: angular.toJson($scope.clickedProduct),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Product Update Successfully";
                    $scope.getAllproduct();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Delete Product
    $scope.deleteProduct = function () {
        $http({
            method: "DELETE",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/products/'+$scope.clickedProduct.pid,
            data: angular.toJson($scope.newProduct),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Product Deleted Successfully";
                    $scope.getAllproduct();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    //Clear message
    
    $scope.messageClose = function(){
        $scope.message = "";
    $scope.error_mesage = "";
    }
    
    
     //get all DrugCompany
    $scope.getAllDrugCompany = function () {
        $http({
            mehtod: "GET",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugCompanys'
        }).then(
                function (response) {
                    $scope.drugCompanys = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    $scope.getAllDrugCompany();


    //save DrugCompany
    $scope.newDrugCompany = {};
    $scope.saveDrugCompany = function () {
        $http({
            method: "POST",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugCompanys',
            data: angular.toJson($scope.newDrugCompany),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "DrugCompany Saved Successfully";
                    $scope.getAllDrugCompany();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Select DrugCompany by click
    
    $scope.clickedDrugCompany = {};
    $scope.selectDrugCompany = function(drug_company){
        $scope.message = "DrugCompany Updated Successfully";
        $scope.clickedDrugCompany = drug_company;
    };
    
    //Update Product
    $scope.updateDrugCompany = function () {
        $http({
            method: "PUT",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugCompanys',
            data: angular.toJson($scope.clickedDrugCompany),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "DrugCompany Update Successfully";
                    $scope.getAllDrugCompany();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Delete DrugCompany
    $scope.deleteDrugCompany = function () {
        $http({
            method: "DELETE",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugCompanys/'+$scope.clickedDrugCompany.dc_id,
            data: angular.toJson($scope.newDrugCompany),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "DrugCompany Deleted Successfully";
                    $scope.getAllDrugCompany();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    //Clear message
    
    $scope.messageClose = function(){
        $scope.message = "";
    $scope.error_mesage = "";
    }


 //get all DrugGroupName
    $scope.getAllDrugGroupName = function () {
        $http({
            mehtod: "GET",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugGroupNames'
        }).then(
                function (response) {
                    $scope.drugGroupNames = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    $scope.getAllDrugGroupName();


    //save DrugGroupName
    $scope.newDrugGroupName = {};
    $scope.saveDrugGroupName = function () {
        $http({
            method: "POST",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugGroupNames',
            data: angular.toJson($scope.newDrugGroupName),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "DrugGroupName Saved Successfully";
                    $scope.getAllDrugGroupName();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Select product by click
    
    $scope.clickedDrugGroupName = {};
    $scope.selectDrugGroupName = function(drugGroupName){
        $scope.message = "drugGroupName Updated Successfully";
        $scope.clickedDrugGroupName = drugGroupName;
    };
    
    //Update Product
    $scope.updateDrugGroupName = function () {
        $http({
            method: "PUT",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugGroupNames',
            data: angular.toJson($scope.clickedDrugGroupName),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "DrugGroupName Update Successfully";
                    $scope.getAllDrugGroupName();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Delete Product
    $scope.deleteDrugGroupName = function () {
        $http({
            method: "DELETE",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugGroupNames/'+$scope.clickedDrugGroupName.dg_id,
            data: angular.toJson($scope.newDrugGroupName),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "DrugGroupName Deleted Successfully";
                    $scope.getAllDrugGroupName();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    //Clear message
    
    $scope.messageClose = function(){
        $scope.message = "";
    $scope.error_mesage = "";
    }
    
    
    //get all DrugDetail
    $scope.getAllDrugDetail = function () {
        $http({
            mehtod: "GET",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugDetails'
        }).then(
                function (response) {
                    $scope.drugDetails = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    $scope.getAllDrugDetail();


    //save DrugDetail
    $scope.newDrugDetail = {};
    $scope.saveDrugDetail = function () {
        $http({
            method: "POST",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugDetails',
            data: angular.toJson($scope.newDrugDetail),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "DrugDetail Saved Successfully";
                    $scope.getAllDrugDetail();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Select DrugDetail by click
    
    $scope.clickedDrugDetail = {};
    $scope.selectDrugDetail = function(drugDetail){
        $scope.message = "DrugDetail Updated Successfully";
        $scope.clickedDrugDetail = drugDetail;
    };
    
    //BUY Drug
    $scope.buyDrug = function () {
        $http({
            method: "PUT",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugDetails',
            data: angular.toJson($scope.clickedDrugDetail),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Drug BUY Successfully";
                    $scope.getAllDrugDetail();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
     //SALE Drug
    $scope.saleDrug = function () {
        $http({
            method: "PUT",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugDetails/saleDrug',
            data: angular.toJson($scope.clickedDrugDetail),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "Drug SALE Successfully";
                    $scope.getAllDrugDetail();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Delete DrugDetail
    $scope.deleteDrugDetail = function () {
        $http({
            method: "DELETE",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/drugDetails/'+$scope.clickedDrugDetail.dd_id,
            data: angular.toJson($scope.newProduct),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "DrugDetail Deleted Successfully";
                    $scope.getAllDrugDetail();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    //Clear message
    
    $scope.messageClose = function(){
        $scope.message = "";
    $scope.error_mesage = "";
    }



//get all CompanyProduct
    $scope.getAllCompanyProduct = function () {
        $http({
            mehtod: "GET",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/companyProducts'
        }).then(
                function (response) {
                    $scope.companyProducts = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    $scope.getAllCompanyProduct();


    //save CompanyProduct
    $scope.newCompanyProduct = {};
    $scope.saveCompanyProduct = function () {
        console.log(angular.toJson($scope.newCompanyProduct));
        $http({
            method: "POST",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/companyProducts',
            data: angular.toJson($scope.newCompanyProduct),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "CompanyProduct Saved Successfully";
                    $scope.getAllCompanyProduct();
                    
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Select CompanyProduct by click
    
    $scope.clickedCompanyProduct = {};
    $scope.selectCompanyProduct = function(companyProduct){
        $scope.message = "CompanyProduct Updated Successfully";
        $scope.clickedCompanyProduct = companyProduct;
    };
    
    //Update CompanyProduct
    $scope.updateCompanyProduct = function () {
        $http({
            method: "PUT",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/companyProducts',
            data: angular.toJson($scope.clickedCompanyProduct),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "CompanyProduct Update Successfully";
                    $scope.getAllCompanyProduct();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };
    
    //Delete CompanyProduct
    $scope.deleteCompanyProduct = function () {
        $http({
            method: "DELETE",
            url: 'http://localhost:8080/Project_AngularJS_Rest/webresources/companyProducts/'+$scope.clickedCompanyProduct.cp_id,
            data: angular.toJson($scope.newCompanyProduct),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(
                function (response) {
                    $scope.message = "CompanyProduct Deleted Successfully";
                    $scope.getAllCompanyProduct();
                },
                function (reason) {
                    $scope.error_message = reason.data;
                }
        );
    };

    //Clear CompanyProduct message
    
    $scope.messageClose = function(){
        $scope.message = "";
    $scope.error_mesage = "";
    }


});
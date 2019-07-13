<%-- 
    Document   : index
    Created on : Apr 16, 2018, 10:31:49 PM
    Author     : zakir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/angular.js" type="text/javascript"></script>
        <script src="js/app.js" type="text/javascript"></script>
        <style type="text/css">
            @import "css/custom_css.css";

        </style>

    </head>
    <body ng-controller="myCtrl">
        <div class="container">
            <div class="row">
                <div class="header col-md-12">
                    <div class="image">
                        <img src="images/HomePage.jpg" alt="Norway" class="img">
                    </div>
                </div>
                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <ul class="nav navbar-nav">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="drugDetails.jsp">Drug Details</a></li>
                                    <li><a href="companyProduct.jsp">Company Product</a></li>
                                    <li><a href="drugGroupName.jsp">Drug Group Name</a></li>
                                    <li><a href="drugCompany.jsp">Drug Company</a></li>
                                    <li><a href="aboutus.jsp">About Us</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <!--<div class="content-area col-md-12">-->
                <!--<div class="row">-->
                <!--                        <div class="sidebar col-md-3">
                                            <ul class="">
                                                <li><a href="#">Link_1</a></li>
                                                <li><a href="#">Link_2</a></li>
                                                <li><a href="#">Link_3</a></li>
                                                <li><a href="#">Link_4</a></li>
                                                <li><a href="#">Link_5</a></li>
                                            </ul>
                                        </div>-->
                <div class="content col-md-12">
                    <button data-toggle="modal" data-target="#myModalSave" type="button" class="btn btn-success">Add New CompanyProduct</button>
                    Search Item : <input type="text" ng-model="searchBox" placeholder="Search.....">
                    <br><br>
                    <div class="alert alert-success alert-dismissible" ng-show="message">
                        <a href="#" class="close" ng-click="messageClose()">&times;</a>
                        <strong>Success!</strong> {{message}}
                    </div>
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Sl.No</th>
                                <th>ID</th>
                                <th>Brand Name</th>
                                <th>Group Name</th>
                                <th>Type</th>
                                <th>Unit</th>
                                <th>Company Name</th>
                                <th colspan="2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="company_product in companyProducts| filter: searchBox" required>
                                <td>{{$index + 1}}</td>
                                <td>{{company_product.cp_id}}</td>
                                <td>{{company_product.cp_brand_name}}</td>
                                <td>{{company_product.cp_group_name}}</td>
                                <td>{{company_product.cp_type}}</td>
                                <td>{{company_product.cp_unit}}</td>
                                <td>{{company_product.cp_company_name}}</td>

                                <td><button data-toggle="modal" data-target="#myModalEdit" type="button" class="btn btn-primary" ng-click="selectCompanyProduct(company_product)">Update</button></td>
                                <td><button data-toggle="modal" data-target="#myModalDelete" type="button" class="btn btn-danger" ng-click="selectCompanyProduct(company_product)">Delete</button></td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <!-- Save Modal -->
                    <div id="myModalSave" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Insert CompanyProduct</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            
                                            <label for="cp_brand_name">Brand Name:</label>
                                            <input ng-model="newCompanyProduct.cp_brand_name" type="text" class="form-control" id="cp_brand_name">

                                            <label for="cp_group_name">Group Name :</label>
                                            <select ng-model="newCompanyProduct.cp_group_name" class="form-control" id="cp_group_name" type="text">
                                                <option value="">--Select Drug Group Name--</option>
                                                <option  ng-repeat="drug_group_name in drugGroupNames">{{drug_group_name.dg_name}}</option>
                                            </select>
                                            
                                            <label for="cp_type">Type :</label>
                                            <input ng-model="newCompanyProduct.cp_type" type="text" class="form-control" id="cp_type">
                                            
                                            <label for="cp_unit">Unit :</label>
                                            <input ng-model="newCompanyProduct.cp_unit" type="text" class="form-control" id="cp_unit">
                                            
                                            <label for="cp_company_name">Company Name :</label>
                                            <select ng-model="newCompanyProduct.cp_company_name" class="form-control" id="cp_company_name" type="text">
                                                <option value="">--Select Drug Company Name--</option>
                                                <option  ng-repeat="drug_company in drugCompanys">{{drug_company.dc_nick_name}}</option>
                                            </select>
                                            
<!--                                            <label for="cp_company_name">Company Name :</label>
                                            <input ng-model="newCompanyProduct.cp_company_name" type="text" class="form-control" id="cp_company_name">-->
                                        </div>

                                        <button ng-click="saveCompanyProduct()" data-dismiss="modal" type="submit" class="btn btn-success">Submit</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Update Modal -->
                    <div id="myModalEdit" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Content Modal -->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Update CompanyProduct</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="cp_brand_name">Brand Name:</label>
                                            <input ng-model="clickedCompanyProduct.cp_brand_name" type="text" class="form-control" id="cp_brand_name">

                                            <label for="cp_group_name">Group Name :</label>
                                            <input ng-model="clickedCompanyProduct.cp_group_name" type="text" class="form-control" id="cp_group_name">

                                            <label for="cp_type">Type :</label>
                                            <input ng-model="clickedCompanyProduct.cp_type" type="text" class="form-control" id="cp_type">

                                            <label for="cp_unit">Unit :</label>
                                            <input ng-model="clickedCompanyProduct.cp_unit" type="text" class="form-control" id="cp_unit">

                                            <label for="cp_company_name">Company Name :</label>
                                            <input ng-model="clickedCompanyProduct.cp_company_name" type="text" class="form-control" id="cp_company_name">
                                        </div>
                                        <button ng-click="updateCompanyProduct()" data-dismiss="modal" type="submit" class="btn btn-success">Update</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Delete Modal -->
                    <div id="myModalDelete" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Update CompanyProduct</h4>
                                </div>
                                <div class="modal-body">
                                    You are now deleting {{clickedCompanyProduct.cp_brand_name}}
                                </div>
                                <div class="modal-footer">
                                    <button ng-click="deleteCompanyProduct()" type="button" class="btn btn-success" data-dismiss="modal">Ok</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--</div>-->
                <!--</div>-->
                <div class="footer-area col-md-12">
                    footer
                </div>
            </div>
        </div>
    </body>
</html>

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
                    <button data-toggle="modal" data-target="#myModalSave" type="button" class="btn btn-success">Add New Drug</button>
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
                                <th>Company Name</th>
                                <th>Unit</th>
                                <th>Quantity</th>
                                <th>U.Buy Cost</th>
                                <th>U.Sale Cost</th>
                                <th>T.Buy Cost</th>
                                <th>T.Sale Cost</th>
                                <th colspan="3">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="drug_detail in drugDetails| filter: searchBox" required>
                                <td>{{$index + 1}}</td>
                                <td>{{drug_detail.dd_id}}</td>
                                <td>{{drug_detail.dd_brand_name}}</td>
                                <td>{{drug_detail.dd_group_name}}</td>
                                <td>{{drug_detail.dd_type}}</td>
                                <td>{{drug_detail.dd_company_name}}</td>
                                <td>{{drug_detail.dd_unit}}</td>
                                <td>{{drug_detail.dd_qty}}</td>
                                <td>{{drug_detail.dd_unit_buy}}</td>
                                <td>{{drug_detail.dd_unit_sale}}</td>
                                <td>{{drug_detail.dd_total_buy}}</td>
                                <td>{{drug_detail.dd_total_sale}}</td>
                                <td><button data-toggle="modal" data-target="#myModalBuy" type="button" class="btn btn-success" ng-click="selectDrugDetail(drug_detail)">BUY</button></td>
                                <td><button data-toggle="modal" data-target="#myModalSale" type="button" class="btn btn-primary" ng-click="selectDrugDetail(drug_detail)">SALE</button></td>
                                <td><button data-toggle="modal" data-target="#myModalDelete" type="button" class="btn btn-danger" ng-click="selectDrugDetail(drug_detail)">Delete</button></td>
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
                                    <h4 class="modal-title">Insert DrugDetail</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="dd_brand_name">Brand Name :</label>
                                            <select ng-model="newDrugDetail.dd_brand_name" class="form-control" id="dd_brand_name" type="text">
                                                <option value="">select drug: BRAND NAME</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_brand_name}}</option>
                                            </select>
                                            <!--                                        <label for="dd_brand_name">Brand Name :</label>
                                                                                        <input ng-model="newDrugDetail.dd_brand_name" type="text" class="form-control" id="pname">-->

                                            <label for="cp_group_name">Group Name :</label>
                                            <select ng-model="newDrugDetail.dd_group_name" class="form-control" id="cp_group_name" type="text">
                                                <option value="">select drug: GROUP NAME</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_group_name}}</option>
                                            </select>
                                            <!--                                        <label for="dd_group_name">Group Name :</label>
                                                                                        <input ng-model="newDrugDetail.dd_group_name" type="text" class="form-control" id="price">-->

                                            <label for="cp_type">Type Name :</label>
                                            <select ng-model="newDrugDetail.dd_type" class="form-control" id="cp_type" type="text">
                                                <option value="">select drug: TYPE</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_type}}</option>
                                            </select>
                                            <!--                                        <label for="dd_type">Type :</label>
                                                                                        <input ng-model="newDrugDetail.dd_type" type="text" class="form-control" id="qty">-->

                                            <label for="cp_company_name">Company Name :</label>
                                            <select ng-model="newDrugDetail.dd_company_name" class="form-control" id="cp_company_name" type="text">
                                                <option value="">select drug: COMPANY NAME</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_company_name}}</option>
                                            </select>
                                            <!--                                        <label for="dd_company_name">Company Name :</label>
                                                                                        <input ng-model="newDrugDetail.dd_company_name" type="text" class="form-control" id="qty">-->

                                            <label for="cp_unit">Company Name :</label>
                                            <select ng-model="newDrugDetail.dd_unit" class="form-control" id="cp_unit" type="text">
                                                <option value="">select drug: UNIT</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_unit}}</option>
                                            </select>
                                            <!--                                        <label for="dd_unit">Unit :</label>
                                                                                        <input ng-model="newDrugDetail.dd_unit" type="text" class="form-control" id="qty">-->

                                            <label for="dd_qty">Quantity :</label>
                                            <input ng-model="newDrugDetail.dd_qty" type="text" class="form-control" id="qty">

                                            <label for="dd_unit_buy">U.Buy Cost :</label>
                                            <input ng-model="newDrugDetail.dd_unit_buy" type="text" class="form-control" id="qty">

                                            <label for="dd_unit_sale">U.Sale Cost :</label>
                                            <input ng-model="newDrugDetail.dd_unit_sale" type="text" class="form-control" id="qty">
                                            
                                            <label for="dd_total_buy">T.Buy Cost :</label>
                                            <input ng-model="newDrugDetail.dd_total_buy" type="text" class="form-control" id="qty" disabled="true" >
                                            
                                            
                                            
                                            <label for="dd_total_sale">T.Sale Cost :</label>
                                            <input ng-model="newDrugDetail.dd_total_sale" type="text" class="form-control" id="qty" disabled="true" >
                                        </div>
                                        <button ng-click="saveDrugDetail()" data-dismiss="modal" type="submit" class="btn btn-success">Submit</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Buy Modal -->
                    <div id="myModalBuy" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Content Modal -->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Update Product</h4>
                                </div>
                                <div class="modal-body">
                                    <form>

                                        <div class="form-group">
                                            <label for="dd_qty">Quantity :</label>
                                            <input ng-model="clickedDrugDetail.dd_qty" type="text" class="form-control" id="qty">
                                        </div>

                                        <button ng-click="buyDrug()" data-dismiss="modal" type="submit" class="btn btn-success">Update</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Sale Modal -->
                    <div id="myModalSale" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Content Modal -->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Update Product</h4>
                                </div>
                                <div class="modal-body">
                                    <form>

                                        <div class="form-group">
                                            <label for="dd_qty">Quantity :</label>
                                            <input ng-model="clickedDrugDetail.dd_qty" type="text" class="form-control" id="qty">
                                        </div>

                                        <button ng-click="saleDrug()" data-dismiss="modal" type="submit" class="btn btn-success">Update</button>
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
                                    <h4 class="modal-title">Update DrugDetail</h4>
                                </div>
                                <div class="modal-body">
                                    You are now deleting {{clickedDrugDetail.dd_brand_name}}
                                </div>
                                <div class="modal-footer">
                                    <button ng-click="deleteDrugDetail()" type="button" class="btn btn-success" data-dismiss="modal">Ok</button>
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

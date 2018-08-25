<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <h2><i class="fa fa-envelope-o"></i> Kontakt</h2>
            </div><!-- end col -->
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Start</a></li>
                    <li class="breadcrumb-item"><a href="#">Strony</a></li>
                    <li class="breadcrumb-item active"><a href="#">Kontakt</a></li>
                </ol>
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</div>
<!-- end page-title -->

<section class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                <div class="page-wrapper">
                    <div class="row">
                        <table class="table table-striped table-bordered table-list">
                            <thead>
                            <tr>

                                <th>ID</th>
                                <th>Login</th>
                                <th>Name</th>
                                <th>Surname</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Type</th>
                                <th>Active</th>


                                <th><em class="fa fa-cog"></em></th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${listOfUsers}" var="userLoop">
                                <tr>
                                    <td>
                                            ${userLoop.getId()}
                                    </td>
                                    <td>
                                            ${userLoop.getLogin()}
                                    </td>
                                    <td>
                                            ${userLoop.getName()}
                                    </td>
                                    <td>
                                            ${userLoop.getSurname()}
                                    </td>
                                    <td>
                                            ${userLoop.getEmail()}
                                    </td>
                                    <td>
                                            ${userLoop.getPhoneNumber()}
                                    </td>
                                    <td>
                                            ${userLoop.getUserType()}
                                    </td>
                                    <td>
                                            ${userLoop.getActive()}
                                    </td>


                                    <td align="center">
                                        <a
                                           href="EditEventFromDb?type=EditUserFromDb&id=${userLoop.getId()}"><em
                                                class="fa fa-pencil"></em></a>
                                        <a
                                           href="DeleteEventFromDbServletGet?id=${userLoop.getId()}"><em
                                                class="fa fa-trash"></em></a>

                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div><!-- end row -->
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</section>


<%@include file="footer.jsp" %>
</div>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet'
      type='text/css'>

<div class="container">
    <div class="row">


        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">List of all Events</h3>
                        </div>
                        <div class="col col-xs-6 text-right">
                            <a href="AddEvent.jsp" type="button" class="btn btn-sm btn-primary btn-create">Add new
                                event</a>
                            <a href="index.jsp" type="button" class="btn btn-sm btn-primary btn-create">Back to main
                                page</a>

                        </div>
                    </div>
                </div>
                <div class="panel-body">


                    <table class="table table-striped table-bordered table-list">
                        <thead>
                        <tr>

                            <th>ID</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Start Date</th>
                            <th>Finish Date</th>
                            <th>Address</th>
                            <th>Google maps</th>
                            <th>Organizer</th>
                            <th>Price</th>
                            <th>Ticekts</th>


                            <th><em class="fa fa-cog"></em></th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${listOfEvents}" var="eventLoop">
                            <tr>
                                <td>
                                        ${eventLoop.getId()}
                                </td>
                                <td>
                                        ${eventLoop.getName()}
                                </td>
                                <td>
                                        ${eventLoop.getDescription()}
                                </td>
                                <td>
                                        ${eventLoop.getStartDate()}
                                </td>
                                <td>
                                        ${eventLoop.getFinishDate()}
                                </td>
                                <td>
                                        ${eventLoop.getAddress()}
                                </td>
                                <td>
                                        ${eventLoop.getGoogleMaps()}
                                </td>
                                <td>
                                        ${eventLoop.getOrganizer()}
                                </td>
                                <td>
                                        ${eventLoop.getPrice()}
                                </td>
                                <td>
                                        ${eventLoop.getTickets()}
                                </td>


                                <td align="center">
                                    <a class="btn btn-default"
                                       href="EditEventFromDb?type=EditUserFromDb&id=${eventLoop.getId()}"><em
                                            class="fa fa-pencil"></em></a>
                                    <a class="btn btn-danger"
                                       href="DeleteEventFromDbServletGet?id=${eventLoop.getId()}"><em
                                            class="fa fa-trash"></em></a>

                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>


                </div>


                <!--     <div class="panel-footer">
                         <div class="row">
                             <div class="col col-xs-4">Page 1 of 5
                             </div>
                             <div class="col col-xs-8">
                                 <ul class="pagination hidden-xs pull-right">
                                     <li><a href="#">1</a></li>
                                     <li><a href="#">2</a></li>
                                     <li><a href="#">3</a></li>
                                     <li><a href="#">4</a></li>
                                     <li><a href="#">5</a></li>
                                 </ul>
                                 <ul class="pagination visible-xs pull-right">
                                     <li><a href="#">«</a></li>
                                     <li><a href="#">»</a></li>
                                 </ul>
                             </div>
                         </div>
                     </div> -->
            </div>

        </div>
    </div>
</div>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>


<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <h2><i class="fa fa-safari "></i> Dodaj event</h2>
            </div><!-- end col -->
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/index.jsp">Start</a></li>
                    <li class="breadcrumb-item"><a href="#">Strony</a></li>
                    <li class="breadcrumb-item active"><a href="#">Dodaj event</a></li>
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
                        <div class="col-lg-12">
                            <h4>Dodawanie eventu</h4>
                            <p>Na tej stronie możesz dodać wydarzenie, wypełniając i wysyłając formularz</p>
                        </div>


                    </div><!-- end row -->


                    <div class="row">
                        <div class="col-lg-12">
                            <form class="form-wrapper" method="post" action="/addevent">

                                Name: <input type="text" class="form-control" placeholder="Nazwa" name="name"/>
                                Description: <input type="text" class="form-control" placeholder="Opis"
                                                    name="description" required/>
                                Start date: <input type="date" class="form-control" placeholder="Data rozpoczęcia"
                                                   name="start_date" required/>
                                Finish date: <input type="date" class="form-control" placeholder="Data zakończenia"
                                                    name="finish_date" required/>
                                Address: <input type="text" n class="form-control" placeholder="Adres imprezy"
                                                name="address" required/>
                                Google maps: <input type="text" class="form-control" placeholder="Link do google maps"
                                                    name="google_maps" required/>
                                Organizer: <input type="number" class="form-control" placeholder="" name="organizer"
                                                  required/>
                                Price: <input type="number" class="form-control" placeholder="Cena za wstęp"
                                              name="price" required/>
                                Tickets: <input type="number" class="form-control" placeholder="ilość biletów"
                                                name="tickets" required/>
                                Category: <input type="number" class="form-control" placeholder="kategoria"
                                                 name="category" required/>
                                Promote?:
                                <select name="promote" class="form-control" placeholder="promowany?" required>
                                    <option>YES</option>
                                    <option>NO</option>
                                </select>
                                <button type="submit" class="btn btn-primary">Dodaj event <i
                                        class="fa fa-envelope-open-o"></i></button>
                            </form>


                        </div>
                    </div>
                </div><!-- end page-wrapper -->
            </div><!-- end col -->

            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                <div class="sidebar">
                    <div class="widget">
                        <h2 class="widget-title">Search</h2>
                        <form class="form-inline search-form">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search on the site">
                            </div>
                            <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                        </form>
                    </div><!-- end widget -->


                </div><!-- end sidebar -->
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</section>


<%@include file="footer.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" %>
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
        </div><!-- end page-title -->

        <section class="section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                        <div class="page-wrapper">
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Who we are</h4>
                                    <p>Cloapedia is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.</p>
                                </div>

                                <div class="col-lg-6">
                                    <h4>How we help?</h4>
                                    <p>If you’d like to write for us, <a href="#">advertise with us</a> or just say hello, fill out the form below and we’ll get back to you as soon as possible.</p>
                                </div>

                                <div class="col-lg-12">
                                    <blockquote class="blockquote">Please read <a href="#">Licensing & Terms</a> of Use if you are wondering about the license. </strong></blockquote>
                                </div>
                            </div><!-- end row -->


                            <div class="row">
                                <div class="col-lg-12">
                                    <form class="form-wrapper">
                                    <h4>Formularz:</h4>
                                        <input type="text" class="form-control" name="name" placeholder="Nazwa" required>
                                        <input type="text" class="form-control" name="email" placeholder="Email" required>
                                        <input type="text" class="form-control" name="phone"    placeholder="Telefon">
                                        <input type="text" class="form-control" name="subject" placeholder="Temat">
                                        <textarea class="form-control" name="content" placeholder="Wpisz wiadomość"></textarea>
                                        <button type="submit" class="btn btn-primary">Wyślij <i class="fa fa-envelope-open-o"></i></button>
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



<%@include file="footer.jsp"%>
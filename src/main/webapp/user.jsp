<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>


<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <h2><i class="fa fa-user"></i> Zaloguj się</h2>
            </div><!-- end col -->
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Start</a></li>
                    <li class="breadcrumb-item active"><a href="#">Logowanie</a></li>
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
                        <div class="col-lg-6">
                            <h4>Jeśli masz konto...</h4>
                            <p>Cloapedia is a personal blog for handcrafted, cameramade photography content, fashion
                                styles from independent creatives around the world.</p>
                        </div>

                        <div class="col-lg-6">
                            <h4>Nie masz konta?</h4>
                            <p>If you’d like to write for us, <a href="#">advertise with us</a> or just say hello, fill
                                out the form below and we’ll get back to you as soon as possible.</p>
                        </div>


                    </div><!-- end row -->


                    <div class="row">


                        <div class="col-lg-6">
                            <form class="form-wrapper" method="post" action="/UserLogin">
                                <h4>Zaloguj się:</h4>
                                <input type="text" class="form-control" name="login" placeholder="login" required>
                                <input type="text" class="form-control" name="password" placeholder="hasło" required>
                                <button type="submit" class="btn btn-primary">Zaloguj się <i
                                        class="fa fa-envelope-open-o"></i></button>
                            </form>
                        </div>


                        <div class="col-lg-6">
                            <form class="form-wrapper" method="post" action="/UserAddServlet">
                                <h4>Create new account:</h4>
                                <input type="text" class="form-control" name="login" placeholder="login" required>
                                <input type="password" class="form-control" name="password" placeholder="password"
                                       required>
                                <input type="text" class="form-control" name="name" placeholder="name" required>
                                <input type="text" class="form-control" name="surname" placeholder="surname" required>
                                <input type="email" class="form-control" name="email" placeholder="email" required>
                                <input type="tel" class="form-control" name="phone" placeholder="phone">
                                <select class="form-control" name="type">
                                    <option>NORMAL</option>
                                    <option>BUSINESS</option>
                                    <option>ADMIN</option>
                                </select>


                                <button type="submit" name="save" class="btn btn-primary">Załóż konto <i
                                        class="fa fa-envelope-open-o"></i></button>
                            </form>
                        </div>
                    </div>
                </div><!-- end page-wrapper -->
            </div><!-- end col -->


        </div><!-- end row -->
    </div><!-- end container -->
</section>


<%@include file="footer.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="header.jsp" %>
        </header><!-- end header -->

        <div class="page-title">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                        <h2>Event name: ${event.getName()}</h2>
                    </div><!-- end col -->
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active"><a href="#">Pages</a></li>
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

                            <div class="pp">
                                <strong>Event description:<br> </strong>${event.getDescription()}<br><br>
                            <!-- end pp -->

                            <strong>Event start date: </strong> ${event.getStartDate()}<br>
                            <strong>Event finish date: </strong> ${event.getFinishDate()}<br>
                            <strong>Event address: </strong> ${event.getAddress()}<br>
                            <strong>Event googlemaps: </strong> ${event.getGoogleMaps()}<br>
                            <strong>Event organizer: </strong> ${event.getOrganizer()}<br>
                            <strong>Event price: </strong> ${event.getPrice()}<br>
                            <strong>Event ticekts: </strong> ${event.getTickets()}<br>
                            <strong>Event category: </strong> ${event.getCategory()}<br>
                            <strong>Event promote: </strong> ${event.isPromote()}<br>

                            <img src="${event.getImageURL()}" alt="" class="img-fluid img-fullwidth">

                            </div>
<!--
                            <div class="pp">
                                <h3><strong>Nam non velit est. Sed lobortis arcu vitae nunc molestie consectetur. Nam eget neque ac ex fringilla dignissim eu ac est. Nunc et nisl vel odio posuere. </strong></h3>

                                <p>Vivamus non condimentum orci. Pellentesque venenatis nibh sit amet est vehicula lobortis. Cras eget aliquet eros. Nunc lectus elit, suscipit at nunc sed, finibus imperdiet ipsum. Maecenas dapibus neque sodales nulla finibus volutpat. Integer pulvinar massa vitae ultrices posuere. Proin ut tempor turpis. Mauris felis neque, egestas in lobortis et, sodales non ante. Ut vestibulum libero quis luctus tempus. Nullam eget dignissim massa. Vivamus id condimentum orci. Nunc ac sem urna. Aliquam et hendrerit nisl massa nunc. </p>

                                <p>Morbi pharetra porta consequat. Aenean et diam sapien. <a href="#">Interdum et malesuada</a> fames ac ante ipsum primis in faucibus. Pellentesque dictum ligula iaculis, feugiat metus eu, sollicitudin ex. Quisque eu ullamcorper ligula. In vel ex ac purus finibus viverra. Maecenas pretium lobortis turpis. Fusce lacinia nisi in tortor massa nunc.</p>

                                <ul class="check">
                                    <li>Integer sit amet odio ac lectus imperdiet elementum.</li>
                                    <li>Praesent vitae lacus sed lacus ullamcorper mollis.</li>
                                    <li>Donec vitae metus ac felis vulputate tincidunt non et ex.</li>
                                    <li>In dapibus sapien at viverra venenatis.</li>
                                    <li>Pellentesque mollis velit id maximus finibus.</li>
                                </ul>

                                <p>Proin ultricies nulla consectetur, sollicitudin dolor at, sollicitudin mauris. Maecenas at nunc nunc. Ut nulla felis, tincidunt et porttitor at, rutrum in dolor. Aenean id tincidunt ligula. Donec vitae placerat odio. Mauris accumsan nibh ut nunc maximus, ac auctor elit vehicula. Cras leo sem, vehicula a ultricies ac, condimentum vitae lectus. Sed ut eros euismod, luctus nisl eu, congue odio. </p>

                                <p><img src="upload/blog_03.jpg" class="float-left" width="340" alt="">Suspendisse ultrices placerat dolor sed efficitur. Morbi in laoreet diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ut massa id lectus laoreet porta non in metus. Donec nibh justo, tincidunt non justo ut, tincidunt malesuada turpis. Cras pellentesque sollicitudin ex eget pharetra.</p>

                                <h3><strong>Nam non velit est. Sed lobortis arcu vitae nunc molestie consectetur. Nam eget neque ac ex fringilla dignissim eu ac est. Nunc et nisl vel odio posuere. </strong></h3>


                                <p>Aliquam eget maximus odio. Aliquam varius nisl ut leo fermentum, id fringilla magna tempus. Curabitur quis bibendum lorem, ut suscipit tellus. Morbi id dictum justo, et massa nunc. Mauris laoreet, neque et varius malesuada, justo neque consequat dolor, sit amet semper dui ligula commodo enim. Duis mauris magna, euismod in ante sed, laoreet faucibus elit. Nam euismod vulputate lorem, nec tincidunt lacus volutpat sit amet. In libero eros, dignissim vitae quam sed, maximus consectetur justo. Donec id orci eget odio convallis pellentesque. Quisque mi ex, pretium in eros at, viverra imperdiet magna. Donec eu arcu vitae erat consectetur pretium. Proin varius massa justo, quis aliquet urna cras amet.  </p>

                                <p>Vivamus non condimentum orci. Pellentesque venenatis nibh sit amet est vehicula lobortis. Cras eget aliquet eros. Nunc lectus elit, suscipit at nunc sed, finibus imperdiet ipsum. Maecenas dapibus neque sodales nulla finibus volutpat. Integer pulvinar massa vitae ultrices posuere. Proin ut tempor turpis. Mauris felis neque, egestas in lobortis et, sodales non ante. Ut vestibulum libero quis luctus tempus. Nullam eget dignissim massa. Vivamus id condimentum orci. Nunc ac sem urna. Aliquam et hendrerit nisl massa nunc. </p>
-->
                            </div><!-- end pp -->
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

                            <div class="widget">
                                <h2 class="widget-title">Recent Posts</h2>
                                <div class="blog-list-widget">
                                    <div class="list-group">
                                        <a href="single.html" class="list-group-item list-group-item-action flex-column align-items-start">
                                            <div class="w-100 justify-content-between">
                                                <img src="upload/blog_square_01.jpg" alt="" class="img-fluid float-left">
                                                <h5 class="mb-1">5 Beautiful buildings you need to before dying</h5>
                                                <small>12 Jan, 2016</small>
                                            </div>
                                        </a>

                                        <a href="single.html" class="list-group-item list-group-item-action flex-column align-items-start">
                                            <div class="w-100 justify-content-between">
                                                <img src="upload/blog_square_02.jpg" alt="" class="img-fluid float-left">
                                                <h5 class="mb-1">Let's make an introduction for creative life</h5>
                                                <small>11 Jan, 2016</small>
                                            </div>
                                        </a>

                                        <a href="single.html" class="list-group-item list-group-item-action flex-column align-items-start">
                                            <div class="w-100 last-item justify-content-between">
                                                <img src="upload/blog_square_03.jpg" alt="" class="img-fluid float-left">
                                                <h5 class="mb-1">Did you see the most beautiful sea in the world?</h5>
                                                <small>07 Jan, 2016</small>
                                            </div>
                                        </a>
                                    </div>
                                </div><!-- end blog-list -->
                            </div><!-- end widget -->

                            <div class="widget">
                                <h2 class="widget-title">Advertising</h2>
                                <div class="banner-spot clearfix">
                                    <div class="banner-img">
                                        <img src="upload/banner_03.jpg" alt="" class="img-fluid">
                                    </div><!-- end banner-img -->
                                </div><!-- end banner -->
                            </div><!-- end widget -->

                            <div class="widget">
                                <h2 class="widget-title">Instagram Feed</h2>
                                <div class="instagram-wrapper clearfix">
                                    <a class="" href="#"><img src="upload/insta_01.jpeg" alt="" class="img-fluid"></a>
                                    <a href="#"><img src="upload/insta_02.jpeg" alt="" class="img-fluid"></a>
                                    <a href="#"><img src="upload/insta_03.jpeg" alt="" class="img-fluid"></a>
                                    <a href="#"><img src="upload/insta_04.jpeg" alt="" class="img-fluid"></a>
                                    <a href="#"><img src="upload/insta_05.jpeg" alt="" class="img-fluid"></a>
                                    <a href="#"><img src="upload/insta_06.jpeg" alt="" class="img-fluid"></a>
                                    <a href="#"><img src="upload/insta_07.jpeg" alt="" class="img-fluid"></a>
                                    <a href="#"><img src="upload/insta_08.jpeg" alt="" class="img-fluid"></a>
                                    <a href="#"><img src="upload/insta_09.jpeg" alt="" class="img-fluid"></a>
                                </div><!-- end Instagram wrapper -->
                            </div><!-- end widget -->

                            <div class="widget">
                                <h2 class="widget-title">Popular Categories</h2>
                                <div class="link-widget">
                                    <ul>
                                        <li><a href="#">Fahsion <span>(21)</span></a></li>
                                        <li><a href="#">Lifestyle <span>(15)</span></a></li>
                                        <li><a href="#">Art & Design <span>(31)</span></a></li>
                                        <li><a href="#">Health Beauty <span>(22)</span></a></li>
                                        <li><a href="#">Clothing <span>(66)</span></a></li>
                                        <li><a href="#">Entertaintment <span>(11)</span></a></li>
                                        <li><a href="#">Food & Drink <span>(87)</span></a></li>
                                    </ul>
                                </div><!-- end link-widget -->
                            </div><!-- end widget -->

                        </div><!-- end sidebar -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </section>

<%@include file="footer.jsp"%>
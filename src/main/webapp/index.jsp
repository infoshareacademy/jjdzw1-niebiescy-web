<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>




<section class="section first-section">
    <div class="container-fluid">
        <div class="masonry-blog clearfix">

<c:forEach items="${listOfEventsMainPage}" var="eventLoop">
            <div class="center-side">
                <div class="masonry-box post-media">
                    <img src="${eventLoop.getImageURL()}" alt=""
                         class="img-fluid">
                    <div class="shadoweffect">
                        <div class="shadow-desc">
                            <div class="blog-meta">
                                <span class="bg-aqua"><a href="EventDetails?id=${eventLoop.getId()}"
                                                         title="">${eventLoop.getCategory()}</a></span>
                                <h4><a href="EventDetails?id=${eventLoop.getId()}"
                                       title="">${eventLoop.getName()}</a>
                                </h4>
                                <small><a href="EventDetails?id=${eventLoop.getId() }" title="">Start
                                    date: ${eventLoop.getStartDate()}</a>
                                </small>
                                <small><a href="EventDetails?id=${eventLoop.getId()}" title="">End
                                    date: ${eventLoop.getFinishDate()}</a>
                                </small>
                            </div><!-- end meta -->
                        </div><!-- end shadow-desc -->
                    </div><!-- end shadow -->
                </div><!-- end post-media -->
            </div><!-- end left-side -->
</c:forEach>


        </div><!-- end masonry -->
    </div>
</section>







<%@include file="footer.jsp" %>

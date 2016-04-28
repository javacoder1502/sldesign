<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html class="html" lang="en-US">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
        <title>TESYNC</title>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css" />" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css" />"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style-nav.css" />"/>

      

      
    </head>
   <body onload="javascript:showonlyone('anim');">
     <div id="mypage" style="visibility:hidden;" > 
         <section class="container">
            <section class="sri-area">
              <jsp:include page="/WEB-INF/headers/header.jsp" />
                <section class="container">
                <section class="sri-area">
                  <jsp:include page="/WEB-INF/headers/distinctCat.jsp" />
                  
                  
                   <div id="wait">
                   
                   
                 
                   <section class="row">
                    <section class="cat-wall">
                    
                    
                     <c:forEach items="${ContentDes}" var ="contentDes">
                           
                              <section class="col-md-4 col-xs-4">
                                    <section class="wall-pic">

 
   <img src="<c:url value="../m4u/CMS/Preview/${contentDes.content_prv}" />" style="max-width:130px; width:100%;"/>  
 	 
 	 
 	 <%-- <input type="image" src="<c:url value="../m4u/CMS/Preview/${contentDes.content_prv}" />"
 	  style="max-width:130px; width:100%;"/> --%>

                                    </section>
                                </section>
                  
                    
                    </c:forEach>
                      </section>
                  </section>
                  
                  
                    </div>

<jsp:include page="/WEB-INF/footer/footer.jsp" />
                            

                    </section>
                </section>


                  <section class="footer">
                      <center>
    <div class="newboxes" id="newboxes1">  
    <p>copyright@2016</p></div>
        
                      </center>
            </section>

            </section>
        </section>

        <!-- JS includes -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="<c:url value="/resources/scripts/bootstrap.js" />" ></script>
        <script src="<c:url value="/resources/scripts/change.js" />" ></script>
 </div>
    </body>
</html>
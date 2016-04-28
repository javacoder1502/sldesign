<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="html" lang="en-US">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
<title>TESYNC</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style-nav.css" />" />

</head>


<body
	onload="javascript:showonlyone('<%=request.getParameter("cli")%>');">
	<div id="mypage" style="visibility: hidden;">
		<section class="container">
			<section class="sri-area">

				<jsp:include page="/WEB-INF/headers/header.jsp" />


				<div class="verticalspacer"></div>
				<section class="container">
					<section class="sri-area">
						<section id="wall-head">
							<section class="col-md-4 col-xs-4"></section>
							<section class="col-md-4 col-xs-4"></section>

						</section>


						<section class="row">
							<!--categories area-->
							<section class="categories-area">

								<section class="cat-area">
									<section class="row">

										<c:forEach items="${ContentCatDesc}" var="ContentCatDesc">

											<section class="cat-head">
												<section class="col-md-6 col-xs-6">
													<div class="newboxes" id="newboxes1">
														<h3 style="text-align: left;">${ContentCatDesc.cat_name}</h3>
													</div>

												</section>

												<section class="col-md-6 col-xs-6">
													<a href="animation_cat.jsp?cat_type=Hollywood Stars"
														style="padding: 0px;">
														<div class="newboxes" id="newboxes1">
															<p
																style="text-align: right; color: #E34043; font-weight: bold;">View
																All</p>
														</div>
													</a>

												</section>
											</section>

											<section class="cat-set">
												<%
													String path = "../m4u/CMS/Preview/";
														String image_name = "Animation/Jennifer_Lopez_14.gif";
												%>
												<section class="col-md-4 col-xs-4">
													<img
														src='<c:url value="${ContentCatDesc.image_prv_name}"></c:url>' />
												</section>
												<section class="col-md-8 col-xs-8">
													<!-- <p class="cata">Famous Hollywood Stars & Divas</p>-->


													<div class="newboxes" id="newboxes1">
														<p class="cata">${ContentCatDesc.cat_desc}</p>
													</div>


												</section>
											</section>

										</c:forEach>

									</section>
								</section>

							</section>


							<section class="banner-cat">
								<a href="subscription.jsp"> <img
									src="images/SUBSCRIPTION.png" />
							</section>


						</section>


						<jsp:include page="/WEB-INF/footer/footer.jsp" />
					</section>



					<section class="footer">
						<center>
							<div class="newboxes">
								<p>copyright@2016</p>
							</div>

						</center>
					</section>
				</section>
			</section>
		</section>



		<!-- JS includes -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script>
			$(function() {
				$(".navi li").on("click", function() {
					$(".navi li").removeClass("active");
					$(this).addClass("active");
				});

			});
		</script>
		<script src="<c:url value="/resources/scripts/bootstrap.js" />"></script>
		<script src="<c:url value="/resources/scripts/change.js" />"></script>
	</div>
</body>
</html>

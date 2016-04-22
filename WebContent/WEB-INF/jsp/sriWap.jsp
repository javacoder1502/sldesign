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

<style>
a {
	padding: 5px 0
}
</style>

</head>

<body
	onload="javascript:showonlyone('<%=request.getParameter("cli")%>');">

	<div id="mypage">
		<section class="container">
			<section class="sri-area">

				<jsp:include page="/WEB-INF/headers/header.jsp" />

				<section class="container">
					<section class="sri-area">
						<section id="wall-head">
							<section class="col-md-4 col-xs-4"></section>
							<section class="col-md-4 col-xs-4"></section>
							<section class="col-md-4 col-xs-4"></section>
						</section>


						<section class="row">
							<!--categories area-->
							<section class="categories-area">
								<section class="freepick">
									<section class="row">
										<section class="pick-fi">


											<section class="pick-head">
												<a href="pickofday.jsp?cat_type=Ultra Hot Babes"><div
														class="newboxes" id="newboxes1">
														<h3>Pick of the Day</h3>
													</div> </a>


											</section>

											<section class="preview">
												<section class="row">





													<section class="col-md-4 col-xs-4">
														<section class="pre-view">

															<input type="image" src=""
																style="max-width: 130px; width: 100%;" />

														</section>
													</section>


												</section>

											</section>


										</section>
										<section class="pick-fi">


											<section class="pick-head">
												<a href="dealofday.jsp?cat_type=Sinhala Art"><div
														class="newboxes" id="newboxes1">
														<h3 style="color: #000;">Deal of the Day</h3>
													</div> </a>
											</section>

											<section class="preview">
												<section class="row">



													<section class="col-md-4 col-xs-4">
														<section class="pre-view">

															<input type="image" src=""
																style="max-width: 130px; width: 100%;" />

														</section>
													</section>



												</section>

											</section>


										</section>

									</section>
								</section>

								<section class="cat-area">
									<section class="row">


										<section class="banner-a">
											<a href="freeZone.jsp">
												<div class="newboxes" id="newboxes1">
													<img
														src="<c:url value="/resources/images/FREE ZONE.png" />" />
												</div>

											</a>
										</section>
										<section class="banner-a">
											<a href="buyOneGetOne.jsp">
												<div class="newboxes" id="newboxes1">
													<img src="<c:url value="/resources/images/free.png" />" />
												</div>
											</a>
										</section>
										<section class="banner-a">
											<a href="subscription.jsp">
												<div class="newboxes" id="newboxes1">
													<img
														src="<c:url value="/resources/images/SUBSCRIPTION.png" />" />
												</div>

											</a>
										</section>

									</section>
								</section>

							</section>
						</section>



					</section>

				</section>
				<section class="footer">
					<center>
						<div class="newboxes" id="newboxes1">
							<p>copyright@2016</p>
						</div>

					</center>
				</section>
			</section>
		</section>

		<!-- JS includes -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="<c:url value="/resources/scripts/bootstrap.js" />"></script>
		<script src=<c:url value="/resources/scripts/change.js" />" ></script>
	</div>
</body>
</html>
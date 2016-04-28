<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="utf-8" %>


<section id="wall-head">
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><h2>Animations</h2></div>
      </section>
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                
                
                <c:forEach items="${cat_list}" var="item">
								<option value="${item}"
									${not empty lang_select_param && lang_select_param == item ? 'selected' : ''}>
									<c:out value=" ${item}"></c:out> 
									<%-- <spring:message code="${item}" /> --%>
				</option>
				</c:forEach>
                    
                    <!-- <option id="Sri-Lanka-Stars">Sri Lanka Stars</option>
                    <option id="Tamil-Stars">Tamil Stars</option>
                    <option id="Ultra-Hot-Babes">Ultra Hot Babes</option>
                    <option id="Sinhala-Art">Sinhala Art</option>
                    <option id="Jacqueline-Fernandez">Jacqueline Fernandez</option>
                    <option id="Cricket-Stars">Cricket Stars</option>
                    <option id="Bollywood-Stars">Bollywood Stars</option>
                    <option id="Sunny-Leone">Sunny Leone</option>
                    <option id="Bikini-Babes">Bikini Babes</option>
                    <option id="Hollywood-Stars">Hollywood Stars</option>
                    <option id="Bollywood-Actors">Bollywood Actors</option>
                    <option id="Kannada-Stars">Kannada Stars</option>
                    <option id="Holy-Deities">Holy Deities</option>
                    <option id="Telugu-Beauties">Telugu Beauties</option> -->
                </select>
                    
            </div>
          </div>


    </section>

</section>
           
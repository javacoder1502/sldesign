<%@ page pageEncoding="utf-8" %>


                 <%
                    if (request.getParameter("cat_type") != null || request.getParameter("cat_type") != "") {
                %>

<!--                <option><%=request.getParameter("cat_type")%></option>-->
               

                   <section id="wall-head" >
   <section class="col-md-6 col-xs-6">
    <div class="newboxes" id="newboxes1"> <h2>Games Zone</h2></div>
     <div class="newboxes" id="newboxes2"><h2>விளையாட்டு மண்டலம் </h2></p></div>
      <div class="newboxes" id="newboxes3"><h2>ක්රීඩා කලාපය </h2></div> 
</section>
 <section class="col-md-6 col-xs-6">
 <div class="newboxes" id="newboxes1"><div style="padding:10px; float:left;width:100%;">
  <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
       <option><%=request.getParameter("cat_type")%></option>
 <option id="Brain-Teasers">Brain Teasers</option>
<option id="Fighter-Games">Fighter Games</option>
<option id="Sports-Special">Sports Special</option>
    </select>
    </div></div>
    <div class="newboxes" id="newboxes2"><div style="padding:10px; float:left;width:100%;">
  <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
  <option id="Brain-Teasers" value="Brain Teasers">மூளை டீஸர்கள் </option>
<option id="Fighter-Games" value="Fighter Games">ஃபைட்டர் விளையாட்டு </option>
<option id="Sports-Special" value="Sports Special">விளையாட்டு சிறப்பு </option>

    </select>
    </div></div>
    <div class="newboxes" id="newboxes3"><div style="padding:10px; float:left;width:100%;">
  <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
   <option id="Brain-Teasers" value="Brain Teasers"> මොළයේ එක්කෝ </option>
 <option id="Fighter-Games" value="Fighter Games"> ප්රහාරක ක්රීඩා </option>
 <option id="Sports-Special" value="Sports Special">ක්රීඩා විශේෂ </option>
    </select>
    </div></div>
    </section>
      <!-- <section class="col-md-4 col-xs-4">
	
          <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>  -->
<!-- <div style="padding:10px;">
     <select style="float:right;" onchange="javascript:showonlyone(this.value);">
        <option value="newboxes1">English</option>
        <option value="newboxes2">Tamil</option>
        <option value="newboxes3">Sinhala</option>
    </select>
  
    </div>
    </section> -->
 
                   <script>
                    document.getElementById("<%=request.getParameter("cat_type").replaceAll(" ", "-")%>").style.display = "none";
                 </script>
</section>
 
  <%
                    }
                %>   
<%@ page pageEncoding="utf-8" %>


<%
    if (request.getParameter("cat_type") != null || request.getParameter("cat_type") != "") {
%>










<section id="wall-head">
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><h2>Videos</h2></div>
        <div class="newboxes" id="newboxes2"><h2>வீடியோக்கள்</h2></div>
        <div class="newboxes" id="newboxes3"><h2>වීඩියෝ දර්ශන</h2></div> 
    </section>
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                    <option><%=request.getParameter("cat_type")%></option>
                    <option id="The-Ramayana-Epic">The Ramayana Epic</option>
                    <option id="Ultra-Hot-Babes">Ultra Hot Babes</option>
                    <option id="Bikini-Photoshoots">Bikini Photoshoots</option>
                    <option id="Hot-Webcam-Girls">Hot Webcam Girls</option>
                    <option id="Top-Teens-Videos">Top Teens Videos</option>
                    <option id="Entertainment">Entertainment</option>
                    <option id="Tamil-TV">Tamil TV</option>
                    <option id="Bollywood-Clips">Bollywood Clips</option>
                    <option id="Funny-Videos">Funny Videos</option>
                </select>
            </div></div>
        <div class="newboxes" id="newboxes2"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                    <option id="The-Ramayana-Epic" value="The Ramayana Epic"> ராமாயணம் காவிய </option>
                    <option id="Ultra-Hot-Babes" value="Ultra Hot Babes">அல்ட்ரா சூடான பேப்ஸ் </option>
                    <option id="Bikini-Photoshoots" value="Bikini Photoshoots">  பிகினி படங்கள் </option>
                    <option id="Hot-Webcam-Girls" value="Hot Webcam Girls">	சூடான வெப்கேம் பெண் </option>
                    <option id="Top-Teens-Videos" value="Top Teens Videos">	சிறந்த இளம் வயதினரை வீடியோ </option>
                    <option id="Entertainment" value="Entertainment">  பொழுதுபோக்கு </option>
                    <option id="Tamil-TV" value="Tamil TV">தமிழ் தொலைக்காட்சி</option>
                    <option id="Bollywood-Clips" value="Bollywood Clips">பாலிவுட் கிளிப்கள்</option>
                    <option id="Funny-Videos" value="Funny Videos">வேடிக்கை வீடியோக்கள்</option>
                </select>
            </div></div>
        <div class="newboxes" id="newboxes3"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                    <option id="The-Ramayana-Epic" value="The Ramayana Epic">රාමායනය එපික් </option>
                    <option id="Ultra-Hot-Babes" value="Ultra Hot Babes">අල්ට්රා උණුසුම් ළදරුවන්ගේ </option>
                    <option id="Bikini-Photoshoots" value="Bikini Photoshoots">  උණුසුම් ඡායාරූප   </option>
                    <option id="Hot-Webcam-Girls" value="Hot Webcam Girls">	උණුසුම් වෙබ් කැමරාව බාලිකා </option>
                    <option id="Top-Teens-Videos" value="Top Teens Videos">	 යෞවනයන්ට වීඩියෝ </option>
                    <option id="Entertainment" value="Entertainment">   විනෝදාස්වාදය </option>
                    <option id="Tamil-TV" value="Tamil TV">දමිළ රූපවාහිනී</option>
                    <option id="Bollywood-Clips" value="Bollywood Clips">බොලිවුඩ් වල කොටස්</option>
                    <option id="Funny-Videos" value="Funny Videos">විහිළුවක් වීඩියෝ</option>

                </select>
            </div></div>
    </section>
<!--    <section class="col-md-4 col-xs-4">
         <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div>
        <div style="padding:10px;">
            <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                <option value="newboxes1">English</option>
                <option value="newboxes2">Tamil</option>
                <option value="newboxes3">Sinhala</option>
            </select>

        </div>
    </section>-->
</section>
                 <script>
    document.getElementById("<%=request.getParameter("cat_type").replaceAll(" ", "-")%>").style.display = "none";
 </script>
     
                    
                    <%
    }
%>   
<%@ page pageEncoding="utf-8" %>

<%
    if (request.getParameter("cat_type") != null || request.getParameter("cat_type") != "") {
%>





<section id="wall-head">
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"> <h2>Music Zone</h2></div>
        <div class="newboxes" id="newboxes2"><h2>இசை மண்டலம்</h2></div>
        <div class="newboxes" id="newboxes3"><h2>සංගීත කලාපය</h2></div> 
    </section>
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">>
                    <option><%=request.getParameter("cat_type")%></option>
					<option id ="Bollywood">Bollywood</option>
                    <option id ="Devotional-Tones">Devotional Tones</option>
                    <option id ="Arti-Songs">Arti Songs</option>
                     <option id ="Bhojpuri-Tunes">Bhojpuri Tunes</option>
                    <option id ="Haryanvi-Tunes">Haryanvi Tunes</option>

                </select>
            </div></div>
        <div class="newboxes" id="newboxes2"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">>
				 <option id ="Bollywood" value="Bollywood">பாலிவுட்</option>
                    <option id ="Devotional-Tones" value="Devotional Tones">ஆன்மீகம் டோன்ஸ் </option>
                    <option id ="Arti-Songs" value="Arti Songs"> ஆர்த்தி பாடல்கள் </option>
                     <option id ="Bhojpuri-Tunes" value="Bhojpuri Tunes">போஜ்புரி ட்யூன்ஸ்</option>
                    <option id ="Haryanvi-Tunes" value="Haryanvi Tunes">அரியானா ட்யூன்ஸ் </option>
                </select>
            </div></div>
        <div class="newboxes" id="newboxes3"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">>
					<option id ="Bollywood" value="Bollywood">බොලිවුඩ්</option>
                    <option id ="Devotional-Tones" value="Devotional Tones"> බැති නාද </option>
                    <option id ="Arti-Songs" value="Arti Songs">  පූජා ගීත</option>
                    <option id ="Bhojpuri-Tunes" value="Bhojpuri Tunes">බිහාර් නාද </option>
                    <option id ="Haryanvi-Tunes" value="Haryanvi Tunes"> හර්යානා නාද </option>
                </select>
            </div></div>
    </section>
      <!--<section class="col-md-4 col-xs-4">
      
         <div style="padding:10px;">
                                    <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                                        <option value="newboxes1" id="newboxes1s" selected="">English</option>
                                        <option value="newboxes2" id="newboxes2s" selected="">Tamil</option>
                                        <option value="newboxes3" id="newboxes3s" selected="">Sinhala</option>
                                    </select>

                                </div> -->
<!--        <div style="padding:10px;">
            <select style="float:right;" onchange="javascript:showonlyone(this.value);">
                <option value="newboxes1">English</option>
                <option value="newboxes2">Tamil</option>
                <option value="newboxes3">Sinhala</option>
            </select>

        </div>
    </section> -->
</section>
<script>
    document.getElementById("<%=request.getParameter("cat_type").replaceAll(" ", "-")%>").style.display = "none";
</script>

<%
    }
%>   
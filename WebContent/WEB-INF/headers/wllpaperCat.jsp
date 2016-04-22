
<%
    if (request.getParameter("cat_type") != null || request.getParameter("cat_type") != "") {
        String cat_value = request.getParameter("cat_type");
        System.out.println("cat_value for hidden "+cat_value);
%>



<%@ page pageEncoding="utf-8" %>

<section id="wall-head">
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><h2>Images</h2></div>
        <div class="newboxes" id="newboxes2"><h2>வால்பேப்பர்</h2></div>
        <div class="newboxes" id="newboxes3"><h2>ෙවෝල් ෙප්පර්</h2></div> 
    </section>
    <section class="col-md-6 col-xs-6">
        <div class="newboxes" id="newboxes1"><div style="padding:10px; float:left;width:100%;">
                
                <select style="width:100%; padding:5px;border:2px dotted #333;"  name ="cat_name" onchange="showCon(this.value)">
                    <option><%=request.getParameter("cat_type")%></option>
                    <option id="Tamil-Stars">Tamil Stars</option>
                    <option id="Kannada-Stars">Kannada Stars</option>
                    <option id="Telugu-Beauties">Telugu Beauties</option>
                    <option id="Bhojpuri-Beauties">Bhojpuri Beauties</option>
                    <option id="Sunny-Leone">Sunny Leone</option>
                    <option id="Bikini-Babes">Bikini Babes</option>
                    <option id="Hollywood-tars">Hollywood Stars</option>
                    <option id="Ultra-Hot-Babes">Ultra Hot Babes</option>
                    <option id="Sinhala-Art">Sinhala Art</option>
                    <option id="Bollywood-Stars">Bollywood Stars</option>
                    <option id="Bollywood-Actors">Bollywood Actors</option>
                    <option id="Jacqueline-Fernandez">Jacqueline Fernandez</option>
                    <option id="Holy-Deities">Holy Deities</option>
                    <option id="Cricket-Stars">Cricket Stars</option>
                    <option id="Sri-Lanka-Stars">Sri Lanka Stars</option>
                </select>

            </div></div>
        <div class="newboxes" id="newboxes2"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                    <option id="Kannada-Stars"  value="Kannada Stars">  தமிழ் நட்சத்திரங்கள் </option>
                    <option id="Telugu-Beauties" value="Telugu Beauties">கன்னடம் நட்சத்திரங்கள்   </option>
                    <option id="Bhojpuri-Beauties" value="Bhojpuri Beauties">தெலுங்கு அழகானவர்கள்   </option>
                    <option id="Sunny-Leone" value="Sunny Leone">போஜ்புரி அழகானவர்கள்     </option>
                    <option id="Bikini-Babes" value="Bikini Babes">சன்னி லியோன்  </option>
                    <option id="Hollywood-tars" value="Hollywood tars">பிகினி பேப்ஸ்  </option>
                    <option id="Hollywood-tars" value="Hollywood tars">ஹாலிவுட் நட்சத்திரங்கள்  </option>
                    <option id="Ultra-Hot-Babes" value="Ultra Hot Babes">அல்ட்ரா சூடான பேப்ஸ்  </option>
                    <option id="Sinhala-Art" value="Sinhala Art">சிங்களம் கலை</option>
                    <option id="Bollywood-Stars" value="Bollywood Stars">பாலிவுட் நட்சத்திரங்கள்  </option>
                    <option id="Bollywood-Actors" value="Bollywood Actors">பாலிவுட் நடிகர்கள்  </option>
                    <option id="Jacqueline-Fernandez" value="Jacqueline Fernandez">ஜாக்குலின் பெர்னாண்டஸ்  </option>
                    <option id="Holy-Deities" value="Holy Deities">பரிசுத்த தெய்வங்களின்  </option>
                    <option id="Cricket-Stars" value="Cricket Stars">கிரிக்கெட் நட்சத்திரங்கள்  </option>
                    <option id="Sri-Lanka-Stars" value="Sri-Lanka Stars">இலங்கை நட்சத்திரங்கள்  </option>

                </select>

            </div></div>
        <div class="newboxes" id="newboxes3"><div style="padding:10px; float:left;width:100%;">
                <select style="width:100%; padding:5px;border:2px dotted #333;" name ="cat_name" onchange="showCon(this.value)">
                    <option id="Kannada-Stars"  value="Kannada Stars">දෙමළ තරු </option>
                    <option id="Telugu-Beauties" value="Telugu Beauties">කන්නඩ තරු</option>
                    <option id="Bhojpuri-Beauties" value="Bhojpuri Beauties">තෙළිඟු අලංකාරයෙන් </option>
                    <option id="Sunny-Leone" value="Sunny Leone">බිහාර් අලංකාරයෙන් </option>
                    <option id="Bikini-Babes" value="Bikini Babes">සනී ලියෝන් </option>
                    <option id="Hollywood-tars" value="Hollywood tars">උණුසුම් ළදරුවන්ගේ </option>
                    <option id="Hollywood-tars" value="Hollywood tars">හොලිවුඩ් තරු </option>
                    <option id="Ultra-Hot-Babes" value="Ultra Hot Babes">අල්ට්රා උණුසුම් ළදරුවන්ගේ </option>
                    <option id="Sinhala-Art" value="Sinhala Art">සිංහල කලාව </option>
                    <option id="Bollywood-Stars" value="Bollywood Stars">බොලිවුඩ් තරු  </option>
                    <option id="Bollywood-Actors" value="Bollywood Actors">බොලිවුඩ් නළු </option>
                    <option id="Jacqueline-Fernandez" value="Jacqueline Fernandez">ජැකලින් ෆර්නැන්ඩස් </option>
                    <option id="Holy-Deities" value="Holy Deities">ශුද්ධ වැඳීම </option>
                    <option id="Cricket-Stars" value="Cricket Stars">ක්රිකට් තරු  </option>
                    <option id="Sri-Lanka-Stars" value="Sri-Lanka Stars">ශ්රී ලංකා තරු </option>
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

        </div> -->
        <!--                            <div style="padding:10px;">
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
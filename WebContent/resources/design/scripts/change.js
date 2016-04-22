function showonlyone(clr) {
  doIt();
if(clr == "" || clr == null){
} else if(clr=="home" || clr=="img" || clr=="vid" ||clr=="anim"||clr=="game" ||clr=="music"){
document.getElementById(clr).style.backgroundColor = "#571113";
}else {
}
    
      
    var xmlhttp;

    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
        {
            //document.getElementById("wait").innerHTML = 
			//alert(xmlhttp.responseText);
        }
    }
   /* xmlhttp.open("GET", "setDivValue.jsp?divVal="+thechosenone, true);
    xmlhttp.send();
    
    document.getElementById(thechosenone+"s").selected="selected";*/
    
    
    /*  var newboxes = document.getElementsByTagName("div");
            for(var x=0; x<newboxes.length; x++) {
                  name = newboxes[x].getAttribute("class");
                  if (name == 'newboxes') {
                        if (newboxes[x].id == thechosenone) {
                        newboxes[x].style.display = 'block';
                  }
                  else {
                        newboxes[x].style.display = 'none';
                  }
            }
      }*/
}



$(function() {
 $(".navi li").on("click", function() {
   $(".navi li").removeClass("active");
  $(this).css('background-color', 'blue');
  // $(this).addClass("active");
 });
 
});


function doIt() {
  if (document.all)
//    mypage.style.visibility="visible";
 document.getElementById("mypage").style.visibility = "visible";
  else
      document.getElementById("mypage").style.visibility = "visible";
//    document.mypage.visibility="visible" 
  }

/*
$('.active_m').click(function(e) {
    e.preventDefault();
    $(this).css('background-color', 'blue');
})*/


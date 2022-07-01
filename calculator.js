function myfunction(){
    var h = document.getElementById("height")
    var w =document.getElementById("width")
    if((h.value) && (w.value)>=0){
        var area= (h.value)*(w.value);
		 document.getElementById("area").value=area
		 document.getElementById("area2").innerHTML=area
        alert(" the area is " + area);
    }
    else{
        alert("invalid number");
    }
       var h2 = document.getElementById("height").value
      var w2 =document.getElementById("width").value
	 
	console.log(h2*w2)

}
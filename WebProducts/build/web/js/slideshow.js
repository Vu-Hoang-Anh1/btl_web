/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var slideIndex=0;
showSlides();
var slides,dots;
// KHai bào hàm hiển thị slide
function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }

    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    //tự động chuyển đổi slide sau 5s
    setTimeout(showSlides, 5000);
}
function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(index) {
  if (index> slides.length) {index = 1}
  else if(index<1){index = slides.length}
  for (i = 0; i < slides.length; i++) {
     slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
}
slides[index-1].style.display = "block";  
dots[index-1].className += " active";
}

function setCheck(obj){
                var fries = document.getElementsByName('cidd');
                if ((obj.id=='c0') && (fries[0].checked==true))
                {
                    for (var i = 1; i < fries.length; i++)
                        fries[i].checked = false;
                } else{
                    for (var i = 1; i < fries.length; i++) {
                        if (fries[i].checked==true) {
                            fries[0].checked=false;
                            break;
                        }
                    }
                }
                document.getElementById('f1').submit();
            }

var acc = document.getElementsByClassName("question-item");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}

$('.collapse').on('shown.bs.collapse', function () {
  $(this).prev().addClass('active');
});

$('.collapse').on('hidden.bs.collapse', function () {
  $(this).prev().removeClass('active');
});

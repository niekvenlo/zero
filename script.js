$(function() {
  init();
});

init = function() {
  function log(p) {
    console.log(p);
    $("#ball").append(p+"<br>");
  }

  $("#ball").click(function(ma) { $(this).slideUp(); });



}

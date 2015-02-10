$(document).ready( function () {


  $("#del-btn").click( function (event) {
    event.preventDefault;
    var delete_url = "/contacts/" + $("#id").val();
    $("#_method").val("delete");
    $("form").attr("action", delete_url )
    $("form").submit()
  });
  //
  // $("#upd-btn").click( function (event) {
  //   event.preventDefault;
  //   $("form").submit
  // });

  // $("tr").click( function (event) {
  //   event.preventDefault;
  //   window.location = event.target.firstChild.href;
  // })

})

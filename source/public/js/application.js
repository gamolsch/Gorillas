$(document).ready(function() {
 event.preventDefault()
  $("#create").on("click", function(){
    $("#create-form").toggle()
    })
  $('#sign-in').on("click", function(event){
    event.preventDefault()
    $("#signin-form").toggle()
  })
  $("#add-option").on("click", function(event){
    event.preventDefault()
        var list_item = $(".choices li").length + 1
        $(".choices").append('<li id="option"><input type="text" name="' + list_item + '" placeholder="Choice ' + list_item + '"></li>')
  })

});

$(document).ready(function() {
  $("#create").on("click", function(){
    $("#create-form").show()
    $(".container").hide()
    $("#create-form").submit(function(event){


      $.ajax(
      {
        url: '/',
        type: "post",
        data: $(this).serialize(),
        dataType: "html",
        success:function(data)
        {
          console.log("it Works!")
        }
      })

    })
  })
});

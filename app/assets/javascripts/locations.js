$(document).ready(function(){ 
  // Hide all Selectors
  $('#state,#city').hide();

  $('#country').click(function(e){
    if ($("#country").val()!=""){
      $('#state').show();
      $('#state').html('');
      $('<option>').val('').text('Select State').appendTo('#state');
      var data =JSON.parse(doAjax($("#country").val(),"Country"));
      for (var i=0;i<data.places.length;i++){
        $('#state')         
        .append($("<option></option>")
         .attr("value",data.places[i].id)
         .text(data.places[i].name)); 
      }
    }else{
      $('#state,#city').hide();
    }
  }); 

  $('#state').click(function(e){
    if ($("#state").val()!=""){
      $('#city').show();
      $('#city').html('');
      $('<option>').val('').text('Select City').appendTo('#city');
      var data=JSON.parse(doAjax($("#state").val(),"State"));
      for (var i=0;i<data.places.length;i++){
        $('#city').append($("<option></option>")
          .attr("value",data.places[i].id)
          .text(data.places[i].name));
      }
    }else{
      $('#city').hide();
    }
  });

  $('#city').click(function(e){
    $('.info').children().html("")
    if ($("#city").val()!=""){
      var data=JSON.parse(doAjax($("#city").val(),"City"));
      console.log(data);
      $('.place').html("Place:"+data.places.name)
      $('.type').html("Type:City")
      $('.code').html("Code:"+data.places.code)
      if (data.places.population==null || data.places.population=="") {
        $('.population').html("Population:Data Not Available")
      }else{
        $('.population').html("Population:"+data.places.population)
      }
    }else{
      $('.info').children().html("")
    }
  });
});
function doAjax(id,type){
  return $.ajax({
    type: "POST",
    url: '/get_location',
    async: false,
    data: {'id':id,'type':type},
    success: function (data) {
    }
  }).responseText;
}
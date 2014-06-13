$(document).ready(function(){ 
  // Hide all Selectors
  $('#state,#city').hide();

  $('#country').click(function(e){
    if ($("#country").val()!=""){
      $('#state').show();
      $('#state').html('');
      $('<option>').val('').text('Select State').appendTo('#state');
      $.ajax({
        type: "POST",
        url: '/getstates',
        data: {'id':$("#country").val()},
        success: function (data) {
          // console.log(data.states);
          for (var i=0;i<data.states.length;i++){
            // console.log(data.states[i].id);
            // console.log(data.states[i].name);
            $('#state')         
            .append($("<option></option>")
             .attr("value",data.states[i].id)
             .text(data.states[i].name)); 
          }
        }
      });
    }else{
      $('#state,#city').hide();
    }
  }); 

  $('#state').click(function(e){
    if ($("#state").val()!=""){
      $('#city').show();
      $('#city').html('');
      $('<option>').val('').text('Select City').appendTo('#city');
      $.ajax({
        type: "POST",
        url: '/getcities',
        data: {'id':$("#state").val()},
        success: function (data) {
          // console.log(data);
          for (var i=0;i<data.cities.length;i++){
            // console.log(data.cities[i].id);
            // console.log(data.cities[i].name);
            $('#city').append($("<option></option>")
              .attr("value",data.cities[i].id)
              .text(data.cities[i].name));
          }
        }
      });
    }else{
      $('#city').hide();
    }
  });

  $('#city').click(function(e){
    $('.info').children().html("")
    if ($("#city").val()!=""){
      $.ajax({
        type: "POST",
        url: '/getcity',
        data: {'id':$("#city").val()},
        success: function (data) {
          console.log(data.city);
          $('.place').html("Place:"+data.city.name)
          $('.type').html("Type:City")
          $('.code').html("Code:"+data.city.code)
          console.log(data.city.population==null);
          if (data.city.population==null || data.city.population=="") {
            $('.population').html("Population:Data Not Available")
          }else{
            $('.population').html("Population:"+data.city.population)
          }
          // $('.place').html(data.city.name)
        }
      });
    }else{
      $('.info').children().html("")
    }
  });

});
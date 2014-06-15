$(document).ready(function(){ 
  // Hide all Selectors and Views
  clearView();
  $('#state,#city').hide();

  $('#country').click(function(e){
    $('#state,#city').hide();
    if ($("#country").val()!=""){
      var gen_type="state"
      var type="Country";
      var data =doAjax($("#country").val(),type);
      generateDropdown(gen_type,data.places);
      generateViews(data.selected,type);
    }else{
      $('#state,#city').hide();
      clearView();
    }
  }); 

  $('#state').click(function(e){
    if ($("#state").val()!=""){
      $('#city').hide();
      var gen_type="city"
      var type="State";
      var data=doAjax($("#state").val(),type);
      generateDropdown(gen_type,data.places);
      generateViews(data.selected,type);
    }else{
      $('#city').hide();
      clearView();
    }
  });

  $('#city').click(function(e){
    clearView();
    if ($("#city").val()!=""){
      type="City";
      var data=doAjax($("#city").val(),type);
      generateViews(data.selected,type);
    }else{
      clearView();
    }
  });

});
function doAjax(id,type){
  return JSON.parse($.ajax({
    type: "POST",
    url: '/get_location',
    async: false,
    data: {'id':id,'type':type},
    success: function () {
    }
  }).responseText);
}
function generateDropdown(type,data){
  $('#'+type).show();
  $('#'+type).html('');
  $('<option>').val('').text('Select '+type).appendTo('#'+type);
  for (var i=0;i<data.length;i++){
    $('#'+type).append($("<option></option>")
      .attr("value",data[i].id)
      .text(data[i].name));
  }
}
function generateViews(data,type){
  var currency,timezone;
  $('.info').show()
  if (type=="Country") {
    currency=data[0].currency
    timezone=data[0].timezone
    data=data[0].country
    if (currency.name==null || currency.name=="") {
      $('.currency').children('span').html("Data Not Available")
    }else{
      $('.currency').children('span').html(currency.name+"("+(currency.symbol)+")")
    }
    if (timezone.name==null || timezone.name=="") {
      $('.timezone').children('span').html("Data Not Available")
    }else{
      $('.timezone').children('span').html(timezone.name+"("+timezone.offset+")")
    }
  }else{
    $('.timezone,.currency').hide()
  }
  $('.place').children('span').html(data.name)
  $('.type').children('span').html(type)
  $('.code').children('span').html(data.code)
  if (data.population==null || data.population=="") {
    $('.population').children('span').html("Data Not Available")
  }else{
    $('.population').children('span').html(data.population+"(in million)")
  }
  $('.area').children('span').html(data.area+"(in 100sq Km)")
  if (data.wiki_link==null || data.wiki_link=="") {
    $('.wiki').children('span').html("Data Not Available")
  }else{
    $('.wiki').children('span').html("See on <a href="+data.wiki_link+" target=_blank>Wiki</a>")
  }
  if (type!="City") {
    if (data.literacy==null || data.literacy=="") {
      $('.literacy').children('span').html("Data Not Available")
    }else{
      $('.literacy').children('span').html(data.literacy+"%")
    }
  }else{
    $('.literacy').hide()
  }
}
function clearView(){
  $('.info').hide()
  $('.info').children('p').each(function() {
    $(this).children('span').html('');
  });
}
function clearDropdown(type){

}
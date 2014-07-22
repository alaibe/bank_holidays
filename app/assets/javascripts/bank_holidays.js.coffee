$(document).ready ->
  $('[data-behaviour~=datepicker]').datepicker(
    format: "dd/mm/yyyy"
  );

  $('[data-behaviour~=select2]').select2(
    allowClear: true
  );


  $('.switch_form').on 'click', ->
    $('.date-tag').removeClass('display-none')
    $('.year-tag').removeClass('display-none')
    type = $('#type').val()
    if type == 'date'
      $('#type').val('year')
    else
      $('#type').val('date')
    $('.'+type+'-tag').addClass('display-none')

    false

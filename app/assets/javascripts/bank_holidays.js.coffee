$(document).ready ->
  $('[data-behaviour~=datepicker]').datepicker(
    format: "dd/mm/yyyy"
  );

  $('[data-behaviour~=select2]').select2(
    allowClear: true
  );

  $('.search-form label input').on 'change', ->
    label = $(this).parent()
    label.toggleClass('border')

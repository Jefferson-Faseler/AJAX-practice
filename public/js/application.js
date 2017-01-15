$(document).ready(function () {
  $('form').submit(function(event) {
    event.preventDefault();
    var uri = $(event.target).attr('action')
    var sides = $('form').serialize();
    $.ajax({
      type: 'post',
      url: uri,
      data: sides
    }).success(function(response) {
      $('#die-container').html(response);
    });
  });
});

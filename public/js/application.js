$(document).ready(function() {
	commentListener();
});

var commentListener = function() {
	  $('.comment-form').submit(function(event) {
    event.preventDefault();

    var $form = $(this);

    $.ajax({
      url: $form.attr('action'),
      method: $form.attr('method'),
      data: $form.serialize()
    })

    .done(function(response) {
      $('.comments-container').append(response);
    })

    .fail(function() {
      alert('Uh oh, something went wrong')
    })
  });
}
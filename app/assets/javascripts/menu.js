var Menu = {
  init: function() {
    $('form#new_menu').on('submit', this.save) // ADD LISTENER

  },

  save: function(e) {
    e.preventDefault()
    var $form = $(this)
    $.ajax({
      url: $form.prop('action'),
      type: $form.prop('method'),
      data: $form.serialize()
    }).done(function(menu){
      $('ul').append(menu)
    }).error(function(failError) {
      error = $('<h1></h1>').text(failError.responseText).addClass('error')
      $('body').prepend(error)
      setTimeout(function() {
        $('.error').fadeOut()
        $('img').toggle('explode')
      }, 3000)
    })
  }  
}





$(document).ready(function() {
  Menu.init()
})

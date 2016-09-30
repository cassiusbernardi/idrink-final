// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
//= require bootstrap-datepicker
//= require jquery.inputmask
//= require jquery.inputmask.extensions
//= require jquery.inputmask.numeric.extensions
//= require jquery.inputmask.date.extensions


$(document).ready(function(){
  $('.datepicker').datepicker({format: 'dd-mm-yyyy'});
  $('#user_cpf').inputmask("999.999.999-99"); 
  $('#user_telefone').inputmask("(99)9.9999.9999"); 

/**** Contato ****/

    $('#characterLeft').text('Faltam 280 caracteres');
    $('#message').keydown(function () {
        var max = 280;
        var len = $(this).val().length;
        if (len >= max) {
            $('#characterLeft').text('Sua mensagem atingiu o limite de caracteres');
            $('#characterLeft').addClass('red');
            $('#btnSubmit').addClass('disabled');            
        } 
        else {
            var ch = max - len;
            $('#characterLeft').text(ch + ' caracteres faltando');
            $('#btnSubmit').removeClass('disabled');
            $('#characterLeft').removeClass('red');            
        }
    });     
    

});
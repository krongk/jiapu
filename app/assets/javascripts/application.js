// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
// require_tree .
//= require jquery
//= require jquery_ujs
//= require jquery.cycle.all
//= require bootstrap
//= require tinymce
//= require tinymce-jquery
//= require bootstrap-modal
//= require bootstrap-modalmanager
//= require jquery-fileupload
//= require jquery-fileupload/locale
//= require home
//= require notes


$(document).ready(function() {
  //load_editors();

 // tinymce-jquery 方式
  $('textarea').tinymce({
    theme: 'advanced',
    language: "zh-cn",
    plugins: "table",
    theme_advanced_buttons1 : "bold,italic,underline,separator,strikethrough,justifyleft,justifycenter,justifyright, justifyfull,bullist,numlist,undo,redo,link,unlink, image,table,removeformat,code",
    theme_advanced_buttons2 : "",
    theme_advanced_buttons3 : "",
    theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left",
    //theme_advanced_statusbar_location : "bottom",
  });
});

//no jquery 方式
function load_editors(){
  tinyMCE.init({
    mode: 'textareas',
    language : "zh-cn",
    //theme: 'simple'
    theme: 'advanced'
  });
}

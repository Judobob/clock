// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require angular-all-unstable/angular
//= require angular-all-unstable/angular-resource
//= require angular-pageslide-directive
//= require angular-vidbg
//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require angular-datatables
//= require turbolinks
//= require jquery_nested_form
//= require bootstrap-sass/assets/javascripts/bootstrap-sprockets
//= require_tree .

$(function() {
  var faye = new Faye.Client('http://192.168.1.68:9292/faye');
  faye.subscribe('/messages/new', function (data) {
    eval(data);
  });
});
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#products').dataTable
    processing: true
    serverSide: true
    ajax: $('#products').data('source')
    pagingType: 'full_numbers'

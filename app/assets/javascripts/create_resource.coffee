window.App ||= {}

App.showCreateResourceList = (evt) ->
  $('.create-resource__list').toggleClass "show"

$(document).on "page:change", ->
  $("[data-js='create-resource']").on "click", (evt) => App.showCreateResourceList(evt)

$ ->
  # partie carte
  window.mapjuppe =
    L.map('map')
    .setView([46.8566, 2.3522], 6)
  L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
    maxZoom: 18,
    id: 'mapboxajx.a6594fec',
    accessToken: 'pk.eyJ1IjoibWFwYm94YWp4IiwiYSI6ImNpcXIwOTk5ejAwODRoem5tZXo4anpsNGgifQ.PIkViJP7IEBgvlQc7__pcg'
  }).addTo(mapjuppe)
  L.marker([48.8566, 2.3522]).addTo(mapjuppe)
  .bindPopup('A pretty CSS3 popup.<br> Easily customizable.')
  .openPopup();

  # partie interface
  $('#region_selector').on 'change', (event) ->
    console.log $(this).val()
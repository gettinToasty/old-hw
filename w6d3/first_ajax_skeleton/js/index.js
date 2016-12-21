console.log("Hello from the JavaScript console!");
$.ajax({
  type: 'GET',
  url: 'http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b',
  success(data) {
    console.log(data.weather);
  }
});
// Your AJAX request here


console.log("That's the weather");
// Add another console log here, outside your AJAX request

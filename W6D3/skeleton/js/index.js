console.log("Hello from the JavaScript console!");

// Your AJAX request here

$.ajax( {
  type: "GET",
  url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
  datatype: 'json',
  success: function (resp) {
    console.log(resp.weather[0]["main"]);
  }
});
// Add another console log here, outside your AJAX request

console.log("this is the last line of index.js");

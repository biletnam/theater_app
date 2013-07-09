$(document).ready(function(){
  console.log('hi!');
  // $("body").on("click", ".seat", function(e){

  // });

  // console.log('!');
  // $("body").on("click", ".seat img", function(e){
  //   console.log('click');
  //   $(this).next("a").click();
  // });
});

// If I want to create ability for user to select multiple seats with JS (instead of many AJAX calls)
// use below, but need to add final function to send "selected" to the save_seat_path




// $(function() {

//   // ui elements and theater data
//   var theater        = $('#theater');
//   var seats_container= $('#seats_container');
//   var seats          = $('.seat');
//   var selected       = [];

//   // call this to ready the theater for seat selection
//   var initialize = function() {
//     $.each(seats, function(k,v) {
//       seats[k] = $(v);
//       var seat = seats[k];
//       seat.data('img-id', seat.find('img').attr('id'));
//       seat.on('click', handle_click);
//     });
//     theater.fadeIn();
//   };

//   var reserve_seat = function(seat) {
//     seat.addClass('active');
//     selected.push(seat);
//   };

//   var is_seat_reserved = function(seat) {
//     return seat.hasClass('reserved');
//   };

//   var handle_click = function() {

//     var seat = $(this);

//     if (is_seat_reserved(seat)) {
//       return false;
//     }

//     reserve_seat(seat);
//   };


//   initialize();


// });
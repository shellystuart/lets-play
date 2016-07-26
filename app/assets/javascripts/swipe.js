$(function() {
  $("body").swipe({
    swipeRight:function(event, direction, distance, duration, fingerCount, fingerData) {
      $("#button").click();
    }
  });
});

$(function() {
  $("body").swipe({
    swipeLeft:function(event, direction, distance, duration, fingerCount, fingerData) {
      $(".js-off-canvas-exit").click();
    }
  });
});

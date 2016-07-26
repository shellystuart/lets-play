$(document).ready(function() {
  $(function() {
    $("body").swipe({
      swipeRight:function(event, direction, distance, duration, fingerCount, fingerData) {
        $("#button-show").click();
      }
    });
  });

  $(function() {
    $("body").swipe({
      swipeLeft:function(event, direction, distance, duration, fingerCount, fingerData) {
        $("#button-hide").click();
      }
    });
  });

  $(function() {
    $("#button-hide").hide();
  });

  $(function() {
    $("#button-show").click(function() {
      $("#button-show").hide();
      $("#button-hide").show();
    });
  });

  $(function() {
    $("#button-hide").click(function() {
      $("#button-hide").hide();
      $("#button-show").show();
    });
  });

  $(function() {
    $(".js-off-canvas-exit").click(function() {
      $("#button-hide").hide();
      $("#button-show").show();
    });
  });
});

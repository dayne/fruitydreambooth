$(function() {
  timer = null;
  $('#big-red').click(function() {
    if (timer == null) {
      $('#picture-output').empty();
      UpdateTimerDisplay(3);
      seconds = 3
      timer = setInterval("CameraCountDown()",10);
    }
  });
});

function CameraCountDown()
{
  seconds -= .01;
  UpdateTimerDisplay(seconds)
  if (seconds <= 0) {
    clearTimeout(timer);
    SetTimerDisplay('Say Cheese!');
    $.ajax({
      url: "/capture"
    }).done(function(data) {
      SetTimerDisplay('');
      DisplayPicture(data);
      timer = null;
    });
  }
}

function UpdateTimerDisplay(time)
{
  $('#timer').html(time.toFixed(2));
}

function SetTimerDisplay(text)
{
  $('#timer').html(text);
}

function DisplayPicture(file)
{
  $('#picture-output').append('<img src="./'+file+'">');
}

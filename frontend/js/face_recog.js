//



if (checkData('user')) {
  $('#logInBtn').addClass('uk-hidden');
} else {
  Nav.assign('home.html');
  $('#profileBtn').addClass('uk-hidden');
  $('#watchingMenu').addClass('uk-hidden');
  $('#faceRecogMenu').addClass('uk-hidden');
  $('#logout').addClass('uk-hidden');
}


$('#logInBtn').click(function () {
  Nav.assign('login-register.html');
});


$('#submit').click(function functionName() {

  fd = new FormData();
  fd.append('profImg', document.getElementById('profImgUpload').files[0]);


  $.ajax({
    type: "POST",
    url: url + 'missing/fetch/reg',
    data: fd,
    success: function(data) {

    },
   error: function(error) {
     console.log(error);
   },
   dataType: 'json',
   processData: false,
   contentType: false
  });
});



function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#imgDisplay')
                .attr('src', e.target.result);
                // .width(150)
                // .height(200);
        };

        reader.readAsDataURL(input.files[0]);
    }
}














//

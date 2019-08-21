//


if (checkData('user')) {
  $('#logInBtn').addClass('uk-hidden');
} else {
  $('#profileBtn').addClass('uk-hidden');
  $('#watchingMenu').addClass('uk-hidden');
  $('#faceRecogMenu').addClass('uk-hidden');
  $('#logoutMenu').addClass('uk-hidden');

}

$('#logInBtn').click(function () {
  Nav.assign('login-register.html');
});

$(document).ready(function () {

    $.ajax({
      type: "POST",
      url: url + 'missing/fetch',
      data: {
        'skey': getData('user').skey,
        'uid': getData('user').uid,
        'start': 0
      },
      success: function(data) {
        if (data) {
          console.log(data);
          var template = $('#missing-card').html();
          for (var i = 0; i < data.data.length; i++) {
            var missingPerson = data.data[i];

            var personData = {
              'mid': missingPerson[0],
              'fname': missingPerson[1],
              'lname': missingPerson[2],
              'age': missingPerson[16],
              'gender': missingPerson[17],
              'address': missingPerson[14],
              'city': missingPerson[15]
            };

            var html = Mustache.render(template, personData);
            $('#card-container').append(html);

          }
        }
      },
     error: function(error) {
       console.log(error);
     },
     dataType: 'json'
    });

});























//

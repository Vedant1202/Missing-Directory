

$(document).ready(function () {
  $('#registerBtn').prop("disabled", true);
  deleteData('user');
});


$('#loginBtn').click(function () {
  // alert('submit')

  var username = $('#username-login').val().trim();
  var password = $('#password-login').val();

  var formData = {
    'username': username,
    'password': password
  };


  $.ajax({
    type: "POST",
    url: 'http://localhost:5000/login',
    data: formData,
    success: function(data) {
      if (!data.valid) {
        alert('The username or password entered is incorrect');
      } else {
        setData('user', JSON.stringify(data));
        Nav.assign('home.html');
      }
    },
   error: function(error) {
     console.log(error);
   },
   dataType: 'json'
  });

});

// $('#username').focusout(function () {
//
//   var uname = $(this).val();
//
//   data = {
//     'username': uname
//   };
//
//   $.ajax({
//     type: "POST",
//     url: 'http://localhost:5000/user/check',
//     data: data,
//     success: function(data) {
//       if (!data.valid) {
//         // Username is already taken
//         $('#username').addClass('err');
//         $('#takenuser').addClass('showelem');
//         $('#registerBtn').prop("disabled", true);
//       } else {
//         $('#username').removeClass('err');
//         $('#takenuser').removeClass('showelem');
//       }
//     },
//    error: function(error) {
//      console.log(error);
//    },
//    dataType: 'json'
//   });
//
// });




$('#password-confirm').keyup(function () {
  var val = $(this).val();
  var pass = $('#password').val();

  if (val == pass) {
    $('#matchpass').removeClass('showelem');
    $('#registerBtn').prop("disabled", false);
  } else {
    $('#matchpass').addClass('showelem');
    $('#registerBtn').prop("disabled", true);
  }

});

$('#phone').keyup(function () {
  var val = $(this).val().trim();

  if (val.length == 10) {
    $('#phonevalid').removeClass('showelem');
    $('#registerBtn').prop("disabled", false);
  } else {
    $('#phonevalid').addClass('showelem');
    $('#registerBtn').prop("disabled", true);
  }

});





$('#registerBtn').click(function () {
  // alert('submit')

    var username = $('#username').val().trim(),
        password = $('#password').val(),
        email = $('#email').val().trim(),
        fname = $('#fname').val().trim(),
        lname = $('#lname').val().trim(),
        phone = $('#phone').val().trim(),
        date = $('#date').val().trim(),
        address = $('#address').val().trim();


    if (username && password && email && fname && lname && phone && date && address) {

          var formData = {
            'username': username,
            'email': email,
            'password': password,
            'fname': fname,
            'lname': lname,
            'phone': phone,
            'date': date,
            'address': address
          };

          // console.log(formData);

          $.ajax({
            type: "POST",
            url: 'http://localhost:5000/user/add',
            data: formData,
            success: function(data) {
              setData('user', JSON.stringify(data));
              Nav.assign('home.html')
            },
           error: function(error) {
             console.log(error);
           },
           dataType: 'json'
          });

    } else {

      alert('Please check if all the fields are filled');

    }

});





$('#email').keyup(function() {
  var value = $(this).val().trim();
  var re = /\S+@\S+\.\S+/;
  console.log(value);
  // console.log(value);
  if (!re.test(value)) {
    $('#emailvalid').addClass('showelem');
    $('#registerBtn').prop("disabled", true);
  } else {
    $('#emailvalid').removeClass('showelem');
    $('#registerBtn').prop("disabled", false);
  }
});










//

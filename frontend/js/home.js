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
























//

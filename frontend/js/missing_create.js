
if (!checkData('user')) {
  Nav.assign('home.html');
}



$('#missing').click(function () {

  var fname = $('#fname').val().trim(),
      lname = $('#lname').val().trim(),
      alias = $('#alias').val().trim(),
      gender = $('#gender').val().trim(),
      age = $('#age').val().trim(),
      address = $('#address').val().trim(),
      city = $('#city').val().trim(),
      nationality = $('#nationality').val().trim(),
      lang = $('#lang').val().trim(),
      height = $('#height').val().trim(),
      weight = $('#weight').val().trim(),
      identifications = $('#identifications').val().trim(),
      eye_color = $('#eye_color').val().trim(),
      skin_color = $('#skin_color').val().trim(),
      hair_color = $('#hair_color').val().trim(),
      conditions = $('#conditions').val().trim(),
      medications = $('#medications').val().trim(),
      prescribed_by = $('#prescribed_by').val().trim(),
      med_hist = $('#med_hist').val().trim(),
      other_med = $('#other_med').val().trim(),
      fam_phone = $('#fam_phone').val().trim(),
      pol_phone = $('#pol_phone').val().trim(),
      pol_address = $('#pol_address').val().trim();


      if (fname && pol_phone && pol_address) {

        $.ajax({
          type: "POST",
          url: url + 'missing/fetch/reg',
          data: {
            'skey': getData('user').skey,
            'uid': getData('user').uid,
            'fname': fname,
            'lname': lname,
            'alias': alias,
            'gender': gender,
            'age': age,
            'address': address,
            'city': city,
            'nationality': nationality,
            'languages_know': lang,
            'height': height,
            'weight': weight,
            'identifications': identifications,
            'eye_color': eye_color,
            'skin_color': skin_color,
            'hair_color': hair_color,
            'conditions': conditions,
            'medications': medications,
            'prescribed_by': prescribed_by,
            'med_hist': med_hist,
            'other_med': other_med,
            'fam_phone': fam_phone,
            'pol_phone': pol_phone,
            'pol_address': pol_address
          },
          success: function(data) {
            if (data.valid) {
              setData('newMissingMID', JSON.stringify({'mid': data.mid}));
              Nav.assign('first_report.html');
            }
          },
         error: function(error) {
           console.log(error);
         },
         dataType: 'json'
        });

      } else {
        alert('Please fill in the required fields');
      }


});















//

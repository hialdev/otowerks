function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        $('#image-preview').attr('src', e.target.result);
        $('#image-preview').hide();
        $('#image-preview').fadeIn(650);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  
  $("#file-input").change(function() {
    readURL(this);
});

$('.input-tracking').keyup(function(){
  $("#preview-tracking").text($(this).val());
});

$('.input-status').keyup(function(){
  var color = $("#select-status").val();
  $("#preview-status").addClass("badge bg-"+color);
  $("#select-status").change(function(){
    var color = $(this).val();
    $("#preview-status").attr("class","");
    $("#preview-status").addClass("badge bg-"+color);
  });
  $("#preview-status").text($(this).val());
});
//Social Media
$('.socmed-icon').keyup(function(){
  if ($(this).val() === "" || $(this).val() === null) {
    $(".socmed-preview").addClass('d-block');
    $(".socmed-preview .iconify").attr('data-icon',"");
    $(".socmed-preview .platform").text("");
  }else{
    $(".socmed-preview").removeClass('d-none');
    $(".socmed-preview .iconify").attr('data-icon',$(this).val());
    $(".socmed-preview .platform").text($(this).val());
  }
});

// Setting Users / Profile
function changeImage(input,preview) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      $(preview).attr('src', e.target.result);
      $(preview).hide();
      $(preview).fadeIn(650);
    }
    reader.readAsDataURL(input.files[0]);
  }
}
function changeText(input,preview) {
  $(input).keyup(function(){
    var value = $(input).val();
    $(preview).text(value);
    return false;
  });
}
//Image PP
$(".input-pp").change(function() {
  changeImage(this,'.preview-pp');
});
//Image Cover
$(".input-cover").change(function() {
  changeImage(this,'.preview-cover');
});
//Change Name Text
changeText(".input-name",".preview-name");
changeText(".input-username",".preview-username");
changeText(".input-mail",".preview-mail");
changeText(".input-no",".preview-no");
changeText(".input-desc",".preview-desc");

// Setting -------------------
//Logo
$("#logo-input").change(function() {
  changeImage(this,'.logo-preview');
});
//Favicon
$("#favicon-input").change(function() {
  changeImage(this,'.favicon-preview');
});
//----------------------------

function ytimage(idyt) {
  var ytimg = "http://img.youtube.com/vi/"+idyt+"/0.jpg";
  return ytimg;
}

function ytembed(idyt) {
  var ytembed = "https://www.youtube.com/embed/"+idyt;
  return ytembed;
}
$('.idyt-input').keyup(function(){
  console.log($(this).val())
  $(".idyt-thumbnail").attr('src',ytimage($(this).val()));
  $("#idyt-embed").attr('src',ytembed($(this).val()));
});
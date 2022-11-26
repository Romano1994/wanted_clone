$(function () {
  // $(".loginform-id__div__input-submit").attr("disabled", true);
  // // 이메일 유효성 검사
  // setInterval(function () {
  //   var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
  //   var email = $(".loginform-id__div__input-id").val();
  //   if (exptext.test(email)) {
  //     $("#idDiv").empty();
  //     $(".loginform-id__div__input-id").removeClass(
  //       "loginform-id__div__input-id-enable"
  //     );
  //     $(".loginform-id__div__input-submit").addClass(
  //       "loginform-id__div__input-submit-enable"
  //     );
  //     $(".loginform-id__div__input-submit").attr("disabled", false);
  //   } else if (!exptext.test(email) && email) {
  //     $("#idDiv").html("올바른 이메일을 입력해주세요.");
  //     $(".loginform-id__div__input-id").addClass(
  //       "loginform-id__div__input-id-enable"
  //     );
  //     $(".loginform-id__div__input-submit").attr("disabled", true);
  //     $(".loginform-id__div__input-submit").removeClass(
  //       "loginform-id__div__input-submit-enable"
  //     );
  //   }
  // }, 1000);

  // 로그인 비밀번호 입력창 유효성 검사
  setInterval(function () {
    var password = $(".loginform-pwd__input-pwd").val();
    if (password) {
      $(".loginform-pwd__input-next").attr("disabled", false);
      $(".loginform-pwd__input-next").addClass(
        "loginform-pwd__input-next-enable"
      );
    } else {
      $(".loginform-pwd__input-next").attr("disabled", true);
      $(".loginform-pwd__input-next").removeClass(
        "loginform-pwd__input-next-enable"
      );
    }
  }, 1000);

  // 핸드폰번호 유효성 검사
  phoneNum = setInterval(function () {
    var tel = $(".loginform-signup__tel__certify__telnum").val();
    if (tel) {
      $(".loginform-signup__tel__certify__get-certify").addClass(
        "loginform-signup__tel__certify__get-certify-writing"
      );
      $(".loginform-signup__tel__certify__get-certify").attr("disabled", false);
    } else {
      $(".loginform-signup__tel__certify__get-certify").attr("disabled", true);
      $(".loginform-signup__tel__certify__get-certify").removeClass(
        "loginform-signup__tel__certify__get-certify-writing"
      );
    }
  }, 1000);

  // 회원가입 버튼 비활성화
  $(".loginform-signup__signup-btn").attr("disabled", true);

  // 회원가입 창 유효성 검사
  setInterval(function () {
    var isName = $("input[name='name']").val();
    var certify = $("#certify").val();
    var isCheck1 = $("#agree-14").is(":checked");
    var isCheck2 = $("#agree-use").is(":checked");
    var isCheck3 = $("#agree-info").is(":checked");
    var pwd = $("#pwd").val();
    var repwd = $("#repwd").val();

    // console.log("입력번호 체크" + certify);
    // console.log("인증번호 체크" + certifyNum);

    if (certify == certifyNum) {
      $("#certifyDiv").html("인증완료");
      $(".loginform-signup__tel__certify__telnum").attr("readonly", "readonly");
      $("#certify").attr("readonly", "readonly");
      $(".loginform-signup__tel__certify__telnum").addClass(
        "loginform-signup__tel__certify__telnum-disable"
      );
      $("#certify").addClass("certify-disable");
    }

    if (pwd != repwd && pwd) {
      $("#pwdDiv").text("비밀번호가 다릅니다.");
    } else {
      $("#pwdDiv").text("");
    }
    if (
      isName &&
      certify == certifyNum &&
      isCheck1 &&
      isCheck2 &&
      isCheck3 &&
      pwd == repwd &&
      pwd
    ) {
      $(".loginform-signup__signup-btn").attr("disabled", false);
      $(".loginform-signup__signup-btn").addClass(
        "loginform-signup__signup-btn-enable"
      );
    } else {
      $(".loginform-signup__signup-btn").attr("disabled", true);
      $(".loginform-signup__signup-btn").removeClass(
        "loginform-signup__signup-btn-enable"
      );
    }
  }, 1000);
});

var id;
// 회원 유무 확인
$(".loginform-id__div__input-submit").click(function () {
  id = $(".loginform-id__div__input-id").val();
  $.ajax({
    type: "post",
    url: "/controller/user/checkId",
    data: "id=" + id,
    success: function (data) {
      var userDTO = data;
      if (userDTO == "") {
        $(".loginform-id").hide();
        $("#signup-id").val(id);
        $(".loginform-signup").show();
      } else {
        $(".loginform-id").hide();
        $(".loginform-pwd").show();
      }
    },
    error: function (err) {
      console.log(err);
    },
  });
});

//회원가입
$(".loginform-signup__signup-btn").click(function () {
  $.ajax({
    type: "post",
    url: "/controller/user/signUp",
    data: $(".loginform-signup__form").serialize(),
    success: function () {
      alert("회원가입이 완료되었습니다");
      location.href = "/controller/user/loginForm";
    },
    error: function (err) {
      console.log(err);
    },
  });
});
//회원가입 뒤로가기
$(".loginform-signup__header__cancel-btn").click(function () {
  if (
    confirm("회원가입을 취소하고 이전 화면으로 되돌아갑니다. 계속하시겠어요?")
  ) {
    location.href = "/controller/user/loginForm";
  }
});

// 로그인
$(".loginform-pwd__input-next").click(function () {
  var pwd = $(".loginform-pwd__input-pwd").val();
  $.ajax({
    type: "post",
    url: "/controller/user/login",
    data: "id=" + id + "&pwd=" + pwd,
    success: function (data) {
      if (!data == "") {
        location.href = "/controller/";
      } else {
        alert("틀린 비밀번호 입니다.");
      }
    },
    error: function (err) {
      console.log(err);
    },
  });
});
//로그인 뒤로가기
$(".loginform-pwd__header__cancel-btn").click(function () {
  location.href = "/controller/user/loginForm";
});

// 휴대폰 인증
var certifyNum = "0000";
$(".loginform-signup__tel__certify__get-certify").click(function () {
  clearInterval(phoneNum);
  $(".loginform-signup__tel__certify__get-certify").attr("disabled", true);
  $(".loginform-signup__tel__certify__get-certify").removeClass(
    "loginform-signup__tel__certify__get-certify-writing"
  );

  $.ajax({
    type: "post",
    url: "/controller/user/smsCertify",
    data: "tel=" + $(".loginform-signup__tel__certify__telnum").val(),
    success: function (data) {
      console.log(data);
      certifyNum = data;
    },
    error: function (err) {
      console.log(err);
    },
  });
});

function checkSignUpForm() {
  var sw = 0;
  if ($(".loginform-signup__input-name").val() == "") sw = 1;
  if ($("#certify").val() == "") sw = 1;
  if ($("#certify").val() != certifyNum) sw = 1;
  if ($("#pwd").val() != $("#rePwd").val()) sw = 1;
  if (
    !$("#agree-14").is(":checked") ||
    !$("#agree-use").is(":checked") ||
    !$("#agree-info").is(":checked")
  )
    sw = 1;

  if (sw == 0) {
    $(".loginform-signup__signup-btn").attr("disabled", false);
    $(".loginform-signup__signup-btn").addClass(
      "loginform-signup__signup-btn-enable"
    );
  }
}

// 체크박스 전체 선택
$(".loginform-signup__agree__all-agree").click(function () {
  $(".loginform-signup__agree__each-agree > input").attr(
    "checked",
    $("#agree-all").is(":checked")
  );
  console.log("ha");
});

//
//
//카카오 소셜 로그인
// $(".loginform-id__div__sns-login__kakao").click(function () {
//   loginWithKakao();
// });

// function loginWithKakao() {
//   const scope = "account_email";
//   Kakao.Auth.login({
//     scope,
//     success: function (response) {
//       Kakao.Auth.setAccessToken(response.access_token);
//       alert(Kakao.Auth.getAccessToken());
//     },
//   });

//   Kakao.Auth.authorize({
//     redirectUri: "http://localhost:8080/controller/user/loginForm",
//   });
// }

// $(function () {
//   Kakao.Auth.setAccessToken();

//   alert(Kakao.Auth.getAccessToken());
//   Kakao.API.request({
//     url: "/v2/user/me",
//     // data: {
//     //   property_keys: ["kakao_account.email"],
//     // },
//     success: function (response) {
//       alert("hahahahhaha");
//     },
//     fail: function (err) {
//       console.log(err);
//     },
//   });
// });

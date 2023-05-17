<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/access/stylecss/styleSignup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/access/themify-icons-font/themify-icons/themify-icons.css">
    
    <title>Document</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
    <div id="signup-container">

        <div class="text-center navbar-container">
            <div>
            <a href="footer.jsp" ><i class="arrow_left ti-arrow-left"></i></a>
            </div>
    
            <div class="navbar_title">
                Đăng ký tài khoản
            </div>
    
        </div>

        <div class="login_logo_video">
            <video autoplay loop>
                <source src="${pageContext.request.contextPath}/view/access/img/img_signup/Video chưa đặt tên ‐ Được tạo bằng Clipchamp (1).mp4" >
            </video>

        </div>

        <div class="login-form">
            <div class="text-center login-form__tille">
                Đăng ký tài khoản HALAmember
            </div>

            <form class="form" action="" method="post">


                    <div class="form-group">
                        
                            <div class="form-group__item">
                                <input type="text" class="form-group__item-button" 
                                placeholder="Vui lòng nhập số điện thoại(bắt buộc)" 
                                id="mobie" name="phone_number" required="required">
                                <small></small>
                                <span></span>
                            </div>
        
                            <div class="form-group__item">
                                <input type="email" class="form-group__item-button" placeholder="Vui lòng nhập địa chỉ email(bắt buộc)" id="email" name="email" required="required" >
                                <small></small>
                                <span></span>
                            </div>
        
                            <div class="form-group__item">
                                <input type="text" class="form-group__item-button" placeholder="Vui lòng nhập họ và tên" id="name" name="fullname">
                                <small></small>
                                <span></span>
                            </div>
                            <div class="form-group__item">
                                <input type="text" class="form-group__item-button" placeholder="Vui lòng nhập địa chỉ nhận hàng" id="diaChi" name="address">
                                
                                <small></small>
                                <span></span>
                            </div>
        
                            <div class="form-group__item">
                                <input type="password" class="form-group__item-button" placeholder="Vui lòng nhập mật khẩu" id="matKhau" name="password" required="required" onkeyup="kiemTraMatKhau()">
                                
                                <small id="msg"></small>
                                <span id="msg"></span>
                            </div>
        
                            <div class="form-group__item">
                                <input type="password" class="form-group__item-button" placeholder="Vui lòng xác nhận nhật khẩu" id="matKhauNhapLai" name="passwordRS" required="required" onkeyup="kiemTraMatKhau()">
                                <small id="msg"></small>
                                <span id="msg"></span>
                            </div>
        
                            <div class="group__option">
                                <input type="checkbox" id="dongYDieuKhoan" name="dongYDieuKhoan" required="required" onchange="xuLyChonDongY()">
                                <label>Tôi đồng ý với các điều khoản bảo mật cá nhân</label>
        
                            </div>
        
                            <div class="group__option">
                                <input type="checkbox" id="dongYNhanMail" name="dongYNhanMail">
                                <label>Đăng ký nhận bản tin khuyến mãi qua email</label>
                                
                            </div>
        
                
                            <button id="signUp" type="submit" class="form-submit-btn" name="submit" >Đăng kí</button>
                            <div class="items-center">Bạn đã có tài khoản ? <a href="#">Đăng nhập ngay</a></div>
        
        
                        
                    </div>
            </form>


        </div>

    </div>
    <jsp:include page="footer.jsp"></jsp:include>

</body>
<script type="text/javascript">
    /* var username = document.querySelector('#name')
// trả về thẻ có id = "name"
var email = document.querySelector('#email')
var phone_number = document.querySelector('#mobie')
var button = document.querySelector('#signUp')
var password = document.querySelector('#matKhau')
var confirm_password = document.querySelector('#matKhauNhapLai')
function showError(input, message){
    let parent = input.parentElement;
    // trả về thẻ input
    let small = parent.querySelector('small')
    parent.classList.add('error')
    // thêm class error vào classList
    small.innerText = message
} */
    function kiemTraMatKhau(){
		matKhau = document.getElementById("matKhau").value;
		matKhauNhapLai = document.getElementById("matKhauNhapLai").value;
		if(matKhau!=matKhauNhapLai){
			document.getElementById("msg").innerHTML = "Mật khẩu không khớp!";
			return false;
		}else{
			document.getElementById("msg").innerHTML = "";
			return true;
		}
	}
/* function xuLyChonDongY(){
		dongYDeuKhoan = document.getElementById("dongYDieuKhoan");
		if(dongYDeuKhoan.checked==true){
			document.getElementById("submit").style.visibility="visible";
		} else {
			document.getElementById("submit").style.visibility="hidden";
		}
	}
function showSuccess(input){
    let parent = input.parentElement;
    let small = parent.querySelector('small')
    parent.classList.remove('error')
    small.innerText =''
}

function checkEmptyError(listInput){
    listInput.forEach(input => {
        input.value = input.value.trim()
        if(input.value ==""){
            isEmptyError = true;
            showError(input, 'Vui lòng điền thông tin')
        }
        else{
            showSuccess(input)
        }
        
        
    });
    
}
function checkEmail(input){
    var regEmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    if(!input.value.match(regEmail) && input.value.length > 0 ){
        showError(input, 'Vui nhap lai email')
    }
    else if(input.value.match(regEmail) && input.value.length ){
        showSuccess(input)
    }
    
}
function checkSDT(input){
    var regSDT = /^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$/;
    if(!input.value.match(regSDT) && input.value.length > 0){
        showError(input, 'vui long nhap lai SDT')
        
    }
    else if(input.value.match(regSDT) && input.value.length ){
        showSuccess(input)
    }
}
function checkLenghtdError(input, min, max){
    input.value = input.value.trim()
    console.log(input.value);
    if(input.value.length < mix){
        showSuccess(input, `Phai co it nhat ${mix} ky tu`)
        return true
    }
    if(input.value.length > max){
        showError(input, `Khong vuot qua ${max} ky tu`)
        return true
    }
    showSuccess(input)
    return false
}
function checkPassword(passwordInput, confirm_passwordInput){
    if(passwordInput.value !== confirm_passwordInput.value){
        showError(confirm_passwordInput, 'MK khong trung khop')
        return true
    }
    return false
}
button.addEventListener('click',function(e){
    e.preventDefault()
    checkEmptyError([username,email,phone_number,password,confirm_password])
    checkEmail(email)
    checkSDT(phone_number)
    checkLenghtdError(password, 8, 12)
    checkPassword(password, confirm_password)
}) */

</script>

</html>
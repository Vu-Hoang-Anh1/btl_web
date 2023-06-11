
    var username = document.querySelector('#name')
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
}
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
    input.value = input.value.trim();
    console.log(input.value);
    if(input.value.length < min){
        showSuccess(input, `Phải có ít nhất ${min} ký tự`);
        return true;
    }
    if(input.value.length > max){
        showError(input, `Không vượt quá ${max} ký tự`);
        return true;
    }
    showSuccess(input);
    return false;
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
})


/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const dangNhap = document.querySelector('.js__member');
const login = document.querySelector('.js__login');
const login__close = document.querySelector('.js__login__close');
const login__container = document.querySelector('.js__login__container');

function show() {
    login.classList.add('open');
}

function closelogin() {
    login.classList.remove('open');
}

dangNhap.addEventListener('click', show);

login__close.addEventListener('click', closelogin);
login.addEventListener('click', closelogin);
login__container.addEventListener('click', function (event) {
    event.stopPropagation();
})



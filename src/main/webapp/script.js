function credentialsValidation() 
{
    
    const username = document.getElementById('username').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const phNum = document.getElementById('phoneNumber').value;
    const confirmPassword = document.getElementById('confirmPassword').value;


    let isValid = true;

    // Clear previous errors
    document.querySelectorAll('.error').forEach(el => el.style.display = 'none');

    // Validate username
    if (username.length < 3) {
        document.getElementById('usernameError').innerText = "Username must be at least 3 characters long";
        document.getElementById('usernameError').style.display = 'block';
        isValid = false;
    }

    // Validate email
    const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (!emailPattern.test(email)) {
        document.getElementById('emailError').innerText = "Invalid email address";
        document.getElementById('emailError').style.display = 'block';
        isValid = false;
    }

    if (phNum.length >10 || phNum.length<10) {
        document.getElementById('phNumberError').innerText = "Phone Number must have 10 characters long";
        document.getElementById('phNumberError').style.display = 'block';
        isValid = false;
    }

    // Validate password
    const passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
    if (!passwordPattern.test(password)) {
        document.getElementById('passwordError').innerText = "Password must be at least 8 characters long, contain at least one number, one uppercase and one lowercase letter";
        document.getElementById('passwordError').style.display = 'block';
        isValid = false;
    }

    // Validate confirm password
    if (password !== confirmPassword) {
        document.getElementById('confirmPasswordError').innerText = "Passwords do not match";
        document.getElementById('confirmPasswordError').style.display = 'block';
        isValid = false;
    }

    if (isValid) {
        alert("Sign up successful!");
        window.location.href = "index.html";
    }
}

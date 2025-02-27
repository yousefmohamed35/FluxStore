// email validation
String? validateEmail(String? email) {
  final RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
  );

  if (email == null || email.isEmpty ) {
    return "Email is required";
  } else if (!emailRegex.hasMatch(email)) {
    return "Invalid email format";
  }
  return "Valid email";
}

// password validation 
String? validatePassword(String? password) {
  if (password==null || password.isEmpty) {
    return "Password is required";
  } else if (password.length < 8) {
    return "Password must be at least 8 characters long";
  } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
    return "Password must contain at least one uppercase letter";
  } else if (!RegExp(r'[a-z]').hasMatch(password)) {
    return "Password must contain at least one lowercase letter";
  } else if (!RegExp(r'\d').hasMatch(password)) {
    return "Password must contain at least one digit";
  } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
    return "Password must contain at least one special character";
  }
  return "Valid password";
}

// confirm password validation
String? validateConfirmPassword(String? password, String? confirmPassword) {
  if (confirmPassword==null || confirmPassword.isEmpty) {
    return "Confirm password is required";
  } else if (confirmPassword != password) {
    return "Passwords do not match";
  }
  return "Passwords match";
}
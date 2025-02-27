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
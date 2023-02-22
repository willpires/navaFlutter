class SignEmailSenhaFailure implements Exception {
  const SignEmailSenhaFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  factory SignEmailSenhaFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignEmailSenhaFailure(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const SignEmailSenhaFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const SignEmailSenhaFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const SignEmailSenhaFailure(
          'Incorrect password, please try again.',
        );
      default:
        return const SignEmailSenhaFailure();
    }
  }

  final String message;
}

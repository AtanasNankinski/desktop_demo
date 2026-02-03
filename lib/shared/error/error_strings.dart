part of 'error.dart';


/// Utility class holding the string values used for title and description for the different
/// app exceptions inherited from [DemoAppException] and used throughout the application.
class ErrorStrings {
  //TODO Get error strings from localization when localization via intl is implemented in the app.
  static final String defaultErrorTitle = "Unknown Error";
  static final String defaultErrorDesc = "Unknown error occured please be careful with your actions.";
  static final String testErrorTitle = "Test Error";
  static final String testErrorDesc = "Test Exception was thrown in order to test error handling in some app component.";
  static final String credentialsErrorTitle = "Credentials Error";
  static final String credentialsErrorDesc = "Wrong or missing credentials have been used.";
}
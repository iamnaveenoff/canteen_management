class Config {
  static const String appName = "Canteen Token System";
  static const String apiBaseUrl = 'http://192.168.1.8:8080/api'; //PROD_URL
  static const loginAPI = "$apiBaseUrl/auth/signin";
  static const signUpAPI = "$apiBaseUrl/auth/signup";
}
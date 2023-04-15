class Api {
  static const String base = 'http://209.250.238.186:8082/api';

  static const String authSignup = "$base/v1/auth/identity";
  static const String drinks = "$base/v1/drinks";

  static const Map<String, String> requestHeaders = {
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwiaWF0IjoxNjgxNDgzMzM1LCJleHAiOjE2ODE1NjE5MzV9.lqAZDC9p7coEHel52m177EAUzRKB6ZkgIfyrLuAa2VY"
  };
}

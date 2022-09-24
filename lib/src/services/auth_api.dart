import 'package:flutter_starter_project/src/utils/api_helper.dart';

class AuthApi {
  static final _api = ApiHelper.instance;

  static Future<void> login(
    String email,
    String password,
  ) async {
    const path = '/login';
    await _api.post(path, data: {
      'email': email,
      'password': password,
    });
  }

  static Future<void> register(
    String name,
    String email,
    String password,
  ) async {
    const path = '/register';
    await _api.post(path, data: {
      'name': name,
      'email': email,
      'password': password,
    });
  }

  static Future<bool> forgetPassword(
    String email,
  ) async {
    const path = '/forget-password';
    await _api.post(path, data: {
      'email': email,
    });
    return true;
  }
}

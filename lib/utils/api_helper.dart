import 'package:dio/dio.dart';
import 'package:flutter_starter_project/utils/constant.dart';

class ApiHelper {
  static late Dio _dio;
  // Singlton
  static ApiHelper? _instance;
  static ApiHelper get instance {
    _instance ??= ApiHelper();
    final options = BaseOptions(
      baseUrl: AppConstants.baseUrl,
    );
    _dio = Dio(options);
    return _instance!;
  }

  Future<Response<dynamic>?> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final apiCall = _dio.get(path, queryParameters: queryParameters);
    final response = await _zoned(apiCall);
    if (response != null) {
      return response;
    }
    // This needs to be handled smartly
    return response;
  }

  Future<Response<dynamic>?> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    dynamic data,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final apiCall = _dio.post(
      path,
      queryParameters: queryParameters,
      data: data,
    );
    final response = await _zoned(apiCall);
    if (response != null) {
      return response;
    }
    // This needs to be handled smartly
    return response;
  }

  Future<Response<dynamic>?> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final apiCall = _dio.delete(path, queryParameters: queryParameters);
    final response = await _zoned(apiCall);
    if (response != null) {
      return response;
    }
    // This needs to be handled smartly
    return response;
  }

  Future<Response<dynamic>?> patch(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final apiCall = _dio.patch(path, queryParameters: queryParameters);
    final response = await _zoned(apiCall);
    if (response != null) {
      return response;
    }
    // This needs to be handled smartly
    return response;
  }

  Future<Response<dynamic>?> put(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final apiCall = _dio.put(path, queryParameters: queryParameters);
    final response = await _zoned(apiCall);
    if (response != null) {
      return response;
    }
    // This needs to be handled smartly
    return response;
  }

  Future<Response<dynamic>?> _zoned(Future<Response> call) async {
    try {
      return await call;
    } catch (e) {
      return null;
    }
  }
}

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class APIService {
  APIService._instantiate();

  late APIService _apiService;

  APIService() {
    _apiService = APIService._instantiate();
  }

  static final APIService instance = APIService._instantiate();

  final String _baseUrl = 'www.googleapis.com';
  String _nextPageToken = '';


}

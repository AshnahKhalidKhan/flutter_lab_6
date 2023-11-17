import 'package:flutter_lab_6/Core/Network/API.dart';
import 'package:riverpod/riverpod.dart';
import 'package:http/http.dart' as http;

final clientProvider = Provider<ApiClient>((_) => ApiClient(http.Client()));


//dependent sources
import 'package:flutter_lab_6/Core/Network/API.dart';
import 'package:flutter_lab_6/User/APIPageState.dart';
import 'package:flutter_lab_6/User/Providers.dart';
import 'package:flutter_lab_6/User/States/States.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod/riverpod.dart';

// final clientProvider = Provider<ApiClient>((_) => ApiClient(http.Client()));

final userStateNotifierProvider = StateNotifierProvider
(
  (ref) => UserStateNotifier(ref.watch(clientProvider))
);

class UserStateNotifier extends StateNotifier<UserState> 
{
  final ApiClient apiClient;
  UserStateNotifier(this.apiClient) : super(UserState.initial());

  getUser() async
  {
    try
    {
      state = UserState.loading();
      var data = await apiClient.getUser();
      return state = UserState.success(data);
    }
    catch(e)
    {
      return state = UserState.error("$e");
    }
  }
}
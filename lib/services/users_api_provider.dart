import 'dart:convert';
import 'dart:core';

import './../model/user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  Future<List<UserModel>> getUsers() async {
    // final users = List<
    final dio = Dio();
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users');
    if (response.statusCode == 200) {
      var userJson = json.decode(response.data);
      return userJson
          .map((json) => UserModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Can\'t fetch the data');
    }
  }
}

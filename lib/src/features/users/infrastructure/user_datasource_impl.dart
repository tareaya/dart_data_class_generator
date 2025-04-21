import 'package:dart_data_class_generator/src/features/users/domain/user_datasource.dart';
import 'package:dart_data_class_generator/src/features/users/infrastructure/models/user.dart';
import 'package:dio/dio.dart';

class UserDatasourceImpl extends UserDatasource {
  @override
  Future<List<User>> fetchUsers() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final response = await Dio().get(
        'https://jsonplaceholder.typicode.com/users',
      );

      final List userList = response.data;
      print(userList[0]);

      final users = [for (final user in userList) User.fromJson(user)];
      print(users[0]);

      return users;
    } catch (e) {
      rethrow;
    }
  }
}

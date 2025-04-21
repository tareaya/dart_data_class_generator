import 'package:dart_data_class_generator/src/features/users/domain/user_datasource.dart';
import 'package:dart_data_class_generator/src/features/users/infrastructure/models/user.dart';

import '../domain/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  late final UserDatasource userDatasource;

  @override
  Future<List<User>> fetchUsers() {
    return userDatasource.fetchUsers();
  }
}

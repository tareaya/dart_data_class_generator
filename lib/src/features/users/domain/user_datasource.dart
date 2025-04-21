import '../infrastructure/models/user.dart';

abstract class UserDatasource {
  Future<List<User>> fetchUsers();
}

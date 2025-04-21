import '../infrastructure/models/user.dart';

abstract class UserRepository {
  Future<List<User>> fetchUsers();
}

import '../services/IUserService.dart';
import '../data_sources/user_source/IUserDataSource.dart';

class UserService implements IUserService {
  final IUserDataSource dataSource;
  UserService(this.dataSource);

  @override
  void getUser() {
    dataSource.get();
  }

  @override
  void updateUser() {
    dataSource.update();
  }

  @override
  void deleteUser() {
    dataSource.delete();
  }
}
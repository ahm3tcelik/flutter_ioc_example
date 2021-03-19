import '../../user_source/IUserDataSource.dart';

class UserSqliteDataSource implements IUserDataSource {

  @override
  void get() {
    print('Get by sqlite db');
  }

  @override
  void update() {
    print('Update by sqlite db');
  }

  @override
  void delete() {
    print('Delete by sqlite db');
  }
}
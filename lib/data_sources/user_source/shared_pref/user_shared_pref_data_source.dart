import '../IUserDataSource.dart';

class UserSharedPrefDataSource implements IUserDataSource {

  @override
  void get() {
    print('Get by shared preference');
  }

  @override
  void update() {
    print('Update by shared preference');
  }

  @override
  void delete() {
    print('Delete by shared preference');
  }
}
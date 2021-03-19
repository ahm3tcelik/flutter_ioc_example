import '../IUserDataSource.dart';

class SembastDataSource implements IUserDataSource {

  @override
  void get() {
    print('Get by sembast db');
  }

  @override
  void update() {
    print('Update by sembast db');
  }

  @override
  void delete() {
    print('Delete by sembast db');
  }
}
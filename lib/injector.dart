import './services/IUserService.dart';
import './services/user_service.dart';
import './data_sources/user_source/IUserDataSource.dart';
import './data_sources/user_source/sqlite/user_sqlite_data_source.dart';
import 'package:kiwi/kiwi.dart';

class Injector {
  KiwiContainer container = KiwiContainer();

  void setup() {

    // Her kullanımda aynı instance döndürülmesini istiyorsak: registerSingleton
    container.registerSingleton<IUserDataSource>((c) => UserSqliteDataSource());

    // Tüm uygulamada Sembast db geçmek için instance değiştirme yeterli.
    // container.registerSingleton((container) => UserSembastDataSource());

    // Her kullanımda yeni bir instance üretilmesini istiyorsak: registerInstance
    // container.registerInstance(IDataSource);

    container.registerSingleton<IUserService>((c) => UserService(c<IUserDataSource>()!));
  }
}

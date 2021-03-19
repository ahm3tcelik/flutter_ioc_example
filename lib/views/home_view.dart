import 'package:flutter/material.dart';
import 'package:flutter_ioc_example/services/IUserService.dart';
import 'package:kiwi/kiwi.dart';

class HomeView extends StatelessWidget {
  final container = KiwiContainer();
  late final IUserService userService = container<IUserService>()!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => userService.getUser(),
                child: Text('Get')),
            const Divider(),
            ElevatedButton(
                onPressed: () => userService.updateUser(),
                child: Text('Update')),
            const Divider(),
            ElevatedButton(
                onPressed: () => userService.deleteUser(),
                child: Text('Delete')),
          ],
        ),
      ),
    );
  }
}

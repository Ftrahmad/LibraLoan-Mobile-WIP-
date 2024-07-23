import 'package:flutter/material.dart';
import 'models/username_model.dart'; // Import the UsernameModel

class UsernameProvider extends InheritedNotifier<UsernameModel> {
  const UsernameProvider({
    Key? key,
    required UsernameModel usernameModel,
    required Widget child,
  }) : super(key: key, notifier: usernameModel, child: child);

  static UsernameModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UsernameProvider>()?.notifier;
  }

  @override
  bool updateShouldNotify(UsernameProvider oldWidget) {
    return notifier != oldWidget.notifier;
  }
}

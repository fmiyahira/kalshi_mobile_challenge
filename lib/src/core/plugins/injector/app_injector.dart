import 'package:kiwi/kiwi.dart';

class AppInjector {
  AppInjector._();

  final KiwiContainer _kiwi = KiwiContainer();

  static AppInjector? _internal;
  static AppInjector get I => _instance;

  static AppInjector get _instance {
    _internal ??= AppInjector._();
    return _internal!;
  }

  T get<T>() => _kiwi.resolve<T>();

  void registerFactory<T>(T Function() function) {
    _kiwi.registerFactory<T>((_) => function.call());
  }

  void registerSingleton<T>(T instance) {
    _kiwi.registerSingleton<T>((_) => instance);
  }

  void unregister<T>() {
    _kiwi.unregister<T>();
  }
}

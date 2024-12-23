import 'package:get_it/get_it.dart';

inject<T extends Object>() {
  return GetIt.I.get<T>();
}

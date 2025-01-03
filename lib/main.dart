import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:imdb_clone/app/imdb_clone_app.dart';
import 'package:imdb_clone/core/di/di_container.dart';
import 'package:imdb_localization/strings.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await initDi(); //init injector
  runApp(
    TranslationProvider(
      child: const IMDBCloneApp(),
    ),
  );
}

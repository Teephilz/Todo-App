import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sqlite_project/Db/db_helper.dart';
import 'package:sqlite_project/homepage.dart';
import 'package:sqlite_project/services/theme_service.dart';
import 'package:sqlite_project/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // NotificationService().initNotification();
  await GetStorage.init();
  await DbHelper.initDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:Themes.light,
     darkTheme: Themes.dark,
     themeMode: ThemeService().theme,
      home:HomePage()
    );
  }
}
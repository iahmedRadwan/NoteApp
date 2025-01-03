import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/features/notes/views/note_view.dart';
import 'package:note_app/shared/constants/app_constant.dart';
import 'package:note_app/shared/utils/router_manger.dart';
import 'package:note_app/shared/utils/themes_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(AppConstantsHelper.kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManagerHelper.lightTheme(),
      darkTheme: ThemeManagerHelper.darkTheme(),
      themeMode: ThemeMode.dark,
      routes: AppRouter.appRouter,
      initialRoute: NoteView.routeName,
    );
  }
}

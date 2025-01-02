import 'package:flutter/material.dart';
import 'package:note_app/features/notes/views/note_view.dart';
import 'package:note_app/shared/utils/router_manger.dart';
import 'package:note_app/shared/utils/themes_manager.dart';

void main() {
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
      routes: AppRouter.appRouter,
      initialRoute: HomeView.routeName,
    );
  }
}

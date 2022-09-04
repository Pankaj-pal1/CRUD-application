import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app_firebase/page/SplashScreen.dart';
import 'package:task_app_firebase/page/home_page.dart';
import 'package:task_app_firebase/provider/todos.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Task CRUD Application';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primaryColor: Colors.purpleAccent,
            scaffoldBackgroundColor: Colors.purple,
          ),
          home: SplashScreen(),
        ),
      );
}

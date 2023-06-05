// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:testapp/design/views/home/home_page.dart';
import 'package:testapp/injection/di_injection.dart' as getIt;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.setup();
  await dotenv.load(fileName: ".env");
  String? env = dotenv.env["ENVIRONMENT"];
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    MyApp(
      env: env ?? "Development",
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.env,
  }) : super(key: key);
  final String? env;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: HomePage(
        env: env,
      ),
    );
  }
}

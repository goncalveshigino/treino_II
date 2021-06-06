import 'package:flutter/material.dart';
import 'package:preferences_user/pages/home_page.dart';
import 'package:preferences_user/pages/settings_page.dart';
import 'package:provider/provider.dart';

import 'providers/settings_manager.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SettingsManager(),
        )
      ],
      child: MeterialWithProvider()
    );
  }
}

class MeterialWithProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName : ( BuildContext context) => HomePage(),
        SettingsPage.routeName : ( BuildContext context) => SettingsPage(),
      },
    );
  }
}
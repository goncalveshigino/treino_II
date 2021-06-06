import 'package:flutter/material.dart';
import 'package:preferences_user/pages/settings_page.dart';
import 'package:preferences_user/widgets/menu.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias do Usuario'),
      ),
      drawer:Menu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: '),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nome usuario'),
          Divider(),
        ],
      ),
    );
  }
}

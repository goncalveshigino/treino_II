import 'package:flutter/material.dart';
import 'package:preferences_user/providers/settings_manager.dart';
import 'package:preferences_user/widgets/menu.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _nome = 'Higino';

  bool _colorSecundario = false;

  int _genero = 1;

  TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    _textController = TextEditingController(text: _nome);
  }

  _setSeletedRadio( int value){

     _genero = value;
     setState(() { });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ajustes'),
        ),
        drawer: Menu(),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('Settings',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
            ),
            Divider(),
            SwitchListTile(
              value: _colorSecundario,
              title: Text('Color Secundario'),
            onChanged: (value) {
                _colorSecundario = value;
                setState(() {});
              }
            ),
            RadioListTile(
              value: 1,
              title: Text('Masculino'),
              groupValue: _genero,
              onChanged: _setSeletedRadio
            ),
            RadioListTile(
              value: 2,
              title: Text('Femenino'),
              groupValue: _genero,
              onChanged: _setSeletedRadio,
            ),
            Divider(),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    helperText: 'Nome da pessoa usando o telefone',
                  ),
                  onChanged: (value) {},
                ))
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:preferences_user/pages/home_page.dart';
import 'package:preferences_user/pages/settings_page.dart'; 

class Menu extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/menu-img.jpg',
                    ),
                    fit: BoxFit.cover)),
          ), 


          ListTile(
            leading: Icon( Icons.pages, color: Colors.blue),
             title: Text('home'),
             onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName)
          ), 


          ListTile(
            leading: Icon( Icons.party_mode, color: Colors.blue),
             title: Text('Party Mode'),
             onTap: (){}
          ), 


          ListTile(
            leading: Icon( Icons.people, color: Colors.blue),
             title: Text('People'),
             onTap: (){}
          ), 


          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue),
             title: Text('Settings'),
             onTap: () => Navigator.pushReplacementNamed(context, SettingsPage.routeName)
          ),

          Divider(
            indent: 29,
            endIndent: 29,
            color: Colors.blueGrey[100],
          )

        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:yoga/patientScreen/homeScreen.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Suraj Kalgudi'),
            accountEmail: Text('surajkalgudi@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F501940320971441032%2F&psig=AOvVaw3GpB9vJMGdJ7ZVCVAnwkB3&ust=1651160706510000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCJDQrY7LtPcCFQAAAAAdAAAAABAD',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vectorstock.com%2Froyalty-free-vector%2Fyoung-man-profile-vector-14770074&psig=AOvVaw1rn4sJ9WzW7TyeOHVRQZqT&ust=1651160744728000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCODQ9qHLtPcCFQAAAAAdAAAAABAD')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Personel detials'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Doctor'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.workspaces_outline),
            title: Text('Trainer'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => PatientScreen(),
          ),
        ],
      ),
    );
  }
}
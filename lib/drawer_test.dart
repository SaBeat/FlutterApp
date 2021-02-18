import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.black87,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1577224682866-a1834ca126ae?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Sabit Sadigli',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  Text(
                    'sabitsadiqli@gmail.com',
                    style: TextStyle(color: Colors.white,fontSize: 15),
                  ),

                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.sports_soccer),
            title: Text(
              'Football',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.sports_basketball),
            title: Text(
              'Basketball',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.sports_baseball),
            title: Text(
              'Baseball',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.sports_volleyball),
            title: Text(
              'Voleyball',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.sports_tennis),
            title: Text(
              'Tennis',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.sports_handball),
            title: Text(
              'Handball',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}

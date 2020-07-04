import 'package:flutter/material.dart';
import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.only(
        top: 50,
        bottom: 70,
        left: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Badal Agarwal',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text('Active Status',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(element['title'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ))
                        ],
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.settings, color: Colors.white),
              Text(
                'Settings',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              Text(
                'Log Out',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}

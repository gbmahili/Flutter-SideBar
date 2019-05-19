import 'package:flutter/material.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class MenuDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          // dashboard(),
        ],
      ),
    );
  }
}

Widget menu(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Dashboard',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Messages',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Utility Bills',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Funds Transfer',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Branches',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
      ),
    ),
  );
}

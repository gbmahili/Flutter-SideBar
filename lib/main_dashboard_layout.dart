import 'package:flutter/material.dart';

final Color backgroundColor = Color(0xFF4A4A58);

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage> {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    screenHeight = deviceSize.height;
    screenWidth = deviceSize.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
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
            ClipOval(
              child: Image.network(
                'https://avatars2.githubusercontent.com/u/12724186?s=460&v=4',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            new MenuItem(text: 'Dashboard'),
            new MenuItem(text: 'Messages'),
            new MenuItem(text: 'Utility Bills'),
            new MenuItem(text: 'Funds Transfer'),
            new MenuItem(text: 'Branches'),
          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: isCollapsed ? 0 : 0.2 * screenHeight,
      bottom: isCollapsed ? 0 : 0.2 * screenHeight,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: Material(
        animationDuration: duration,
        borderRadius: BorderRadius.all(Radius.circular(40)),
        elevation: 8,
        color: backgroundColor,
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 48),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                      child: Icon(Icons.menu, color: Colors.white),
                      onTap: () {
                        setState(() {
                          isCollapsed = !isCollapsed;
                        });
                      }),
                  Text('Dashboad For User',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Icon(Icons.settings, color: Colors.white)
                ],
              ),
              SizedBox(height: 50),
              Container(
                height: 200,
                child: PageView(
                  controller: PageController(viewportFraction: 0.8),
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.redAccent,
                      width: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.blueAccent,
                      width: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.greenAccent,
                      width: 100,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  MenuItem({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}

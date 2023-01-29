import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Week 2 Session 2'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              //Here we implement the constrainedBox
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: double.infinity,
                  minHeight: 50.0,
                ),
                child: Container(
                  color: Colors.blue,
                  child: Text('Constrained Box'),
                ),
              ),
              //Here we implement the sizedBox
              SizedBox(
                width: double.infinity,
                height: 10.0,
              ),
              //Here we implement the rotatedBox
              RotatedBox(
                quarterTurns: 1,
                child: Text('Rotated Box'),
              ),
              //Here we implement the Icons
              Icon(Icons.favorite, size: 40.0),
              Text(
                'Icons and fonts',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
              Image.network(
                'https://start.alueducation.com/resource/1568810909000/AluLogoForAdmissions',
              ),
              Spacer(),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              //Here we implement the popUpMenueButton
              PopupMenuButton(
                onSelected: (result) {
                  print(result);
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    value: 'Item 1',
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem(
                    value: 'Item 2',
                    child: Text('Item 2'),
                  ),
                ],
              ),
            ],
          ),
        ),
        //Here we implement the popup menu
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Menu Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Menu Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

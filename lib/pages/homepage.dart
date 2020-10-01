import 'package:flutter/material.dart';
import 'package:pages_drawer/pages/page2.dart';
import 'page3.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Página 1'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 350),
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Text('ir para a página 2'),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text(
                  'Páginas',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.first_page),
              title: Text('Página 2'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.last_page),
              title: Text('Página 3'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
            )
          ],
        ),
      ),
    );
  }
}

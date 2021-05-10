import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Student Union & Recreation Center (SURC)"),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.navigation,
                    size: 26.0,
                  ),
                )),
          ]),
      body: Text("Text"),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);
          }),
      bottomNavigationBar: BottomAppBar(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            new Container(
              child: new Text('Addresss'), //Text
            ),
            new Container(
              child: new Text('Phone Number', textAlign: TextAlign.justify),
            ),
          ],
        ),
        color: Colors.red,
      ),
    );
  }
}

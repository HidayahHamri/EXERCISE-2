import 'package:flutter/material.dart';

import 'main_appbar.dart';
import 'main_body.dart';
import 'main_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _size = 200.0;
  get size => _size;
  set size(value) => setState(() => _size = value);

  var _red = 0.0;
  get red => _red;
  set red(value) => setState(() => _red = value);

  var _green = 0.0;
  get green => _green;
  set green(value) => setState(() => _green = value);

  var _blue = 0.0;
  get blue => _blue;
  set blue(value) => _blue = value;

  var _drawItem = {"Allow Resize?": true, "Allow change primer color?": true};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Icon'),
        backgroundColor: Colors.brown,
        actions: [
          MainAppBar(
              state: this, icon: "-", drawItem: _drawItem.values.elementAt(0)),
          MainAppBar(
              state: this, icon: "S", drawItem: _drawItem.values.elementAt(0)),
          MainAppBar(
              state: this, icon: "M", drawItem: _drawItem.values.elementAt(0)),
          MainAppBar(
              state: this, icon: "L", drawItem: _drawItem.values.elementAt(0)),
          MainAppBar(
              state: this, icon: "+", drawItem: _drawItem.values.elementAt(0)),
        ],
      ),
      drawer: Drawer(
        child: ListView.builder(
            itemCount: _drawItem.length,
            itemBuilder: (context, index) {
              return Card(
                child: CheckboxListTile(
                    title: Text(_drawItem.keys.elementAt(index)),
                    value: _drawItem.values.elementAt(index),
                    onChanged: (value) {
                      setState(
                        () {
                          _drawItem[_drawItem.keys.elementAt(index)] = value;
                        },
                      );
                    }),
              );
            }),
      ),
      body: MainBody(state: this),
      bottomNavigationBar:
          MainBottomBar(state: this, drawItem: _drawItem.values.elementAt(1)),
    );
  }
}

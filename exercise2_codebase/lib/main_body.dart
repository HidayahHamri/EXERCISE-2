import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final _state;
  MainBody({state}) : _state = state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Icon(Icons.access_alarm,
            color: Color.fromRGBO(_state.red.round(), _state.green.round(),
                _state.blue.round(), 1.0),
            size: _state.size),
      ]),
    );
  }
}//map

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainBottomBar extends StatelessWidget {
  final _state, _drawItem;
  var _redslider = 0.0;
  var _greenslider = 0.0;
  var _blueslider = 0.0;

  MainBottomBar({state, drawItem})
      : _state = state,
        _drawItem = drawItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 180.0,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: Column(children: [
              //RED
              Row(
                children: [
                  Slider(
                      value: _redslider,
                      min: 0,
                      max: 255,
                      onChanged: (double value) {
                        setState(() {
                          _redslider = value;
                          _state.value = _redslider.toInt();
                        });
                      }),
                  Center(
                    child: Visibility(
                      visible: _drawItem,
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          _state.red = 255.0;
                          _state.green = 0.0;
                          _state.blue = 0.0;
                        },
                        label: Text(_state.red.round().toString()),
                        shape: CircleBorder(),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !_drawItem,
                    child: Text(_state.red.round().toString()),
                  ),
                ],
              ),

              //GREEN
              Row(
                children: [
                  Slider(
                      value: _greenslider,
                      min: 0,
                      max: 255,
                      onChanged: (double value) {
                        setState(() {
                          _greenslider = value;
                          _state.value = _greenslider.toInt();
                        });
                      }),
                  Center(
                    child: Visibility(
                      visible: _drawItem,
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          _state.red = 0.0;
                          _state.green = 255.0;
                          _state.blue = 0.0;
                        },
                        label: Text(_state.green.round().toString()),
                        shape: CircleBorder(),
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !_drawItem,
                    child: Text(_state.green.round().toString()),
                  ),
                ],
              ),
              //BLUE
              Row(
                children: [
                  Slider(
                      value: _blueslider,
                      min: 0,
                      max: 255,
                      onChanged: (double value) {
                        setState(() {
                          _blueslider = value;
                          _state.value = _blueslider.toInt();
                        });
                      }),
                  Center(
                    child: Visibility(
                      visible: _drawItem,
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          _state.red = 0.0;
                          _state.green = 0.0;
                          _state.blue = 255.0;
                        },
                        label: Text(_state.blue.round().toString()),
                        shape: CircleBorder(),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !_drawItem,
                    child: Text(_state.blue.round().toString()),
                  ),
                ],
              ),
            ])));
  }

  void setState(Null Function() param0) {}
}

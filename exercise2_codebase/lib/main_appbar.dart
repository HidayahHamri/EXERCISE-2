import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final _state, _icon, _drawItem;

  MainAppBar({state, icon, drawItem})
      : _state = state,
        _icon = icon,
        _drawItem = drawItem;

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _drawItem,
      child: IconButton(
          padding: EdgeInsets.fromLTRB(1, 1, 0, 0),
          icon: Container(
            alignment: Alignment.center,
            child: Text(_icon),
            decoration: BoxDecoration(
                color: Colors.brown,
                border: Border.all(width: 1, color: Colors.white),
                shape: BoxShape.circle),
          ),
          onPressed: () {
            switch (_icon) {
              case 'S':
                _state.size = 100.0;
                break;
              case 'M':
                _state.size = 300.0;
                break;
              case 'L':
                _state.size = 500.0;
                break;
              case '+':
                _state.size = _state.size + 50;
                break;
              case '-':
                _state.size = _state.size - 50;
                break;
            }
          }),
    );
  }
}

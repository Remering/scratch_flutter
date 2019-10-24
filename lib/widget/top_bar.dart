import 'package:flutter/material.dart';

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8.0),
          filled: true,
          fillColor: theme.accentColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          prefixIcon: Icon(Icons.search,
            color: theme.accentIconTheme.color,
            size: 28,
          ),
        ),
        style: theme.primaryTextTheme.title,
      ),
    );
  }

}

class TopBar extends StatelessWidget implements PreferredSizeWidget {

  AppBar _delegate;

  TopBar() {
    _delegate = AppBar(
      title: Center(child: _SearchBar()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _delegate;
  }

  @override
  Size get preferredSize => _delegate.preferredSize;

}
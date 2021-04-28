import 'dart:html';

import 'package:flutter/material.dart';
import 'package:places/providers/great_places.dart';
import 'package:places/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class PLacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          ),
        ],
      ),
      body: Consumer<GreatPLaces>(
        builder: (context, places, c) => places.items.length <= 0
            ? c
            : ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(places.items[index].image),
                  ),
                  title: Text(places.items[index].title),
                ),
                itemCount: places.items.length,
              ),
        child: Center(
          child: Text('There are no places'),
        ),
      ),
    );
  }
}

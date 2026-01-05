import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Text("Menu"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () {
                Navigator.pushNamed(context, '/favorites');
              },
            ),
            ListTile(
              leading: Icon(Icons.playlist_play),
              title: Text('PlayLists'),
              onTap: () {
                Navigator.pushNamed(context, '/playlists');
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('This is the Favorites Screen')),
    );
  }
}

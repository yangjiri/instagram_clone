import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
        floatingActionButton: FloatingActionButton(onPressed: null,
          child: Icon(Icons.create),
          backgroundColor: Colors.blue,
        ),
    );
  }

  Widget _buildBody() {
     return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
         childAspectRatio: 1.0,
         mainAxisSpacing: 1.0,
         crossAxisSpacing: 1.0),
         itemCount: 5,
         itemBuilder: (context, index) {
            return  _buildListItem(context, index);
         });

  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network('https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528_1280.jpg', fit:BoxFit.cover);
  }
}

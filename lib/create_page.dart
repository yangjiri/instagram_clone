import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  // 解除する時に宣言するメソッド
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  _buildAppBar(),
       body: _buildBody(),
      floatingActionButton: FloatingActionButton(onPressed: null,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

 Widget  _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.send), onPressed: (){},
        )
      ]
    );
 }

Widget _buildBody() {
    return Column(
      children: <Widget>[
        Text('No Image'),
        TextField(
          decoration: InputDecoration(hintText: 'put your ideas'),
          controller: textEditingController,
        )
      ],
    );
  }
}

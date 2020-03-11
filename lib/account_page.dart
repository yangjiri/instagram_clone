import 'package:flutter/material.dart';
class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

   Widget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app) ,
          onPressed: (){},
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_1280.jpg'),
                      ),
                    ),
                    Container(
                      width: 80.0,
                          height: 80.0,
                      alignment: Alignment.bottomRight,
                      child:Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 28.0,
                            height: 28.0,
                            child: FloatingActionButton(onPressed: null,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 25.0,
                            height: 25.0,
                            child: FloatingActionButton(onPressed: null,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
                Padding(
                    padding: EdgeInsets.all(8.0)
                ),
                Text('name',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.9),
                )
              ],
            ),
            Text('4\n article',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0),
            ),
            Text('0\n follower',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            Text('0\n following',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        )
    );
  }
}

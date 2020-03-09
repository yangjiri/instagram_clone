import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody(){
    return Padding(
       padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('Wellcome to Instagram',
                   style: TextStyle(fontSize:  24.0)
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('If you want to see this photo, pls follow'),
                  Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                    width: 260.0,
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10.0)),
                          SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703_1280.jpg'),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Name'),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                    'https://cdn.pixabay.com/photo/2020/03/04/09/31/sea-4901075_1280.jpg' ,
                                    fit: BoxFit.cover
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                    'https://cdn.pixabay.com/photo/2017/07/31/11/21/people-2557396_1280.jpg' ,
                                    fit: BoxFit.cover
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(1.0)),
                              SizedBox(
                                width: 70.0,
                                height: 70.0,
                                child: Image.network(
                                    'https://cdn.pixabay.com/photo/2015/06/19/20/13/sunset-815270_1280.jpg' ,
                                    fit: BoxFit.cover
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                          Text('FaceBook Friends'),
                          Padding(padding: EdgeInsets.all(4.0)),
                          RaisedButton(
                            child: Text('follow'),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: (){},
                          ),
                          Padding(padding: EdgeInsets.all(4.0)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}



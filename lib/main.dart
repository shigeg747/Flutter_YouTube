import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home:  Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'Daily Cooking',
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: TextButton(
                child: Icon(Icons.search),
                onPressed: () {
                  //TODO
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: TextButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  //TODO
                },
              ),
            ),
          ]
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                                image: AssetImage('images/DC_400x400.jpg')),
                            ),
                          ),
                    ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Daily Cooking',
                      ),
                      TextButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            Text('登録する'),
                          ],
                        ),
                        onPressed: () {
                          //TODO
                        },
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap:() async {
                        //TODO:画面遷移
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage(),
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.asset('images/mqdefault.jpg'),
                      title: Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,

                            child: Text(
                                'キウィアイスクリーム',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text('30回再生'),
                              Text('20日前'),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),

                    );
                  },
                ),
              ),
            ],
          ),
        ),
        ),
      );
  }
}

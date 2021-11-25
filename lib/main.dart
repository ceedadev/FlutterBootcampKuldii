import 'package:flutter/material.dart';
import 'tugas_minggu2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TugasMinggu2(),
    );
  }
}

class HomepageBootcamp extends StatelessWidget {
  const HomepageBootcamp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextJudul'),
        leading: FlutterLogo(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            // margin: EdgeInsets.all(16),
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 18, top: 18),
                  height: 60,
                  width: 60,
                  color: index % 2 == 0 ? Colors.blue : Colors.yellow,
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                    right: 16,
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 8),
                        height: 120,
                        color: index % 2 == 0 ? Colors.blue : Colors.yellow,
                      ),
                      Text(
                        'Hello $index',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

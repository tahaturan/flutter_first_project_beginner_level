import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tasarim Giris'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(width: 400, height: 400,color: Colors.red,),
          Row(
            children: [
              Container(width: 100,height: 100,color: Colors.blue,),
              Container(width: 100,height: 100,color: Colors.yellow,),
              Column(
                children: [
                  Container(width: 100,height: 100,color: Colors.amberAccent,),
                  Container(width: 100,height: 100,color: Colors.cyan,),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}

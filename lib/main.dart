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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
          margin: const EdgeInsets.all(10),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.blue,
            width: 5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                
                margin: const EdgeInsets.only(left: 0,top: 3,right: 2,bottom: 2),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  )
                ),
              ),
              Container(width: 50,height: 50,color: Colors.orange, margin: const EdgeInsets.all(5),),
            ],
          ),
          
          ),
          Container(width: 100,height: 100,color: Colors.blue,),
        ],
      ),
    );
  }
}

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
  final String _image1 =
      "https://www.ilgincgercek.com/wp-content/uploads/2018/05/ilginc-araba.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: NetworkImage(_image1),
                  fit: BoxFit.cover
                  ),
                  boxShadow:const [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(-20, 20),
                      blurRadius: 5,
                      blurStyle: BlurStyle.normal,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(-10, 10),
                      blurRadius: 5,
                      blurStyle: BlurStyle.normal,
                    ),
                  ]
                  ),
              child: const Align(
                alignment: Alignment.topCenter,
                child: Text("merhaba"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

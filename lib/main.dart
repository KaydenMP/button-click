import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String _clicked = "Click the button to get its name";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
       title: const Text('Buttons and their names',
       style: TextStyle(
        fontFamily: 'Mouse',
       ),),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("$_clicked ",
              style:const TextStyle(
                fontFamily: 'Mouse',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30
              ),),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _clicked = 'Gesture Detector';
                  });
                },
                child: const Text("Gesture Detector",
                style: TextStyle(
                  fontSize: 15
                ),),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _clicked = 'Inkwell';
                  });
                },
                child: const Text("InkWell"),
              ),
              Container(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _clicked = 'Outlined Button';
                    });
                  },
                  child: const Text("Outlined Button"),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _clicked = 'Text Button';
                    });
                  },
                  child: const Text("Text button"),
                ),
              ),
              Container(
                child: ElevatedButton(
                    child: const Text("Elevated button"),
                    onPressed: () {
                      setState(() {
                        setState(() {
                          _clicked = 'Elevated Button';
                        });
                      });
                    }),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _clicked = "FloatingActionButton";
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

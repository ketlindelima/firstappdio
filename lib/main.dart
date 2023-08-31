import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dio App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Ketlin's First Flutter App"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Click + button to increment the value below',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            // Text(
            //   "You have pressed the button $_counter times",
            //   style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.purple),
            // ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headlineSmall,
                children: [
                  const TextSpan(
                    text: "You have pressed the button ",
                    style: TextStyle(color: Colors.purple),
                  ),
                  TextSpan(
                    text: "$_counter",
                    style: const TextStyle(color: Colors.black),
                  ),
                  const TextSpan(
                    text: " times",
                    style: TextStyle(color: Colors.purple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

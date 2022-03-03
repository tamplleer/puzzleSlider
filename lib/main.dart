import 'package:family_tree/board.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const Board(),
    );
  }
}

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<PuzzlePage> createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  int _counter = 0;
  final _controller = TextEditingController(text: "aa");

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      print(_controller.text);
    });
  }

  List<Container> getPersons() {
    return [
      Container(
        padding: const EdgeInsets.all(8),
        child: const Text("He'd have you all unravel at the"),
        color: Colors.teal[100],
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: const Text('Heed not the rabble'),
        color: colorBlend(Color(0xff003cff), Color(0xffff0000)),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: const Text('111111111111'),
        color: colorBlend(Color(0x80003cff), Color(0x80ff0000)),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: const Text('22222222222'),
        color: colorBlend(Color(0x80ff0000), Color(0x80003cff)),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
            onTap: () {
              colorBlend(Colors.blue, Colors.red);
            },
            child: const Text('Revolution is coming...')),
        color: Color(0xff7f1e7f),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: const Text('Revolution, they...'),
        color: Colors.teal[600],
      ),
    ];
  }

  static Color colorBlend(Color firstColor, Color secondColor) {
    return Color.fromARGB(
      0xff,
      (firstColor.blue + secondColor.blue) ~/ 2,
      (firstColor.green + secondColor.green) ~/ 2,
      (firstColor.red + secondColor.red) ~/ 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(controller: _controller)),
        Expanded(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                children: getPersons()))
      ]),
      /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            */ /*   Text(_controller.text ?? "asdsad"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(controller: _controller)),*/ /*
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            )

          ],
        ),
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.ac_unit),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

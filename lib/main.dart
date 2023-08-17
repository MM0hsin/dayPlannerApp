import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(252, 255, 255, 255),
          title: const Text('DayPlanner'),
          titleTextStyle: const TextStyle(
              color: Colors.black, fontFamily: 'BebasNeue', fontSize: 30),
        ),
        body: const GetStarted(),
      ),
    );
  }
}

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Image(
              width: 500,
              height: 500,
              image: AssetImage('assets/images/notebook.png')),
          const Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text('Plan your day easily!',
                      style:
                          TextStyle(fontFamily: 'BebasNeue', fontSize: 40)))),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.black),
                      ))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const homepage()));
                  },
                  child: const Text("Get Started",
                      style: TextStyle(fontSize: 14))),
            ),
          ),
        ],
      ),
    );
  }
}

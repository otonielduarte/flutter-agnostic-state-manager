import 'package:flutter/material.dart';
import 'package:flutter_poc_state_manager/controller.dart';
import 'package:flutter_poc_state_manager/observers/observer_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    print(' Widget build(BuildContext context) ');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${controller.counter.name}',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            ObserverState(
                setState: controller.counter,
                builder: (BuildContext context, int counter) {
                  print(
                      '>>>>>>>>>>>>>>>>>> ObserverState Change ${controller.counter.name} ');
                  return Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

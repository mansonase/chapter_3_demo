import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: FractionallySizedBoxWidget(),
      home: FittedBoxWidget(),
      //home: ConstrainedBoxWidget(),
      //home: BaselineWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

           Container(
             alignment: Alignment.center,
             child:
/*
             Text(
               "Column has various properties to control how it sizes itself and how it positions its children. Here we use mainAxisAlignment to center the children vertically; the main axis here is the vertical axis because Columns are vertical (the cross axis would be horizontal"
               ,
               style: TextStyle(
                 color: Colors.blue,
                 fontSize: 20,
                 wordSpacing: 2,
                 letterSpacing: 1,
                 backgroundColor: Colors.black,
               ),
               textAlign: TextAlign.end,
               softWrap: true,
               overflow: TextOverflow.ellipsis,
               maxLines: 3,
             ),

 */
/*
             Icon(
               Icons.search,
               color: Colors.green,
               size: 100,
             ),

 */
             /*
             Image(
               image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
               width:120.0,
               height: 200.0,
               isAntiAlias: false,
             ),

              */
/*
             ElevatedButton(
               child: Text("click"),
               onPressed:() {},
               autofocus: false,
             )

 */

              FlutterLogo(
                size: 10,
                textColor: Colors.orange,
                style: FlutterLogoStyle.stacked,
              )




               /*
               SingleChildScrollView(
                  padding: EdgeInsets.all(15),
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    "hello 你好啊 "*10,
                  style: TextStyle(fontSize: 18, color: Colors.purple),
                  ),
               )

                */



           ),
/*
          ,Container(
            margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
            constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
            decoration: BoxDecoration(//背景装饰
            gradient: RadialGradient( //背景径向渐变
              colors: [Colors.red, Colors.orange],
              center: Alignment.topLeft,
              radius: .98
              ),
            boxShadow: [ //卡片阴影
            BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0
            )
            ]
          ),
          transform: Matrix4.rotationZ(.2), //卡片倾斜变换
          alignment: Alignment.center, //卡片内文字居中
          child: Text( //卡片文字
          "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
      ),

 */


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FractionallySizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBox"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: new FractionallySizedBox(
                  alignment: Alignment.topLeft,
                  widthFactor: 1.5,
                  heightFactor: 0.5,
                  child: new Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.0),
                child: Text(
                  "widthFactor: 1.5\nheightFactor: 0.5",
                  style: new TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: new FractionallySizedBox(
                  alignment: Alignment.topLeft,
                  widthFactor: null,
                  heightFactor: 0.5,
                  child: new Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.0),
                child: Text(
                  "widthFactor: null\nheightFactor: 0.5",
                  style: new TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: new FractionallySizedBox(
                  alignment: Alignment.topLeft,
                  widthFactor: 1.5,
                  heightFactor: null,
                  child: new Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.0),
                child: Text(
                  "widthFactor: 1.5\nheightFactor: null",
                  style: new TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: new FractionallySizedBox(
                  alignment: Alignment.topLeft,
                  widthFactor: null,
                  heightFactor: null,
                  child: new Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.0),
                child: Text(
                  "widthFactor: null\nheightFactor: null",
                  style: new TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child: new FittedBox(
                  fit: BoxFit.contain,
                  alignment: Alignment.topLeft,
                  child: new Container(
                    color: Colors.yellow,
                    child: new Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.contain",
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child: new FittedBox(
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft,
                  child: new Container(
                    color: Colors.yellow,
                    child: new Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.cover",
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child: new FittedBox(
                  fit: BoxFit.fill,
                  alignment: Alignment.topLeft,
                  child: new Container(
                    color: Colors.yellow,
                    child: new Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.fill",
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child: new FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.topLeft,
                  child: new Container(
                    color: Colors.yellow,
                    child: new Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.scaleDown",
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child: new FittedBox(
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topLeft,
                  child: new Container(
                    color: Colors.yellow,
                    child: new Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.fitHeight",
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 130.0,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0),
                child: new FittedBox(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topLeft,
                  child: new Container(
                    color: Colors.yellow,
                    child: new Text("FittedBox"),
                  ),
                ),
              ),
              Text(
                "BoxFit.fitWidth",
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100.0,
          minHeight: 100.0,
          maxWidth: 250.0,
          maxHeight: 250.0,
        ),
        child: new Container(
          width: 300.0,
          height: 300.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
class BaselineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baseline"),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Baseline(
            baseline: 100.0,
            baselineType: TextBaseline.alphabetic,
            child: new Text(
              '今天天气真好',
              style: new TextStyle(
                fontSize: 18.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          new Baseline(
            baseline: 100.0,
            baselineType: TextBaseline.alphabetic,
            child: new Text(
              '适合晨练',
              style: new TextStyle(
                fontSize: 30.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          new Baseline(
            baseline: 100.0,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ],
      ),
    );
  }
}


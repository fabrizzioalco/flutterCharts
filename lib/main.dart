import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_charts/Charts/LineChart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'Charts/Bar Chart.dart';
import 'Charts/LineChart.dart';
import 'Charts/ScatterChartView.dart';
//import 'Charts/ScatterChart.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes:{
        '/BarChart': (BuildContext context )=> BarChartView(),
        '/LineChart': (BuildContext context)=> LineChartView(),
        '/ScatterChart': (BuildContext context) => ScatterChartView()
      },
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
  final List<String> chartNames = ["Bar Chart", "Line Chart", "Pie Chart", "Horizontal Bar Chart"];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Charts')
      ),
      body: Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('BarChart'),
            trailing: Icon(Icons.arrow_forward),
            onTap:(){
              Navigator.pushNamed(context, '/BarChart');
            },
          ),
          ListTile(
            title: Text('Line Chart'),
            trailing: Icon(Icons.arrow_forward),
            onTap:(){
              Navigator.pushNamed(context, '/LineChart');
            } ,
          ),
          ListTile(
            title: Text('Scatter Chart') ,
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.pushNamed(context, '/ScatterChart');
            },
          ),
          ListTile(
            title: Text('Bar Chart second version'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text('Line Chart second version'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text('Scatter Chart second version'),
            trailing: Icon(Icons.arrow_forward),
          )
        ],
      )
     
    ),
    );
  }




  
}

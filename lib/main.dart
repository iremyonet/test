import 'package:flutter/material.dart';
import 'package:model/user_services.dart';
import 'models/dataModel.dart';
import 'user_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<dataModel> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = UserService().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<dataModel>(
          future: _futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // Handle data returned from the API
              return Text(snapshot.data.toString());
            } else if (snapshot.hasError) {
              // Handle errors thrown during the API call
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

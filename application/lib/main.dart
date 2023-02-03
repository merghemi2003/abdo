import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity,size.height * 0.4),
          child: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            backgroundColor: Colors.deepOrange,
            bottom: const TabBar(
              padding: EdgeInsets.symmetric(horizontal: 80),
              labelPadding: EdgeInsets.symmetric(vertical: 50),
              overlayColor: MaterialStatePropertyAll(Colors.transparent),
              tabs: [
                Tab(icon: Icon(Icons.add),),
                Tab(icon: Icon(Icons.add),),
              ],
            ),
          ),

        ),
        body: const TabBarView(
          children: [
            Text('data1'),
            Text('data2'),
          ],

        ),
      ),
    );
  }
}

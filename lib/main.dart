import 'dart:ui';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.cyan)
      ),
      // home: const DemoPage(title : 'PDF Home Page')
      home: const PDFViewerPage()
    );
  }
}

class DemoPage extends StatelessWidget{
  const DemoPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        backgroundColor: Colors.black87,
        shadowColor: Colors.amber,
        foregroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "The Button",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30
                ),
              ),
            ElevatedButton(
              onPressed: (){
              //Placeholder stuff
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                "View PDF",
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,

    );
  }
}

class PDFViewerPage extends StatelessWidget{
  const PDFViewerPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("THE PDF"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FloatingActionButton(
              onPressed: (){
                //go back to home
              },
              child: Icon(Icons.arrow_left)
            )
          ],
        )
      )
    );
  }
}
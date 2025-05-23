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
      home: const DemoPage(title : 'PDF Home Page')
      // home: const PDFViewerPage()
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
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Coding Resources Material",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const PDFViewerPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      "View PDF",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "This is a demo assessment exhibit.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),

      backgroundColor: Colors.black,

    );
  }
}

class PDFViewerPage extends StatefulWidget{
  const PDFViewerPage({super.key});

  @override
  State<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Coding Resources"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SfPdfViewer.asset(
          'assets/coding.pdf',
          scrollDirection: PdfScrollDirection.vertical,
          canShowScrollStatus: true,
          enableTextSelection: true,
          maxZoomLevel: 10000,
          canShowTextSelectionMenu: true,
          pageLayoutMode: PdfPageLayoutMode.continuous,
          )
      )
    );
  }
}
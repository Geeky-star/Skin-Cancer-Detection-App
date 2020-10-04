import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medicalapp/router.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';
import 'package:medicalapp/drawer.dart';
import 'package:medicalapp/maps_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        title: Text(
          'Welcome to Medico',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.blue[200]),
        ),
        seconds: 8,
        navigateAfterSeconds: AfterSplash(),
        image: Image.asset('assets/Loading Satisfies.gif'),
        backgroundColor: Colors.white,
        photoSize: 100.0,
        onClick: () => print("Flutter"),
      ),
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  File imageFile;

  List _outputs;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
      numThreads: 1,
    );
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        numResults: 2,
        threshold: 0.2,
        asynch: true);
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("MedicoApp"),
      ),
      drawer: NavDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Center(
            child: RaisedButton(
              child: Text("Upload Image"),
              color: Colors.blue[200],
              onPressed: () => _showSelectionDialog(context),
            ),
          ),
          _loading
              ? Container(
                  height: 200,
                  width: 200,
                )
              : Container(
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      imageFile == null
                          ? Container()
                          : _outputs != null
                              ? Text(
                                  _outputs[0]["label"],
                                  style: TextStyle(color: Colors.black),
                                )
                              : Container(child: Text("Cannot find"))
                    ],
                  ),
                ),
          SizedBox(
            height: 300,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(100),
                child: FloatingActionButton(
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  child: Center(
                    child: Icon(Icons.chat),
                  ),
                  elevation: 10.0,
                  backgroundColor: Colors.blue[200],
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 40,
                child: RaisedButton(
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  child: Center(
                    child: Icon(Icons.location_on),
                  ),
                  elevation: 10.0,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GoogleMapsSampleApp())),
                  color: Colors.blue[200],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Make your Choice!"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () {
                      _openGallery(context);
                      Navigator.of(context).pop();
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                  ),
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () {
                      _openCamera(context);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _openGallery(BuildContext context) async {
    final picture = await ImagePicker().getImage(source: ImageSource.gallery);
    if (picture == null) return null;
    this.setState(() {
      _loading = true;
      imageFile = File(picture.path);
    });
    // ignore: unnecessary_statements
    classifyImage(imageFile);
  }

  void _openCamera(BuildContext context) async {
    final picture = await ImagePicker().getImage(source: ImageSource.camera);
    if (picture == null) return null;
    this.setState(() {
      _loading = true;
      imageFile = File(picture.path);
    });
    // ignore: unnecessary_statements
    classifyImage(imageFile);
  }
}

import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _About createState() => _About();
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Medico App"),
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Text(
          "Medico App is specifically built for the Skin Cancer Detection. It takes an input as image from camera and gallery to predict the results. The users can consult with an AI trained chatbot, and learn more about disease and treatment. The User can find the nearset hospital for the treatment through the google map. The Users can learn more about diseases in the disease section and should consult doctor asap if they find something happening to them relatively.",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

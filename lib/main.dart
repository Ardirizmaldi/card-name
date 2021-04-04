import 'package:flutter/material.dart';
import 'package:mi_card/constants.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: MainConstants.radiusAvatar,
                  backgroundImage: AssetImage(MainConstants.photoPath),
                ),
                Text(
                  MainConstants.name,
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: MainConstants.nameFontSize,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  MainConstants.role,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: MainConstants.roleFontSize,
                    letterSpacing: 2.5,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MainConstants.distance,
                  width: 200,
                  child: Divider(
                    thickness: 3,
                    color: Colors.teal.shade200,
                  ),
                ),
                renderForm(
                  Icons.phone_in_talk_sharp,
                  MainConstants.phoneNo,
                ),
                renderForm(
                  Icons.email_sharp,
                  MainConstants.email,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget renderForm(
    IconData icon,
    String text,
  ) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 80,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal.shade800,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: MainConstants.formFontSize,
            letterSpacing: 1.5,
            color: Colors.teal.shade900,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

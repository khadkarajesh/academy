import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    theme: ThemeData(
      primaryColor: Colors.white,
      primaryColorDark: Colors.white,
      accentColor: Colors.blueAccent,
    ),
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 16),
            SvgPicture.asset(
              "assets/images/app_banner.svg",
              height: 300,
              allowDrawingOutsideViewBox: true,
            ),
            SizedBox(height: 16),
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(height: 16),
            Text(
              "We believe on learning by doing. "
              "You will learn industy best practices by doing projects",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Flexible(
                    flex: 1,
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
                      child: Text("Login"),
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(16)),
                    )),
                SizedBox(width: 16),
                new Flexible(
                    flex: 1,
                    child: OutlineButton(
                      textColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(32, 8, 32, 8),
                      highlightedBorderColor: Colors.black,
                      child: Text("Signup"),
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(16)),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}

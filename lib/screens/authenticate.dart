import 'package:flutter/cupertino.dart';
import 'package:mednery/screens/signinpage.dart';
import 'package:mednery/screens/signuppage.dart';

class Authenticate extends StatefulWidget {
  @override
  _authenticateState createState() => _authenticateState();
}

class _authenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn==true?signinpage(toggleView:toggleView):signuppage(toggleView:toggleView);
    ;
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mednery/screens/authenticate.dart';
import 'package:google_fonts/google_fonts.dart';

class signuppage extends StatefulWidget {

  final Function toggleView;
  signuppage({this.toggleView});

  @override
  _signuppageState createState() => _signuppageState();

}



class _signuppageState extends State<signuppage> {

  static final _formKey = GlobalKey<FormState>();
  bool rememberMe=false;
  @override
  Widget build(BuildContext context) {


    String email='',password = '',name='';
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/signinbk.png'),
                fit: BoxFit.fitWidth
            )
        ),
        child: Stack(
          children: [
            Positioned(
              top: 90,
              left: 120,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text('Sign Up',style: GoogleFonts.roboto(fontSize: 40,color: Colors.white),)
                  ]),
            ),
            ListView(//crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 180),

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        width: 270,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0,left: 20),
                          child: TextFormField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'name',
                            ),
                            validator: (val)=>val.isEmpty?'enter an name':null,
                            onChanged: (val){
                              setState(() {
                                name = val;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 270,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                            color: Colors.white

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0,left: 20),
                          child: TextFormField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'email',
                            ),
                            validator: (val)=>val.isEmpty?'enter an email':null,
                            onChanged: (val){
                              setState(() {
                                email = val;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 270,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0,left: 20),
                          child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'password',
                              ),
                              validator: (val)=>val.length<6?'enter a password 6+ chars long':null,
                              obscureText: true,
                              onChanged: (val){
                                setState(() {
                                  password = val;
                                });
                              }
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 270,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0,left: 20),
                          child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'confirm password',
                              ),
                              validator: (val)=>val.length<6?'enter a password 6+ chars long':null,
                              obscureText: true,
                              onChanged: (val){
                                setState(() {
                                  password = val;
                                });
                              }
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        width: 250,
                        height: 40,
                        child: RaisedButton(
                            onPressed: (){
                              if(_formKey.currentState.validate())
                                print('good');
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0)
                            ),
                            color: Color.fromRGBO(92, 139, 247,1),
                            child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [Icon(Icons.assignment_turned_in,color: Colors.white,),SizedBox(width: 6),Text('SIGN UP',style: TextStyle(fontSize: 17,color: Colors.white)),],)),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: (){
                          widget.toggleView();
                        },
                        child: Text('SIGN IN',style: TextStyle(fontSize: 17,color: Color.fromRGBO(92, 139, 247,1)),),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 250,
                        height: 40,
                        child: RaisedButton(
                            onPressed: (){
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0)
                            ),
                            color: Color.fromRGBO(92, 139, 247,1),
                            child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [Image(image: AssetImage('assets/google.jpg'),),SizedBox(width: 3,),Text('Continue with Google',style: TextStyle(fontSize: 17,color: Colors.white))],)),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


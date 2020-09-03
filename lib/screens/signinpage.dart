import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signinpage extends StatefulWidget {

  final Function toggleView;
  signinpage({this.toggleView});

  @override
  _signinpageState createState() => _signinpageState();

}



class _signinpageState extends State<signinpage> {

  static final _formKey = GlobalKey<FormState>();
  bool rememberMe=false;
  @override
  Widget build(BuildContext context) {


    String email='',password = '';
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
              top: 200,
              left: 110,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text('welcome',style: GoogleFonts.roboto(fontSize: 40,color: Colors.white),)
                  ]),
            ),
            ListView(//crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 260),

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 40.0),
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
                    SizedBox(height: 40.0),
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
                      SizedBox(height: 10),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value:rememberMe,
                            onChanged: (value){
                              setState(() {
                                rememberMe = value;
                              });
                            },
                          ),
                          Text('Remember me')
                        ],
                      ),
                    SizedBox(height: 20),
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
                        child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [Icon(Icons.forward,color: Colors.white,),SizedBox(width: 6),Text('SIGN IN',style: TextStyle(fontSize: 17,color: Colors.white)),],)),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: (){
                          widget.toggleView();
                        },
                        child: Text('SIGN UP',style: TextStyle(fontSize: 17,color: Color.fromRGBO(92, 139, 247,1)),),
                      ),
                      SizedBox(height: 20),
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


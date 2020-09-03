import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("HOMEPAGE"),centerTitle: true,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 180),
          Center(child: RaisedButton(onPressed: (){},child: Text('click me'),),),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 300,
              width: size.width-15,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 2)
              ),
              child: GridView.count(
                shrinkWrap: true,
                  crossAxisCount: 3,
                  children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/caretaker.png'),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                  ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/medical items.png'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/hospital bed attendant.png'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/nurses.png'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/ambulance.png'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Icon(Icons.arrow_downward,size: 50,),
                            SizedBox(height: 10,),
                            Text('show more',style: GoogleFonts.lato(fontSize: 20),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}

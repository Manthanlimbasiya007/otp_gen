import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  TextEditingController l= TextEditingController();
  int leng=0;
  List v=[""];
  int? r;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xff15172b),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.all(15),
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text("OTP Generator",
              style: TextStyle(
                  fontSize: 50,
                  color: Color(0xfff6db87)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(100),
            height: 60,
            width: double.infinity,
            child: TextField(
                style: TextStyle(
                  color: Color(0xfffcf6ba),
                ),
                controller: l,
                cursorColor: Color(0xfffcf6ba),
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,color: Color(0xfffcf6ba),
                        )
                    ),
                    hintText: "Enter OTP Length",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,color: Color(0xfffcf6ba),
                        )
                    )
                )
            ),
          ),
          InkWell(
            onTap: (){
              String le=l.text;
              leng=int.parse(le);
              var rnd=Random();
              setState(() {
                v.clear();
                for(int i=0; i<leng; i++)
                {
                  r=rnd.nextInt(9);
                  v.add(r);
                }
                // v1=int.parse("$v");
                //    print(v1);
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 100,right: 100),
              height: 60,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text("Generate OTP",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Color(0xffffe8b8),
                    Color(0xfff6db87),
                  ])
              ),
            ),
          ),
          SizedBox(height: 100,),
          Container(
            margin: EdgeInsets.all(15),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffe8b8),
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: Text("$v",
              style: TextStyle(
                  fontSize: 30
              ),
            ),
          ),
          SizedBox(height: 100,),
          InkWell(
            onTap: (){
              setState(() {
                l.text="";
              });
            },
            child: Container(
              margin:EdgeInsets.only(left: 100,right: 100),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffffe8b8),
                        Color(0xfff6db87),
                      ]
                  )
              ),
              alignment: Alignment.center,
              child: Text("Reset",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black
                ),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}
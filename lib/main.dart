import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text('Calculeter',style: TextStyle(color: Colors.white),),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100,top: 200),
                  child: Center(
                    child: Text(
                      '$num',style: TextStyle(color: Colors.grey,fontSize: 50),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:FloatingActionButton(onPressed: ()
                        {
                            setState(() {
                              num=num-1;
                              num--;
                            });
                        },
                          backgroundColor: Colors.blue,
                          child: Text('-2',style: TextStyle(color: Colors.white,fontSize: 30),),
                        )
                    ),
                    SizedBox(width: 5,),
                    Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:FloatingActionButton(onPressed: ()
                        {
                          setState(() {
                            num=num+1;
                            num++;
                          });
                        },
                          backgroundColor: Colors.blue,
                          child: Text('+2',style: TextStyle(color: Colors.white,fontSize: 30),),
                        )
                    ),
                  ],

                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:FloatingActionButton(onPressed: ()
                        {
                          setState(() {
                            num=num-3;
                            num--;
                          });
                        },
                          backgroundColor: Colors.blue,
                          child: Text('-4',style: TextStyle(color: Colors.white,fontSize: 30),),
                        )
                    ),
                    SizedBox(width: 5,),
                    Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:FloatingActionButton(onPressed: ()
                        {
                          setState(() {
                            num=num+3;
                            num++;
                          });
                        },
                          backgroundColor: Colors.blue,
                          child: Text('+4',style: TextStyle(color: Colors.white,fontSize: 30),),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:FloatingActionButton(onPressed: (){
                        setState(() {
                          num=0;
                        });
                      },
                        backgroundColor: Colors.blue,
                      child:  Center(child: Text('Clear',style: TextStyle(color: Colors.white,fontSize: 30),)),
                      )
                    ),
                  ],
                ),
              ],
            ),



          ),
        )
    );
    ;
  }
}

int num=0;

import 'package:flutter/material.dart';
import 'dart:ui';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(0.1),
               // borderRadius: BorderRadius.circular(10),
              ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Container(
                        width: 40.0, // Set container width and height
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Set circle shape
                          image: DecorationImage(
                            fit: BoxFit.cover, // Set image fit
                            image:
                                AssetImage('assets/person.jpg'), // Set image path
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 30,bottom: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Todays's Task",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Run 2 Miles",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "Loss 50 Lbs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "The ultimate Goal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "Your Personal AI coach",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10,left: 50,right: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            //controller: name,
                            cursorColor: Colors.black12,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: "I need some advice ....",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                              fillColor: Colors.grey.shade800,
                              filled: true,
                              errorBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Container(
                //         child: Text(
                //           "Hello,\nErlich Bachman",
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 32,
                //               fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 20, top: 10),
                //   child: Container(
                //     height: 105,
                //     child: ListView.builder(
                //       shrinkWrap: true,
                //       scrollDirection: Axis.horizontal,
                //       itemCount: 4,
                //       itemBuilder: (BuildContext context, int index) => Card(
                //         color: Colors.grey.shade800,
                //         shape: RoundedRectangleBorder(
                //           borderRadius:
                //               BorderRadius.circular(10.0), // Set corner radius
                //         ),
                //         child: Column(
                //           children: [
                //             Center(
                //                 child: Row(
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.only(
                //                       left: 15, top: 10, right: 100),
                //                   child: Text(
                //                     'Lose 50 lbs',
                //                     style: TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 20,
                //                         fontWeight: FontWeight.bold),
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding:
                //                       EdgeInsets.only(top: 5, right: 5, bottom: 0),
                //                   child: Text(
                //                     "Edit",
                //                     textAlign: TextAlign.end,
                //                     style: TextStyle(color: Colors.white),
                //                   ),
                //                 ),
                //               ],
                //             )),
                //             Padding(
                //               padding: EdgeInsets.only(top: 40, bottom: 20),
                //               child: Container(
                //                 width: 200,
                //                 child: LinearProgressIndicator(
                //                   value: 0.7,
                //                   // The value should be between 0.0 and 1.0
                //                   backgroundColor: Colors.grey,
                //                   valueColor:
                //                       AlwaysStoppedAnimation<Color>(Colors.blue),
                //                 ),
                //               ),
                //             )
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 10, top: 30),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius:
                          BorderRadius.circular(15.0), // Set rounded corner radius
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Today quote",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                              child: Text(
                            "Our greated Glory is not never failing, But rising every time we fail",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jorden Peterson advice",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                  child: Container(
                    child: Image.asset("assets/advice.jpg"),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    height: 145,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today Goal",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Card(
                            color: Colors.grey.shade800,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Set corner radius
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                    child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 10, right: 100),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.deepPurpleAccent,
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Set rounded corner radius
                                        ),
                                        child: Icon(
                                          Icons.move_down,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 5, right: 5, bottom: 0),
                                      child: Text(
                                        "Edit",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, top: 30, bottom: 10),
                                  child: Text(
                                    "Runs 2 milles",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "AI Coach",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 10, top: 10),
                  child: Container(
                    width: width,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius:
                          BorderRadius.circular(15.0), // Set rounded corner radius
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Let's Talk",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                                15.0), // Set rounded corner radius
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: Text(
                              "I need some advice",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

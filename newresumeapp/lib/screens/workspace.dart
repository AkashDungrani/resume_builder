import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class workspace extends StatefulWidget {
  const workspace({super.key});

  @override
  State<workspace> createState() => _workspaceState();
}

class _workspaceState extends State<workspace> {
  List<Map<String, dynamic>> akash = [
    {
      'title': "Contact Info",
      'image': Image.asset("assets/images/cb.png"),
      'page': 'contact',
    },
    {
      'title': "Carrier Objective",
      'image': Image.asset("assets/images/briefcase.png"),
      'page': 'carrier',
    },
    {
      'title': "Personal Details",
      'image': Image.asset("assets/images/user.png"),
      'page': 'personal',
    },
    {
      'title': "Education",
      'image': Image.asset("assets/images/edu.png"),
      'page': 'education',
    },
    {
      'title': "Experiences",
      'image': Image.asset("assets/images/ex.png"),
      'page': 'experience',
    },
    {
      'title': "Technical Skills",
      'image': Image.asset("assets/images/o.png"),
      'page': 'skills',
    },
    {
      'title': "Interest/Hobbies",
      'image': Image.asset("assets/images/hobby.png"),
      'page': 'hobby',
    },
    {
      'title': "Projects",
      'image': Image.asset("assets/images/project.png"),
      'page': 'project',
    },
    {
      'title': "Achievements",
      'image': Image.asset("assets/images/achive.png"),
      'page': 'achievement',
    },
    {
      'title': "References",
      'image': Image.asset("assets/images/handshake.png"),
      'page': 'reference',
    },
    {
      'title': "Declaration",
      'image': Image.asset("assets/images/declare.png"),
      'page': 'declaration',
    },
    {
      'title': "Declare",
      'image': Image.asset("assets/images/declare.png"),
      'page': 'declare',
    },
    {
      'title': "PDF",
      'image': Image.asset("assets/images/declare.png"),
      'page': 'pdf',
    },

  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            "Resume Workspace",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Build Option",
            style: TextStyle(fontSize: 18),
          )
        ]),
        elevation: 0,
        toolbarHeight: 150,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ...akash
                .map(
                  (e) => Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    height: size.height * 0.08,
                    width: size.width,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300)),
                    child:
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          e['image'],
                          Text(
                            e['title'],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.pushNamed(context, e['page']);
                                });
                              },
                              child: Icon(Icons.arrow_forward_ios))
                        ]),
                  ),
                )
                .toList(),



            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/briefcase.png"),
            //         Text(
            //           "Carrier Objective",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         GestureDetector(
            //             onTap: () {
            //               setState(() {
            //                 Navigator.pushNamed(context, 'carrier');
            //               });
            //             },
            //             child: Icon(Icons.arrow_forward_ios))
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/user.png"),
            //         Text(
            //           "Personal Details",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         GestureDetector(
            //             onTap: () {
            //               setState(() {
            //                 Navigator.pushNamed(context, 'personal');
            //               });
            //             },
            //             child: Icon(Icons.arrow_forward_ios))
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/edu.png"),
            //         Text(
            //           "Education",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         Icon(Icons.arrow_forward_ios)
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/ex.png"),
            //         Text(
            //           "Experiences",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         Icon(Icons.arrow_forward_ios)
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/o.png"),
            //         Text(
            //           "Technical Skills",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         Icon(Icons.arrow_forward_ios)
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/hobby.png"),
            //         Text(
            //           "Interest/Hobbies",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         Icon(Icons.arrow_forward_ios)
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/project.png"),
            //         Text(
            //           "Projects",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         Icon(Icons.arrow_forward_ios)
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/achive.png"),
            //         Text(
            //           "Achievements",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         Icon(Icons.arrow_forward_ios)
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/handshake.png"),
            //         Text(
            //           "References",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         Icon(Icons.arrow_forward_ios)
            //       ]),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.all(8),
            //   height: size.height * 0.08,
            //   width: size.width,
            //   // color: Colors.blue,
            //   decoration: BoxDecoration(
            //       border: Border.all(width: 1, color: Colors.grey.shade300)),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset("assets/images/declare.png"),
            //         Text(
            //           "Declaration",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w600),
            //         ),
            //         Icon(Icons.arrow_forward_ios)
            //       ]),
            // ),
          ],
        ),
      ),
      
    );
  }
}

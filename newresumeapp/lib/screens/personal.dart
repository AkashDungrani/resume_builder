// Personal

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  bool checkboxval = false;
  
  GlobalKey<FormState> akash = GlobalKey<FormState>();
  TextEditingController datecontroller =
      TextEditingController(text: Globals.date);
      TextEditingController maritalcontroller =
      TextEditingController(text: Globals.Marriedstatus);
      TextEditingController singlecontroller =
      TextEditingController(text: Globals.single);
      TextEditingController marriedcontroller =
      TextEditingController(text: Globals.Married);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Details",
          style: TextStyle(fontSize: 25),
        ),
        toolbarHeight: 150,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Form(
              key: akash,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DOB",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextFormField(
                    controller: datecontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "DD/MM/YY",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                        validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Date as a Format";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.date = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Marital Status",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Radio(
                            value: Globals.single,
                            groupValue: Globals.Marriedstatus,
                            onChanged: (val) {
                              setState(() {
                                Globals.Marriedstatus = val!;
                              });
                            }),
                        Text(
                          "Single",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Radio(
                            value: Globals.Married,
                            groupValue: Globals.Marriedstatus,
                            onChanged: (val) {
                              setState(() {
                                Globals.Marriedstatus = val!;
                              });
                            }),
                        Text(
                          "Married",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Languages Known",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Checkbox(
                          value: Globals.english,
                          onChanged: (val) {
                            setState(() {
                              Globals.english = val!;
                            });
                          },
                        ),
                        Text(
                          "English",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Checkbox(
                          value: Globals.hindi,
                          onChanged: (val) {
                            setState(() {
                              Globals.hindi = val!;
                            });
                          },
                        ),
                        Text(
                          "Hindi",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Checkbox(
                          value: Globals.gujarati,
                          onChanged: (val) {
                            setState(() {
                              Globals.gujarati = val!;
                            });
                          },
                        ),
                        Text(
                          "Gujarati",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Nationality",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.blue,
                    child: DropdownButton(
                      iconSize: 40,
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),

                      value: Globals.country,
                      hint: Text("Select Country"),
                      items: [
                        DropdownMenuItem(
                          value: "India",
                          child: Text("India"),
                        ),
                        DropdownMenuItem(
                          value: "Australia",
                          child: Text("Australia"),
                        ),
                        DropdownMenuItem(
                          value: "England",
                          child: Text("England"),
                        ),
                        DropdownMenuItem(
                          value: "America",
                          child: Text("America"),
                        ),
                      ],
                      onChanged: (val) {
                        setState(() {
                          Globals.country = val!;
                        });
                      },
                      isExpanded: true,
                    ),
                  ),
                  SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       ElevatedButton(
                          onPressed: (() {
                            if (akash.currentState!.validate()) {
                              akash.currentState!.save();
                            }
                          }),
                          child: Text("Save")),
                           OutlinedButton(
                        onPressed: () {
                          akash.currentState!.reset();
                          setState(() {
                            datecontroller.clear();
                            maritalcontroller.clear();
                            singlecontroller.clear();
                            marriedcontroller.clear();

                            Globals.date = null;
                            Globals.Marriedstatus = null;
                            
                          });
                        },
                        child: Text("Reset"),
                      )
                     ],
                   ),
                ],
              ),
            )),
      ),
    );
  }
}

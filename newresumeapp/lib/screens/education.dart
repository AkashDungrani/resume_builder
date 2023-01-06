//Education
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  GlobalKey<FormState> akash = GlobalKey<FormState>();
  TextEditingController degreecontroller =
      TextEditingController(text: Globals.degree);
  TextEditingController clgcontroller =
      TextEditingController(text: Globals.clg);
      TextEditingController percontroller =
      TextEditingController(text: (Globals.per!=null)?Globals.per.toString():null);
      TextEditingController yearcontroller =
      TextEditingController(text: (Globals.year!=null)?Globals.year.toString():null);    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
        toolbarHeight: 150,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height / 1.8,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade300,
          child: Form(
            key: akash,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Course/Degree",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
                TextFormField(
                  controller: degreecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Latest Degree ",
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Degree ";
                    }
                  },
                  onSaved: (val) {
                    setState(() {
                      Globals.degree = val;
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "School/College/Institute",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
                TextFormField(
                  controller: clgcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter University Name",
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter School/Clg/Institute Name ";
                    }
                  },
                  onSaved: (val) {
                    setState(() {
                      Globals.clg = val;
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Percentage",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
                TextFormField(
                  controller: percontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "70% or 7.0 CGPA",
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Your Result";
                    }
                  },
                  onSaved: (val) {
                    setState(() {
                      Globals.per = double.parse(val!);
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Year Of Pass",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
                TextFormField(
                  controller: yearcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "2019",
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Passing Year ";
                    }
                  },
                  onSaved: (val) {
                    setState(() {
                      Globals.year = int.parse(val!);
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: (() {
                          if (akash.currentState!.validate()) {
                            akash.currentState!.save();
                          }
                        }),
                        child: Text("Submit")),
                         OutlinedButton(
                      onPressed: () {
                        akash.currentState!.reset();
                        setState(() {
                          degreecontroller.clear();
                          clgcontroller.clear();
                          percontroller.clear();
                          yearcontroller.clear();

                          Globals.degree = null;
                          Globals.clg = null;
                          Globals.per = null;
                          Globals.year = null;
                        });
                      },
                      child: Text("Reset"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

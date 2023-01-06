//Experience
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  GlobalKey<FormState> akash = GlobalKey<FormState>();
  TextEditingController companycontroller =
      TextEditingController(text: Globals.company);
  TextEditingController postcontroller =
      TextEditingController(text: Globals.post);
  TextEditingController rolecontroller =
      TextEditingController(text: Globals.role);
  TextEditingController djcontroller = TextEditingController(text: Globals.dj);
  TextEditingController decontroller = TextEditingController(text: Globals.de);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experience"),
        toolbarHeight: 150,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        child: Form(
          key: akash,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Company Name",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
              TextFormField(
                controller: companycontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "eg.Infosys",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please Enter Company Name ";
                  }
                },
                onSaved: (val) {
                  setState(() {
                    Globals.company = val;
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
                controller: postcontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "eg.Quality Test Engineer",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please Enter School/Clg/Institute Name ";
                  }
                },
                onSaved: (val) {
                  setState(() {
                    Globals.post = val;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Roles(Optional)",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
              TextFormField(
                controller: rolecontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "eg.Manager",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please Enter Your Result";
                  }
                },
                onSaved: (val) {
                  setState(() {
                    Globals.role = val;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Employed Status",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Radio(
                            value: Globals.pe,
                            groupValue: Globals.employe_status,
                            onChanged: (val) {
                              setState(() {
                                Globals.employe_status = val!;
                              });
                            }),
                        Text(
                          "Priviously Employed",
                          style: TextStyle(
                              fontSize: 10,
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
                            value: Globals.ce,
                            groupValue: Globals.employe_status,
                            onChanged: (val) {
                              setState(() {
                                Globals.employe_status = val!;
                              });
                            }),
                        Text(
                          "Currenty Employed",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
                color: Colors.black,
              ),
              (Globals.employe_status == Globals.pe)
                  ? Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Date Joined",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                // alignment: Alignment.center,
                                height: 50,
                                width: 150,
                                child: TextFormField(
                                  // key: akash,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter Your Joined date";
                                    }
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Globals.dj = val;
                                    });
                                  },
                                  controller: djcontroller,
                                  decoration: InputDecoration(
                                      hintText: "  DD/MM/YYYY",
                                      hintStyle: TextStyle(height: 1),
                                      border: OutlineInputBorder()),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Date Exit",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                // alignment: Alignment.center,
                                height: 50,
                                width: 150,
                                child: TextFormField(
                                  controller: decontroller,
                                  // key: akash,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter Your Exit date";
                                    }
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Globals.de = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      hintText: "  DD/MM/YYYY",
                                      hintStyle: TextStyle(height: 1),
                                      border: OutlineInputBorder()),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Date Joined",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                // alignment: Alignment.center,
                                height: 50,
                                width: 150,
                                child: TextFormField(
                                  // key: akash,
                                  controller: djcontroller,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter Your Joined date";
                                    }
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Globals.dj = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      hintText: "  DD/MM/YYYY",
                                      hintStyle: TextStyle(height: 1),
                                      border: OutlineInputBorder()),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
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
                        companycontroller.clear();
                        postcontroller.clear();
                        rolecontroller.clear();
                        djcontroller.clear();
                        decontroller.clear();

                        Globals.company = null;
                        Globals.post = null;
                        Globals.role = null;
                        Globals.dj = null;
                        Globals.de = null;
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
    );
  }
}

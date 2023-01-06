//Projects
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  GlobalKey<FormState> akash = GlobalKey<FormState>();
  TextEditingController prnamecontroller =
      TextEditingController(text: Globals.prname);
  TextEditingController prrolecontroller =
      TextEditingController(text: Globals.prrole);
  TextEditingController prteccontroller =
      TextEditingController(text: Globals.prtec);
  TextEditingController prdescontroller =
      TextEditingController(text: Globals.prdes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade200,
            child: Form(
              key: akash,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Title",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextFormField(
                    controller: prnamecontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Resume Builder App",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Project Name";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.prname = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Technologies",
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
                          value: Globals.c,
                          onChanged: (val) {
                            setState(() {
                              Globals.c = val!;
                            });
                          },
                        ),
                        Text(
                          "C Programing",
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
                          value: Globals.cplusplus,
                          onChanged: (val) {
                            setState(() {
                              Globals.cplusplus = val!;
                            });
                          },
                        ),
                        Text(
                          "C++",
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
                          value: Globals.flutter,
                          onChanged: (val) {
                            setState(() {
                              Globals.flutter = val!;
                            });
                          },
                        ),
                        Text(
                          "Flutter",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Roles",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextFormField(
                    controller: prrolecontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Organize team member,code analysis",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Your Role";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.prrole = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Technologies",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextFormField(
                    controller: prteccontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "5 - Programers",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Technologies";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.prtec = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Project Description",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextFormField(
                    controller: prdescontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Add Description",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Project Description";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.prdes = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: (() {
                            if (akash.currentState!.validate()) {
                              akash.currentState!.save();
                            }
                            setState(() {
                               prnamecontroller.clear();
                              prrolecontroller.clear();
                              prteccontroller.clear();
                              prdescontroller.clear();
                            });
                          }),
                          child: Text("Save")),
                      OutlinedButton(
                          onPressed: () {
                            akash.currentState!.reset();
                            setState(() {
                              prnamecontroller.clear();
                              prrolecontroller.clear();
                              prteccontroller.clear();
                              prdescontroller.clear();
                              Globals.prname = null;
                              Globals.prrole = null;
                              Globals.prtec = null;
                              Globals.prdes = null;
                            });
                          },
                          child: Text("Reset"),)
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

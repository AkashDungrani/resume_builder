//Reference
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';
class References extends StatefulWidget {
  const References({super.key});

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  GlobalKey<FormState> akash = GlobalKey<FormState>();
  TextEditingController refnamecontroller =
      TextEditingController(text: Globals.refname);
  TextEditingController refdescontroller =
      TextEditingController(text: Globals.refdes);
  TextEditingController reforgcontroller =
      TextEditingController(text: Globals.reforg);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("References"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 1.7,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade200,
            child: Form(
              key: akash,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reference Name",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextFormField(
                    controller: refnamecontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Akash Dungrani",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Refrence Name";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.refname = val;
                      });
                    },
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Designation",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextFormField(
                    controller: refdescontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Marketing MAnager, ID:111",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Designation Of Reference";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.refdes = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Organisation/Institute",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  TextFormField(
                    controller: reforgcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Green Energy Pvt. Ltd.",
                        hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Organnisation Name";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.reforg = val;
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
                          }),
                          child: Text("Save")),
                      OutlinedButton(
                        onPressed: () {
                          akash.currentState!.reset();
                          setState(() {
                            refnamecontroller.clear();
                            refdescontroller.clear();
                            reforgcontroller.clear();
                            
                            Globals.refname = null;
                            Globals.refdes = null;
                            Globals.reforg= null;

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

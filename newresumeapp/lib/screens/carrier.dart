//carrier
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Carrier extends StatefulWidget {
  const Carrier({super.key});

  @override
  State<Carrier> createState() => _CarrierState();
}

class _CarrierState extends State<Carrier> {
  GlobalKey<FormState> akash = GlobalKey<FormState>();
  TextEditingController descontroller =
      TextEditingController(text: Globals.description);
      TextEditingController designationcontroller =
      TextEditingController(text: Globals.designation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Carrier Objective",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        toolbarHeight: 150,
      ),
      body: Center(
        child: Form(
          key: akash,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Carrer Objective",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      color: Colors.white,
                      child: TextFormField(
                        controller: descontroller,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Description";
                          }
                        },
                        onSaved: (val) {
                          setState(() {
                            Globals.description = val;
                          });
                        },
                        maxLines: 7,
                        decoration: InputDecoration(
                          hoverColor: Colors.red,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          enabled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          border: OutlineInputBorder(),
                          hintText: "Description",
                          hintStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Current Designation(Experienced Candidate)",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: designationcontroller,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter Designation";
                        }
                      },
                      onSaved: (val) {
                        setState(() {
                          Globals.designation = val;
                        });
                      },
                      maxLines: 1,
                      decoration: InputDecoration(
                        hoverColor: Colors.red,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(),
                        hintText: "Software Engineer",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
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
                        descontroller.clear();
                        designationcontroller.clear();
                       
                        Globals.description = null;
                        Globals.designation = null;
                      
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
      backgroundColor: Colors.grey.shade300,
    );
  }
}

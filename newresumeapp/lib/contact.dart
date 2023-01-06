import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:newresumeapp/models/globals.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  GlobalKey<FormState> akash = GlobalKey<FormState>();
  getimagefromcamera()async{
    ImagePicker pick = ImagePicker();
    XFile? file=await pick.pickImage(source: ImageSource.gallery);
    if(file!=null){
      setState(() {
        Globals.image=File(file.path);
      });
    }
  }
  TextEditingController namecontroller =
      TextEditingController(text: Globals.name);
      TextEditingController emailcontroller =
      TextEditingController(text: Globals.Email);
      TextEditingController contactcontroller =
      TextEditingController(text: (Globals.contact!=null)?Globals.contact.toString():null);
      TextEditingController addresscontroller =
      TextEditingController(text: Globals.address);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume Workspace"),
        elevation: 0,
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          tabs: [
            Text("Contact"),
            Text("Photo"),
          ],
          controller: tabController,
          labelPadding: EdgeInsets.all(10),
          labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: akash,
              child: Column(
                children: [
                  TextFormField(
                    controller: namecontroller,
                    onSaved: (val) {
                      setState(() {
                        Globals.name = val;
                      });
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Name";
                      }
                    },
                    decoration: InputDecoration(
                      hoverColor: Colors.red,
                      // enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.grey)),
                      enabled: true,
                      hintText: "Name",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Email Id....";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.Email = val;
                      });
                    },
                    decoration: InputDecoration(
                      hoverColor: Colors.red,
                      enabled: true,
                      suffixText: "@gmail.com",
                      suffixStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.email,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: contactcontroller,
                    validator: (val) {
                      if (val!.length == 10) {
                        return null;
                      } else if (val.isEmpty) {
                        return "Enter Number";
                      } else {
                        return "Entered Value Is Invalid";
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.contact = int.parse(val!);
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hoverColor: Colors.red,
                      // enabled: true,
                      hintText: "Phone",
                      // prefixText: "+91",
                      prefixStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.phone_iphone,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: addresscontroller,
                    validator: (val) {
                       if (val!.isEmpty) {
                        return "Enter Address";
                      } 
                    },
                    onSaved: (val) {
                      setState(() {
                        Globals.address = val;
                      });
                    },
                    maxLines: 3,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hoverColor: Colors.red,
                      enabled: true,
                      hintText: "Address",
                      // prefixText: "+91",
                      // prefixStyle: TextStyle(
                      //     color: Colors.grey, fontWeight: FontWeight.w500),
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      prefixIcon: Icon(
                        Icons.location_on_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            namecontroller.clear();
                            emailcontroller.clear();
                            contactcontroller.clear();
                            addresscontroller.clear();
                            Globals.name = null;
                            Globals.Email = null;
                            Globals.contact = null;
                            Globals.address = null;
                          });
                        },
                        child: Text("Reset"),
                      ),
                    ],
                  ),
                      
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      color: Colors.white,
                    ),
                    Stack(alignment: Alignment(1,1),
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: (Globals.image!=null)?FileImage(Globals.image!):null,
                        ),
                        FloatingActionButton(onPressed: (() {
                          setState(() {
                            getimagefromcamera();
                          });
                        }),
                        mini: true,
                        child: Icon(Icons.add),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("save"),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}


//Declaration
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Declaration"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          child: Column(
               children: [
                 Container(height: 200,
                 width: 200,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                 ),
                   child: Image(image: FileImage(Globals.image!),)
                 ),
                 SizedBox(height: 10,),
                 Container(
                   alignment: Alignment.center,
                   height: MediaQuery.of(context).size.height/15,
                   width: MediaQuery.of(context).size.width/1.5,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 2,color: Colors.blue.shade500)),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text("${Globals.name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                       Text("${Globals.designation}",style: TextStyle(fontSize: 16,color: Colors.grey),)
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                       alignment: Alignment.center,
                       height: 40,
                       width: 230,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),
                       child: Text("Contact Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                     ),
                   ],
                 ),
                 SizedBox(height: 10,),
                 Container(
                   padding: EdgeInsets.all(20),
                   height: 130,
                   width: MediaQuery.of(context).size.width,
                  //  color: Colors.blue,
                  decoration: BoxDecoration(border: Border.all(width: 3,color: Colors.blue),
                  borderRadius: BorderRadius.circular(30)),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                    Text("Name:${Globals.name}",style: TextStyle(fontSize: 18),),
                    Text("Email:${Globals.Email}",style: TextStyle(fontSize: 18)),
                    Text("Contact:${Globals.contact}",
                        style: TextStyle(fontSize: 18)),
                    Text("Address:${Globals.address}",
                        style: TextStyle(fontSize: 18)),
                     ],
                   ),
                 ),
                 SizedBox(height: 20,),
                 Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Text(
                      "Personal Details",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
                 Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date Of Birth:${Globals.date}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text("Marrital Status:${Globals.Marriedstatus}",
                        style: TextStyle(fontSize: 18)),
                    Text("language:${Globals.language}",
                        style: TextStyle(fontSize: 18)),
                    Text("Nationality:${Globals.country}",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Text(
                      "Education",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Degree:${Globals.degree}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text("Clg:${Globals.clg}",
                        style: TextStyle(fontSize: 18)),
                    Text("Percentage:${Globals.per}",
                        style: TextStyle(fontSize: 18)),
                    Text("Passing Year:${Globals.year}",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Text(
                      "Experience",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Company Name:${Globals.company}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text("Institute:${Globals.post}",
                        style: TextStyle(fontSize: 18)),
                    Text("Role:${Globals.role}",
                        style: TextStyle(fontSize: 18)),
                    Text("Employed Status:${Globals.employe_status}",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Text(
                      "Technicalskills",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   "Date Of Birth:${Globals.date}",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    // Text("Marrital Status:${Globals.Marriedstatus}",
                    //     style: TextStyle(fontSize: 18)),
                    // Text("language:${Globals.language}",
                    //     style: TextStyle(fontSize: 18)),
                    // Text("Nationality:${Globals.country}",
                    //     style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Text(
                      "Hobbies",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   "Date Of Birth:${Globals.date}",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    // Text("Marrital Status:${Globals.Marriedstatus}",
                    //     style: TextStyle(fontSize: 18)),
                    // Text("language:${Globals.language}",
                    //     style: TextStyle(fontSize: 18)),
                    // Text("Nationality:${Globals.country}",
                    //     style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Text(
                      "Projects",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 180,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Title:${Globals.prname}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text("Technologies:${Globals.Marriedstatus}",
                        style: TextStyle(fontSize: 18)),
                    Text("Roles:${Globals.prrole}",
                        style: TextStyle(fontSize: 18)),
                    Text("Technologies:${Globals.prtec}",
                        style: TextStyle(fontSize: 18)),
                    Text("Project Description:${Globals.prdes}",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Text(
                      "Achievement",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   "Project Title:${Globals.prname}",
                    //   style: TextStyle(fontSize: 18),
                    // ),
                    // Text("Technologies:${Globals.Marriedstatus}",
                    //     style: TextStyle(fontSize: 18)),
                    // Text("Roles:${Globals.prrole}",
                    //     style: TextStyle(fontSize: 18)),
                    // Text("Technologies:${Globals.prtec}",
                    //     style: TextStyle(fontSize: 18)),
                    // Text("Project Description:${Globals.prdes}",
                    //     style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Text(
                      "Reference",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reference Namr:${Globals.refname}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text("Designation:${Globals.refdes}",
                        style: TextStyle(fontSize: 18)),
                    Text("Organisation:${Globals.reforg}",
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),

               ],
          ),
        ),
      ),
    );
  }
}

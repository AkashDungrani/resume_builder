//Main Page


import 'package:flutter/material.dart';
import 'package:newresumeapp/contact.dart';
import 'package:newresumeapp/models/globals.dart';
import 'package:newresumeapp/screens/achivement.dart';
import 'package:newresumeapp/screens/carrier.dart';
import 'package:newresumeapp/screens/data.dart';
import 'package:newresumeapp/screens/education.dart';
import 'package:newresumeapp/screens/experience.dart';
import 'package:newresumeapp/screens/hobby.dart';
import 'package:newresumeapp/screens/pdf.dart';
import 'package:newresumeapp/screens/personal.dart';
import 'package:newresumeapp/screens/projects.dart';
import 'package:newresumeapp/screens/reference.dart';
import 'package:newresumeapp/screens/skills.dart';
import 'package:newresumeapp/screens/workspace.dart';
import 'package:newresumeapp/screens/pdf.dart';
import 'package:newresumeapp/screens/declare.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'resume',
    routes: {
      'resume': (context) => const Resume(),
      'contact': (context) => const Contact(),
      'workspace': (context) => const workspace(),
      'carrier': (context) => const Carrier(),
      'personal': (context) => const Personal(),
      'education': (context) => const Education(),
      'experience': (context) => const Experience(),
      'skills': (context) => const Skills(),
      'hobby': (context) => const Hobby(),
      'project': (context) => const Projects(),
      'achievement': (context) => const Achievement(),
      'reference': (context) => const References(),
      'declaration': (context) => const Declaration(),
      'pdf':(context) => const pdf(),
      'declare':(context) => const Declare(),
    },
  ));
}

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume BUilder"),
        bottomOpacity: 0,
        elevation: 0,
        // toolbarHeight: 150,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Text(
              "Resumes",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Text("Name:${Globals.name}"),
          Text("Email:${Globals.Email}"),
          Text("Contact:${Globals.contact}"),
          Text("Address:${Globals.address}"),
          Text("Description:${Globals.description}"),
          Text("Designation:${Globals.designation}"),
          Text("Merrital Status:${Globals.Marriedstatus}"),
          Text("Language:${(Globals.english==true)?"English":""},${(Globals.hindi == true) ? "Hindi" : ""},${(Globals.gujarati == true) ? "Gujarati" : ""}"),
          Text("Country:${Globals.country}"),
          Text("Codeing Language:${(Globals.c==true)?"c":""},${(Globals.cplusplus == true) ? "C++" : ""},${(Globals.flutter == true) ? "Flutter" : ""}"),
          Text("DOB:${Globals.date}"),
          Text("Degree:${Globals.degree}"),
          Text("School/College:${Globals.clg}"),
          Text("Percentage:${Globals.per}"),
          Text("Passing Year:${Globals.year}"),
          Text("Company Name:${Globals.company}"),
          Text("Post:${Globals.post}"),
          Text("Role:${Globals.role}"),
          Text("Project Name:${Globals.prname}"),
          Text("Technologies:${Globals.prtec}"),
          Text("Role:${Globals.prrole}"),
          Text("Project Description:${Globals.prdes}"),
          Text("REference Name:${Globals.refname}"),
          Text("Designation:${Globals.refdes}"),
          Text("Organisation:${Globals.reforg}"),
          Text("joined:${Globals.dj}"),
          Text("exit:${Globals.de}"),
          Text("Skills:${Globals.Skills}"),
          Text("Hobby:${Globals.interest}"),
          Text("Achivment:${Globals.achive}"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context, 'workspace');
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

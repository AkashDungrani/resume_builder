//Pdf
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/screens/achivement.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:printing/printing.dart';
import 'package:newresumeapp/models/globals.dart';

class pdf extends StatefulWidget {
  const pdf({super.key});

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  final pdf = pw.Document();
  @override
  void initState() {
    super.initState();
    makepdf();
  }

  makepdf() {
    pdf.addPage(
      pw.Page(
        build: (pw.Context context1) => pw.Container(
          padding: pw.EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: PdfColors.grey,
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
            children: [
              pw.Container(
                height: 100,
                width: 100,
                decoration: pw.BoxDecoration(),
                child: pw.Container(
                  height: 100,
                  width: 100,
                  child: 
                 pw.Text("akash")
                ),
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Container(
                alignment: pw.Alignment.center,
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: pw.BoxDecoration(
                    borderRadius: pw.BorderRadius.circular(20),
                    border: pw.Border.all(width: 2, color: PdfColors.blue)),
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                    pw.Text(
                      "${Globals.name}",
                      style: pw.TextStyle(
                          fontSize: 20, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.Text(
                      "${Globals.designation}",
                      style: pw.TextStyle(fontSize: 16, color: PdfColors.grey),
                    )
                  ],
                ),
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Container(
                    alignment: pw.Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: pw.BoxDecoration(
                        color: PdfColors.amber200,
                        border: pw.Border.all(width: 3, color: PdfColors.amber),
                        borderRadius: pw.BorderRadius.circular(20)),
                    child: pw.Text(
                      "=> Contact Information",
                      style: pw.TextStyle(
                          fontSize: 20, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Container(
                padding: pw.EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: pw.BoxDecoration(
                    color: PdfColors.blue200,
                    border: pw.Border.all(width: 3, color: PdfColors.blue),
                    borderRadius: pw.BorderRadius.circular(30)),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Name:${Globals.name}",
                      style: pw.TextStyle(fontSize: 18),
                    ),
                    pw.Text("Email:${Globals.Email}",
                        style: pw.TextStyle(fontSize: 18)),
                    pw.Text("Contact:${Globals.contact}",
                        style: pw.TextStyle(fontSize: 18)),
                    pw.Text("Address:${Globals.address}",
                        style: pw.TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              pw.SizedBox(
                height: 20,
              ),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Container(
                    alignment: pw.Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: pw.BoxDecoration(
                        color: PdfColors.amber200,
                        border: pw.Border.all(width: 3, color: PdfColors.amber),
                        borderRadius: pw.BorderRadius.circular(20)),
                    child: pw.Text(
                      "=> Personal Details",
                      style: pw.TextStyle(
                          fontSize: 20, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Container(
                padding: pw.EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.blue,
                decoration: pw.BoxDecoration(color:PdfColors.blue200,
                    border: pw.Border.all(width: 3, color: PdfColors.blue),
                    borderRadius: pw.BorderRadius.circular(30)),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Date Of Birth:${Globals.date}",
                      style: pw.TextStyle(fontSize: 18),
                    ),
                    pw.Text("Marrital Status:${Globals.Marriedstatus}",
                        style: pw.TextStyle(fontSize: 18)),
                    pw.Text("language:${Globals.language}",
                        style: pw.TextStyle(fontSize: 18)),
                    pw.Text("Nationality:${Globals.country}",
                        style: pw.TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              pw.SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
    pdf.addPage(
      pw.Page(
          build: (pw.Context context1) => pw.Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: PdfColors.grey,
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                  children: [
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.center,
                          height: 40,
                          width: 230,
                           decoration: pw.BoxDecoration(
                              color: PdfColors.amber200,
                              border: pw.Border.all(
                                  width: 3, color: PdfColors.amber),
                              borderRadius: pw.BorderRadius.circular(20)),
                          child: pw.Text(
                            "=> Education",
                            style: pw.TextStyle(
                                fontSize: 20, fontWeight: pw.FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(
                      height: 10,
                    ),
                    pw.Container(
                      padding: pw.EdgeInsets.all(20),
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      //  color: Colors.blue,
                       decoration: pw.BoxDecoration(
                          color: PdfColors.blue200,
                          border:
                              pw.Border.all(width: 3, color: PdfColors.blue),
                          borderRadius: pw.BorderRadius.circular(30)),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Degree:${Globals.degree}",
                            style: pw.TextStyle(fontSize: 18),
                          ),
                          pw.Text("Clg:${Globals.clg}",
                              style: pw.TextStyle(fontSize: 18)),
                          pw.Text("Percentage:${Globals.per}",
                              style: pw.TextStyle(fontSize: 18)),
                          pw.Text("Passing Year:${Globals.year}",
                              style: pw.TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      height: 20,
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.center,
                          height: 40,
                          width: 230,
                           decoration: pw.BoxDecoration(
                              color: PdfColors.amber200,
                              border: pw.Border.all(
                                  width: 3, color: PdfColors.amber),
                              borderRadius: pw.BorderRadius.circular(20)),
                          child: pw.Text(
                            "=> Experience",
                            style: pw.TextStyle(
                                fontSize: 20, fontWeight: pw.FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(
                      height: 10,
                    ),
                    pw.Container(
                      padding: pw.EdgeInsets.all(20),
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      //  color: Colors.blue,
                       decoration: pw.BoxDecoration(
                          color: PdfColors.blue200,
                          border:
                              pw.Border.all(width: 3, color: PdfColors.blue),
                          borderRadius: pw.BorderRadius.circular(30)),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "Company Name:${Globals.company}",
                            style: pw.TextStyle(fontSize: 18),
                          ),
                          pw.Text("Institute:${Globals.post}",
                              style: pw.TextStyle(fontSize: 18)),
                          pw.Text("Role:${Globals.role}",
                              style: pw.TextStyle(fontSize: 18)),
                          pw.Text("Employed Status:${Globals.employe_status}",
                              style: pw.TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      height: 20,
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.center,
                          height: 40,
                          width: 230,
                           decoration: pw.BoxDecoration(
                              color: PdfColors.amber200,
                              border: pw.Border.all(
                                  width: 3, color: PdfColors.amber),
                              borderRadius: pw.BorderRadius.circular(20)),
                          child: pw.Text(
                            "=> Technical Skills",
                            style: pw.TextStyle(
                                fontSize: 20, fontWeight: pw.FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(
                      height: 10,
                    ),
                    pw.Container(
                      padding: pw.EdgeInsets.all(20),
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                       decoration: pw.BoxDecoration(
                          color: PdfColors.blue200,
                          border:
                              pw.Border.all(width: 3, color: PdfColors.blue),
                          borderRadius: pw.BorderRadius.circular(30)),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "=> Skills:${Globals.Skills}",
                            style: pw.TextStyle(fontSize: 18),
                          ),
                          
                        ],
                      ),
                    ),
                    pw.SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )),
    );
    pdf.addPage(
      pw.Page(
        build: (pw.Context context1) => pw.Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: PdfColors.grey,
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
            children: [
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Container(
                    alignment: pw.Alignment.center,
                    height: 40,
                    width: 230,
                     decoration: pw.BoxDecoration(
                        color: PdfColors.amber200,
                        border: pw.Border.all(width: 3, color: PdfColors.amber),
                        borderRadius: pw.BorderRadius.circular(20)),
                    child: pw.Text(
                      "=> Hobbies",
                      style: pw.TextStyle(
                          fontSize: 20, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Container(
                padding: pw.EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                 decoration: pw.BoxDecoration(
                    color: PdfColors.blue200,
                    border: pw.Border.all(width: 3, color: PdfColors.blue),
                    borderRadius: pw.BorderRadius.circular(30)),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text("Hobby:${Globals.interest}",
                        style: pw.TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              pw.SizedBox(
                height: 20,
              ),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Container(
                    alignment: pw.Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: pw.BoxDecoration(
                        color: PdfColors.amber200,
                        border: pw.Border.all(width: 3, color: PdfColors.amber),
                        borderRadius: pw.BorderRadius.circular(20)),
                    child: pw.Text(
                      "=> Projects",
                      style: pw.TextStyle(
                          fontSize: 20, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Container(
                padding: pw.EdgeInsets.all(20),
                height: 180,
                width: MediaQuery.of(context).size.width,
                 decoration: pw.BoxDecoration(
                    color: PdfColors.blue200,
                    border: pw.Border.all(width: 3, color: PdfColors.blue),
                    borderRadius: pw.BorderRadius.circular(30)),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      "Project Title:${Globals.prname}",
                      style: pw.TextStyle(fontSize: 18),
                    ),
                    pw.Text("Technologies:${Globals.Marriedstatus}",
                        style: pw.TextStyle(fontSize: 18)),
                    pw.Text("Roles:${Globals.prrole}",
                        style: pw.TextStyle(fontSize: 18)),
                    pw.Text("Technologies:${Globals.prtec}",
                        style: pw.TextStyle(fontSize: 18)),
                    pw.Text("Project Description:${Globals.prdes}",
                        style: pw.TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              pw.SizedBox(
                height: 20,
              ),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Container(
                    alignment: pw.Alignment.center,
                    height: 40,
                    width: 230,
                     decoration: pw.BoxDecoration(
                        color: PdfColors.amber200,
                        border: pw.Border.all(width: 3, color: PdfColors.amber),
                        borderRadius: pw.BorderRadius.circular(20)),
                    child: pw.Text(
                      "=> Achievement",
                      style: pw.TextStyle(
                          fontSize: 20, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(
                height: 10,
              ),
              pw.Container(
                padding: pw.EdgeInsets.all(20),
                height: 130,
                width: MediaQuery.of(context).size.width,
                 decoration: pw.BoxDecoration(
                    color: PdfColors.blue200,
                    border: pw.Border.all(width: 3, color: PdfColors.blue),
                    borderRadius: pw.BorderRadius.circular(30)),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text("Achivement:${Globals.achive}",style: pw.TextStyle(fontSize: 18,)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    pdf.addPage(
      pw.Page(
        build: (pw.Context context1) => pw.Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: PdfColors.grey,
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.SizedBox(height: 30,),
              pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  children: [
                    pw.Container(
                      alignment: pw.Alignment.center,
                      height: 40,
                      width: 230,
                       decoration: pw.BoxDecoration(
                          color: PdfColors.amber200,
                          border:
                              pw.Border.all(width: 3, color: PdfColors.amber),
                          borderRadius: pw.BorderRadius.circular(20)),
                      child: pw.Text(
                        "=> Reference",
                        style: pw.TextStyle(
                            fontSize: 20, fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(
                  height: 10,
                ),
                pw.Container(
                  padding: pw.EdgeInsets.all(20),
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                   decoration: pw.BoxDecoration(
                      color: PdfColors.blue200,
                      border: pw.Border.all(width: 3, color: PdfColors.blue),
                      borderRadius: pw.BorderRadius.circular(30)),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Reference Name:${Globals.refname}",
                        style: pw.TextStyle(fontSize: 18),
                      ),
                      pw.Text("Designation:${Globals.refdes}",
                          style: pw.TextStyle(fontSize: 18)),
                      pw.Text("Organisation:${Globals.reforg}",
                          style: pw.TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
            ],
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: Icon(Icons.picture_as_pdf),
          onPressed: () async {
            Uint8List data = await pdf.save();
            await Printing.layoutPdf(onLayout: (format) => data);
          },
        )
      ]),
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${Globals.name} Dungrani",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${Globals.designation}",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
                    child: Text(
                      "Contact Information",
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name:${Globals.name}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text("Email:${Globals.Email}",
                        style: TextStyle(fontSize: 18)),
                    Text("Contact:${Globals.contact}",
                        style: TextStyle(fontSize: 18)),
                    Text("Address:${Globals.address}",
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
                    child: Text(
                      "Personal Details",
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
                height: 151,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date Of Birth:${Globals.date}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                          "Language:${(Globals.english == true) ? "English" : ""},${(Globals.hindi == true) ? "Hindi" : ""},${(Globals.gujarati == true) ? "Gujarati" : ""}",
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
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
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Degree:${Globals.degree}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text("Clg:${Globals.clg}", style: TextStyle(fontSize: 18)),
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
                    child: Text(
                      "Technical skills",
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
               decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skills:${Globals.Skills}",
                      style: TextStyle(fontSize: 18),
                    ),
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
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
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hobby:${Globals.interest}",
                      style: TextStyle(fontSize: 18),
                    ),
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Project Title:${Globals.prname}",
                      style: TextStyle(fontSize: 18),
                    ),
                     Text(
                      "Code Language:${(Globals.c == true) ? "c" : ""},${(Globals.cplusplus == true) ? "C++" : ""},${(Globals.flutter == true) ? "Flutter" : ""}",
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievement:${Globals.achive}",
                      style: TextStyle(fontSize: 18),
                    ),
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
                        color: Colors.amber.shade200,
                        border: Border.all(width: 3, color: Colors.amber)),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade200,
                    border: Border.all(width: 3, color: Colors.blue)),
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

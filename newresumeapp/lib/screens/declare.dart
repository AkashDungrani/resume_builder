//Declare
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Declare extends StatefulWidget {
  const Declare({super.key});

  @override
  State<Declare> createState() => _DeclareState();
}

class _DeclareState extends State<Declare> {
  final GlobalKey<FormState> akash = GlobalKey<FormState>();
  final TextEditingController descripation = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController place = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    TextStyle style = const TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.w600,
      fontSize: 20,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
        ),
        title: const Text(
          "Declaration",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        toolbarHeight: 150,
      ),
      backgroundColor: Colors.white.withOpacity(0.8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            const SizedBox(height: 20),
            
            (Globals.isdeclare == true)
                ? Form(
                    key: akash,
                    child: Container(
                      height: h * 0.8,
                      width: w ,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Image.asset(
                                "",
                                height: 60,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                controller: descripation,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter You description";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Globals.des = val;
                                  });
                                },
                                decoration: const InputDecoration(
                                    hintText: "Description",
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Divider(
                              thickness: 1,
                              color: Colors.black45,
                              endIndent: 20,
                              indent: 20,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "Date        ",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                Text(
                                  "           Place(Interview\n           venue/city)",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                              ],
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(width: 20),
                                Expanded(
                                  child: TextFormField(
                                    controller: date,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter You Date";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Globals.date2 = val;
                                      });
                                    },
                                    maxLines: 1,
                                    decoration: const InputDecoration(
                                        hintText: "DD/MM//YYYY",
                                        border: OutlineInputBorder()),
                                    keyboardType:
                                        const TextInputType.numberWithOptions(),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Expanded(
                                  child: TextFormField(
                                    controller: place,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter You Place Name";
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Globals.place = val;
                                      });
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Eg. surat",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                const SizedBox(width: 20),
                              ],
                            ),
                            const SizedBox(height: 40),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 125),
                                child: SizedBox(
                                    width: 120,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          if (akash.currentState!
                                              .validate()) {
                                            akash.currentState!.save();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                                    content: Text(
                                                        "You Date Is Save")));
                                          }
                                        },
                                        child: const Text("SAVE")))),
                          ],
                        ),
                      ),
                    ),
                  )
                : Container(
              height: h * 0.08,
              width: w ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10),
                    // bottomLeft: Radius.circular(global.bottomleft),
                    // bottomRight: Radius.circular(global.bottomleft)
                     ),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 30),
                  Text("Declaration", style: style),
                  const Spacer(),
                  Switch(
                      value: Globals.isdeclare,
                      onChanged: (val) {
                        setState(() {
                          if (val == false) {
                            Globals.bl = 10;
                          } else {
                            Globals.bl = 0;
                          }
                          Globals.isdeclare = val;
                        });
                      }),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
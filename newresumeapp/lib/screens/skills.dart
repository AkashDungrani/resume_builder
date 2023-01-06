//Skills
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  // GlobalKey<FormState> akash = GlobalKey<FormState>();
  List<TextEditingController> skill = [];
  @override
  void initState() {
    super.initState();
    skill.add(TextEditingController());
    skill.add(TextEditingController());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Technical Skills"),
          toolbarHeight: 150,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Enter Your Skills",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ...skill
                          .map(
                            (e) => Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: TextFormField(
                                      // key: akash,
                                      controller: e,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter Your Skills";
                                        }
                                        return null;
                                      },
                                      onSaved: (Val) {
                                        setState(() {
                                          // Globals.technical = Val;
                                        });
                                      },
                                      decoration: InputDecoration(
                                          hintText:
                                              "C Programming,Web Technical"),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          skill.remove(e);
                                        });
                                      },
                                      icon: Icon(
                                        Icons.delete_forever_outlined,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    skill.add(TextEditingController());
                  });
                },
                child: Icon(Icons.add),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    skill.forEach((e) {
                      Globals.Skills.add(e.text);
                    });
                    print(Globals.Skills);
                  });
                },
                child: Text("Save"),
              ),
            )
          ],
        )
        );
  }
}

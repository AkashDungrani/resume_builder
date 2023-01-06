//Achievement
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Achievement extends StatefulWidget {
  const Achievement({super.key});

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  List<TextEditingController> achivementcontroller = [];
  @override
  void initState() {
    super.initState();
    achivementcontroller.add(TextEditingController());
    achivementcontroller.add(TextEditingController());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Achievement"),
      ),
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
                        "Enter Your Achivement",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ...achivementcontroller
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
                                          return "Enter Your Acheivement";
                                        }
                                        return null;
                                      },
                                      onSaved: (Val) {
                                        setState(() {
                                           achivementcontroller.forEach((e) {
                                            Globals.achive.add(e.text);
                                          });
                                        });
                                      },
                                      decoration: InputDecoration(
                                          hintText: "Exeded Sales 70%"),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          achivementcontroller.remove(e);
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
                  achivementcontroller.add(TextEditingController());
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
                    achivementcontroller.forEach((e) {
                      Globals.achive.add(e.text);
                    });
                    print(Globals.achive);
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

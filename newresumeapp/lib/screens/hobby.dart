//Hobby
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newresumeapp/models/globals.dart';

class Hobby extends StatefulWidget {
  const Hobby({super.key});

  @override
  State<Hobby> createState() => _HobbyState();
}

class _HobbyState extends State<Hobby> {
  List<TextEditingController> hobbycontroller = [];
  @override
  void initState() {
    super.initState();
    hobbycontroller.add(TextEditingController());
    hobbycontroller.add(TextEditingController());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hobby"),
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
                        "Enter Your Hobby",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ...hobbycontroller
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
                                          return "Enter Your Hobby";
                                        }
                                        return null;
                                      },
                                      onSaved: (Val) {
                                        setState(() {
                                          // Globals.interest = Val;
                                        });
                                      },
                                      decoration: InputDecoration(
                                          hintText:
                                              "Eg.Reading"),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          hobbycontroller.remove(e);
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
                    hobbycontroller.add(TextEditingController());
                  });
                },
                child: Icon(Icons.add),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    hobbycontroller.forEach((e) {
                      Globals.interest.add(e.text);
                    });
                    print(Globals.interest);
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

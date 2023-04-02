import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Ott_Provider.dart';




class Ottcreen extends StatefulWidget {
  const Ottcreen({Key? key}) : super(key: key);

  @override
  State<Ottcreen> createState() => _OttcreenState();
}

class _OttcreenState extends State<Ottcreen> {
  OttProvider? OT, OF;
  @override
  Widget build(BuildContext context) {
    OT = Provider.of<OttProvider>(context, listen: true);
    OF = Provider.of<OttProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("All OTT Platforms"),
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.movie),
            )
          ],
        ),
        body: Container(
          child: GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
            itemBuilder: (context, index) =>
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,'web');
                    OF!.loadurl(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 145,
                            width: 145,
                            child: Image.asset("${OT!.images[index]}",fit:BoxFit.cover),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(height: 1,),
                        Column(
                          children: [
                            Text(
                              "${OF!.names[index]}",
                              style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
            itemCount:OT!.images.length,
          ),
        ),
      ),
    );
  }
}

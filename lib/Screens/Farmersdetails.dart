import 'package:flutter/material.dart';
import 'package:myfarm/models/farmer.dart';

class FarmerDetails extends StatelessWidget {
  final Farmer farmer;
  const FarmerDetails({Key key, this.farmer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("${farmer.firstname} ${farmer.lastname}"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height / 3.0,
              width: width / 1.5,
              color: Colors.grey[100],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            "FarmerName: ${farmer.firstname} ${farmer.lastname}"),
                        Text("Phone Number: ${farmer.phoneNumber}"),
                        Text("County: ${farmer.county}"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

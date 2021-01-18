import 'package:flutter/material.dart';
import 'Farmersdetails.dart';

class Farmers extends StatefulWidget {
  @override
  _FarmersState createState() => _FarmersState();
}

class _FarmersState extends State<Farmers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmers list view'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('John Doe'),
            subtitle: Text('0712345678'),
            trailing: Text('Kiambu County'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FarmerDetails(
                      // farmer: farmer,
                      ),
                ),
              );
            },
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue),
    );
  }
}

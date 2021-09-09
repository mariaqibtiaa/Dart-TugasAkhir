import 'package:flutter/material.dart';
import 'package:ta/about.dart';
import 'megamendung.dart';
import 'parangkusumo.dart';
import 'tujuhrupa.dart';
import 'about.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                        child: Text('Comic'),
                        elevation: 10,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return megamendung();
                          }));
                        }),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                        child: Text('Majalah'),
                        elevation: 10,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return parangkusumo();
                          }));
                        }),
                  ),
                  SizedBox(
                    width: 43,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                        child: Text('Novel'),
                        elevation: 10,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return tujuhrupa();
                          }));
                        }),
                  ),
                ]),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350.0,
                  height: 25.0,
                  child: RaisedButton(
                      child: Text('About Us'),
                      elevation: 10,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return about();
                        }));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

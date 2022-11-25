import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/mywatchlistpage.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';

class MyWatchListDetail extends StatefulWidget {
  final MyWatchList myWatchList;

  MyWatchListDetail(this.myWatchList, {Key? key}) : super(key: key);

  @override
  _MyWatchListDetailState createState() => _MyWatchListDetailState(myWatchList);

}

class _MyWatchListDetailState extends State<MyWatchListDetail> {
  MyWatchList _myWatchList;

  _MyWatchListDetailState(this._myWatchList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        drawer: const MyDrawer(),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                    child: Text(_myWatchList.fields.title, style: const TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                    ),
                    )
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text('Release Date: ',
                          style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)
                      ),
                      Text(_myWatchList.fields.releaseDate, style: TextStyle(
                          fontSize: 18.0),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text('Rating: ', style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)
                      ),
                      Text(_myWatchList.fields.rating.toString() + '/10', style: TextStyle(
                          fontSize: 18.0),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text('Status: ', style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)
                      ),
                      Text((_myWatchList.fields.watched == 'Yes')? 'Watched' : 'Not Watched' , style: TextStyle(
                          fontSize: 18.0),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text('Review: ', style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    children: <Widget>[
                      Text(_myWatchList.fields.review, style: TextStyle(
                          fontSize: 18.0),
                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                        child:TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const Text('Back',
                              style: TextStyle(fontSize: 20, color: Colors.white)
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                          ),
                        )
                    )
                ),
              ],
            ),
          )
        )
    );
  }
}
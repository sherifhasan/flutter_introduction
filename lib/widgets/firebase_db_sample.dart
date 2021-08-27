// import 'dart:collection';
//
// import 'package:flutter/material.dart';
// import 'package:widgets_samples/models/media_model.dart';
//
// class FirebaseDBSample extends StatefulWidget {
//   FirebaseDBSample({required this.title});
//
//   final String title;
//
//   @override
//   _FirebaseDBSampleState createState() => _FirebaseDBSampleState();
// }
//
// class _FirebaseDBSampleState extends State<FirebaseDBSample> {
//   final databaseReference = FirebaseDatabase.instance.reference();
//
//   var movies = HashMap<int, MediaModel>();
//
//   @override
//   void initState() {
//     super.initState();
//
//     databaseReference.child("mov").onChildAdded.forEach((event) => {
//           setState(() {
//             movies[int.parse(event.snapshot.key!)] = MediaModel(
//               id: int.parse(event.snapshot.key!),
//               image: event.snapshot.value["Image"],
//               link: event.snapshot.value["Link"],
//               linkPart: event.snapshot.value["LinkPart"],
//               name: event.snapshot.value["Name"],
//               type: event.snapshot.value["Type"],
//             );
//           })
//         });
//
//     databaseReference.child("mov").onChildChanged.forEach((event) => {
//           setState(() {
//             movies[int.parse(event.snapshot.key!)] = MediaModel(
//               id: int.parse(event.snapshot.key!),
//               image: event.snapshot.value["Image"],
//               link: event.snapshot.value["Link"],
//               linkPart: event.snapshot.value["LinkPart"],
//               name: event.snapshot.value["Name"],
//               type: event.snapshot.value["Type"],
//             );
//           })
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//           centerTitle: true,
//           elevation: 5,
//         ),
//         body: GridView.count(
//             crossAxisCount: 2,
//             mainAxisSpacing: 5,
//             crossAxisSpacing: 5,
//             shrinkWrap: true,
//             reverse: false,
//             childAspectRatio: 1,
//             padding: EdgeInsets.all(8),
//             children: movies.values
//                 .map(
//                   (e) => Container(
//                       width: MediaQuery.of(context).size.width / 3,
//                       margin: EdgeInsets.all(8.0),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15.0),
//                       ),
//                       child: Stack(
//                         children: <Widget>[
//                           Positioned.fill(
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(15.0),
//                               child: Image.network(e.image,
//                                 height: 100,
//                                 filterQuality: FilterQuality.high,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             bottom: 0,
//                             left: 0,
//                             right: 0,
//                             child: Container(
//                               padding: EdgeInsets.all(15.0),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(15),
//                                   bottomRight: Radius.circular(15),
//                                 ),
//                                 color: Colors.black45,
//                               ),
//                               child: Text(
//                                 e.name,
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 18,
//                                 ),
//                                 textAlign: TextAlign.center,
//                                 softWrap: true,
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           )
//                         ],
//                       )),
//                 )
//                 .toList()));
//   }
// }

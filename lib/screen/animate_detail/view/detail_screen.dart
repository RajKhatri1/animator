// import 'package:flutter/material.dart';
//
// class detailpage extends StatefulWidget {
//   const detailpage({Key? key}) : super(key: key);
//
//   @override
//   State<detailpage> createState() => _detailpageState();
// }
//
// class _detailpageState extends State<detailpage> {
//   in
//   @override
//   Widget build(BuildContext context) {
//     return
//     SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.blue.shade700,
//         body: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 alignment: Alignment.center,
//                 child: Transform.rotate(
//                     angle: animationController!.value * 2 * pi,
//                     child:
//                     Image.network("${controller.modelList[index].Image}")),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Container(
//                   alignment: Alignment.center,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "${controller.modelList[index].Name}",
//                         style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.white),
//                       ),
//                       SizedBox(
//                         height: 2,
//                       ),
//                       Text(
//                         "${controller.modelList[index].Gname}",
//                         style: TextStyle(
//                             fontSize: 15,
//                             // fontWeight: FontWeight.w500,
//                             color: Colors.white60),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

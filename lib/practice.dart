import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  bool isPasswordVisible = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int count = 0;
  String imgUrl =
      'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                print("Onchanged value: $value");
              },
              // obscureText: true,
              // obscuringCharacter: "*",
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(width: 1, color: Colors.green),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(width: 2, color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 11),
            StatefulBuilder(
              builder: (context, ss) {
                return TextField(
                  controller: passwordController,
                  enabled: true,
                  obscureText: !isPasswordVisible,
                  keyboardType: TextInputType.emailAddress,
                  // obscureText: true,
                  // obscuringCharacter: "*",
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter your password here...",
                    hintStyle: TextStyle(color: Colors.white30),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.white,
                    suffixIcon: InkWell(
                      onTap: () {
                        // isPasswordVisible = !isPasswordVisible;
                        ss(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    suffixIconColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(width: 1, color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(width: 2, color: Colors.blue),
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;
                print("Value: $email : $password");
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

// // Icon Button
// IconButton(
//         onPressed: () {
//           print("Clicked on the button");
//         },
//         icon: Icon(Icons.home, size: 100),
//       ),

// // Profile card design 2
// SizedBox(
//         width: double.infinity,
//         height: 500,
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(11)),
//           ),
//           elevation: 5,
//           margin: EdgeInsets.all(5),
//           child: Padding(
//             padding: EdgeInsets.all(5),
//             child: Stack(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(11),
//                     image: DecorationImage(
//                       image: NetworkImage(imgUrl),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.vertical(
//                       bottom: Radius.circular(11),
//                     ),
//                     gradient: LinearGradient(
//                       colors: [Colors.transparent, Colors.blue.shade50],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       stops: [0.6, 1],
//                     ),
//                   ),
//                   padding: EdgeInsets.symmetric(horizontal: 11),
//                   child: Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               "Tom Cruise",
//                               style: TextStyle(
//                                 fontSize: 19,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             Image.asset(
//                               "assets/icons/verified.png",
//                               width: 20,
//                               height: 20,
//                             ),
//                           ],
//                         ),
//                         Text(
//                           "Producut Designer who focuses on simplcity & useability",
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w300,
//                           ),
//                         ),
//                         Container(height: 21),
//                         Row(
//                           children: [
//                             Image.asset(
//                               "assets/icons/user.png",
//                               width: 14,
//                               height: 14,
//                             ),
//                             SizedBox(width: 5),
//                             Text("524"),
//                             Spacer(),
//                             Image.asset(
//                               "assets/icons/checklist.png",
//                               width: 14,
//                               height: 14,
//                             ),
//                             SizedBox(width: 5),
//                             Text("16"),
//                             Spacer(flex: 3),
//                             Container(
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: 11,
//                                 vertical: 7,
//                               ),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(50),
//                                 gradient: LinearGradient(
//                                   colors: [
//                                     Colors.grey.shade200,
//                                     Colors.grey.shade400,
//                                   ],
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                 ),
//                               ),
//                               child: Text(
//                                 "Follow +",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 5),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),

// // Profile card design
// SizedBox(
//         width: double.infinity,
//         height: 500,
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(11)),
//           ),
//           elevation: 5,
//           margin: EdgeInsets.all(5),
//           child: Padding(
//             padding: EdgeInsets.all(5),
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(11),
//                       image: DecorationImage(
//                         image: NetworkImage(imgUrl),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 21),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 11),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "Tom Cruise",
//                             style: TextStyle(
//                               fontSize: 19,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(width: 5),
//                           Image.asset(
//                             "assets/icons/verified.png",
//                             width: 20,
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                       Text(
//                         "Producut Designer who focuses on simplcity & useability",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w300,
//                         ),
//                       ),
//                       Container(height: 21),
//                       Row(
//                         children: [
//                           Image.asset(
//                             "assets/icons/user.png",
//                             width: 14,
//                             height: 14,
//                           ),
//                           SizedBox(width: 5),
//                           Text("524"),
//                           Spacer(),
//                           Image.asset(
//                             "assets/icons/checklist.png",
//                             width: 14,
//                             height: 14,
//                           ),
//                           SizedBox(width: 5),
//                           Text("16"),
//                           Spacer(flex: 3),
//                           Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: 11,
//                               vertical: 7,
//                             ),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                               gradient: LinearGradient(
//                                 colors: [
//                                   Colors.grey.shade200,
//                                   Colors.grey.shade400,
//                                 ],
//                                 begin: Alignment.topCenter,
//                                 end: Alignment.bottomCenter,
//                               ),
//                             ),
//                             child: Text(
//                               "Follow +",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 5),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),

// // Rich Text
// RichText(
//         text: TextSpan(
//           text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting,",
//           style: GoogleFonts.poppins(fontSize: 21, color: Colors.black),
//           children: [
//             TextSpan(
//               text: " remaining essentially",
//               style: GoogleFonts.cedarvilleCursive(
//                 color: Colors.orange,
//                 fontWeight: FontWeight.w900,
//               ),
//             ),
//             TextSpan(
//               text: " unchanged. It was popularised thanks to these sheets and more recently with desktop publishing software like Aldus PageMaker and Microsoft Word including versions of Lorem Ipsum.",
//               // style: GoogleFonts.cedarvilleCursive(),
//             ),
//           ],
//         ),
//       ),

// // TEXT.Rich
// Text.rich(
//         TextSpan(
//           text: "Hello",
//           children: [
//             TextSpan(text: " World !!!", style: GoogleFonts.cedarvilleCursive()),
//           ],
//           style: GoogleFonts.poppins(
//             fontSize: 21
//           )
//         )
//       )

// Text Widget
// body: Text(
//   "Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World",
//   style: GoogleFonts.poppins(
//     // fontFamily: "cursive",
//     fontSize: 34,
//     // fontWeight: FontWeight.w900,
//     color: Colors.orange,
//     // backgroundColor: Colors.black,
//   ),
//   textAlign: TextAlign.justify,
//   maxLines: 2,
//   overflow: TextOverflow.ellipsis,
// ),

// class HomePage extends StatelessWidget {
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Home Page'),
//         actions: [
//           Icon(Icons.add),
//           SizedBox(width: 11),
//           Icon(Icons.logout),
//           SizedBox(width: 11),
//         ],
//       ),
//       body: Center(
//         child: StatefulBuilder(
//           builder: (context, ss) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text('$count', style: TextStyle(fontSize: 21)),
//                 ElevatedButton(
//                   onPressed: () {
//                     ss(() {
//                       count++;
//                     });
//                   },
//                   child: Icon(Icons.add),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

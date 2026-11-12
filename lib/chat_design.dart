import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  bool isChecked = false;
  bool isDarkMode = false;
  int selectedRadio = 0; // 1->no, 2->yes
  String selectedCity = "Dhaka";
  double currentValue = 0;
  RangeValues currentRange = RangeValues(0, 20);

  List<Map<String, dynamic>> mQuiz = [
    {
      "ques": "What is 7+22?",
      "opt": ["23", "29", "15", "19"],
    },
    {
      "ques": "What is 11*20?",
      "opt": ["220", "110", "1111", "2222"],
    },
  ];

  List<String> mCities = ["Dhaka", "Tangail", "Savar", "Gazipur"];
  List<Map<String, dynamic>> mData = [
    {"name": "John", "bgColor": Colors.blue},
    {"name": "Doe", "bgColor": Colors.yellow},
    {"name": "Kh.", "bgColor": Colors.red},
    {"name": "Shakil", "bgColor": Colors.lightGreen},
    {"name": "Yung", "bgColor": Colors.purpleAccent},
    {"name": "Fong", "bgColor": Colors.deepOrangeAccent},
    {"name": "Jona", "bgColor": Colors.cyan},
    {"name": "Kh.", "bgColor": Colors.limeAccent},
    {"name": "Kh.", "bgColor": Colors.brown},
    {"name": "John", "bgColor": Colors.blue},
    {"name": "Doe", "bgColor": Colors.yellow},
    {"name": "Kh.", "bgColor": Colors.red},
    {"name": "Shakil", "bgColor": Colors.lightGreen},
    {"name": "Yung", "bgColor": Colors.purpleAccent},
    {"name": "Fong", "bgColor": Colors.deepOrangeAccent},
    {"name": "Jona", "bgColor": Colors.cyan},
    {"name": "Kh.", "bgColor": Colors.limeAccent},
    {"name": "Kh.", "bgColor": Colors.brown},
    {"name": "John", "bgColor": Colors.blue},
    {"name": "Doe", "bgColor": Colors.yellow},
    {"name": "Kh.", "bgColor": Colors.red},
    {"name": "Shakil", "bgColor": Colors.lightGreen},
    {"name": "Yung", "bgColor": Colors.purpleAccent},
    {"name": "Fong", "bgColor": Colors.deepOrangeAccent},
    {"name": "Jona", "bgColor": Colors.cyan},
    {"name": "Kh.", "bgColor": Colors.limeAccent},
    {"name": "Kh.", "bgColor": Colors.brown},
    {"name": "John", "bgColor": Colors.blue},
  ];

  List<Map<String, dynamic>> chatData = [
    {
      "name": "Martin Randolph",
      "msg": "Yes, 2pm is awesome",
      "time": "11/19/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=11",
      "isAudio": false,
      "isImage": false,
      "seen": false,
    },
    {
      "name": "Andrew Parker",
      "msg": "What kind of strategy is better?",
      "time": "11/16/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=12",
      "isAudio": false,
      "isImage": false,
      "seen": false,
    },
    {
      "name": "Karen Castillo",
      "msg": "0:14 Voice message",
      "time": "11/15/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=5",
      "isAudio": true,
      "isImage": false,
      "seen": false,
    },
    {
      "name": "Maximillian Jacobson",
      "msg": "Bro, I have a good idea!",
      "time": "10/30/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=13",
      "isAudio": false,
      "isImage": false,
      "seen": true,
    },
    {
      "name": "Martha Craig",
      "msg": "Photo",
      "time": "10/28/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=9",
      "isAudio": false,
      "isImage": true,
      "seen": true,
    },
    {
      "name": "Tabitha Potter",
      "msg": "Actually I wanted to check with you about your online business plan on our...",
      "time": "8/25/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=20",
      "isAudio": false,
      "isImage": false,
      "seen": true,
    },
    {
      "name": "Maisy Humphrey",
      "msg": "Welcome, to make design process faster, look at Pixsellz",
      "time": "8/20/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=25",
      "isAudio": false,
      "isImage": false,
      "seen": true,
    },
    {
      "name": "Kieron Dotson",
      "msg": "Ok, have a good trip!",
      "time": "7/29/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=14",
      "isAudio": false,
      "isImage": false,
      "seen": true,
    },
    {
      "name": "Shakil Ahmed",
      "msg": "See you tomorrow at the office.",
      "time": "7/20/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=15",
      "isAudio": false,
      "isImage": false,
      "seen": true,
    },
    {
      "name": "Sophia Turner",
      "msg": "Thanks for the update 👍",
      "time": "7/12/19",
      "profilePicUrl": "https://i.pravatar.cc/150?img=32",
      "isAudio": false,
      "isImage": false,
      "seen": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.grey.shade200,
        leadingWidth: 80,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit_note, size: 30, color: Colors.blue),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Broadcast List",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "New Group",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11),
          Expanded(
            child: ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (_, index) {
                // return myChatRow(index: index);
                return myListTile(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget myListTile({required int index}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chatData[index]["profilePicUrl"]),
        radius: 30,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            chatData[index]["name"],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            chatData[index]["time"],
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
        ],
      ),
      titleTextStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
      subtitle:
          chatData[index]["isAudio"] ||
              chatData[index]["isImage"] ||
              chatData[index]["seen"]
          ? Row(
              children: [
                chatData[index]["isAudio"]
                    ? Icon(
                        Icons.keyboard_voice_sharp,
                        size: 19,
                        color: Colors.green,
                      )
                    : chatData[index]["seen"]
                    ? Icon(Icons.done_all_rounded, color: Colors.blue, size: 19)
                    : Icon(
                        Icons.camera_alt,
                        size: 19,
                        color: Colors.grey.shade400,
                      ),
                SizedBox(width: 4),
                Expanded(
                  child: Text(
                    chatData[index]["msg"],
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
              ],
            )
          : Text(
              chatData[index]["msg"],
              style: TextStyle(color: Colors.grey.shade600),
            ),
      trailing: InkWell(
        onTap: () {},
        child: Icon(Icons.keyboard_arrow_right, color: Colors.grey.shade500),
      ),
      
    );
  }

  Widget myChatRow({required int index}) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(chatData[index]["profilePicUrl"]),
            radius: 30,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                chatData[index]["name"],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                chatData[index]["time"],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          chatData[index]["isAudio"] ||
                                  chatData[index]["isImage"] ||
                                  chatData[index]["seen"]
                              ? Row(
                                  children: [
                                    chatData[index]["isAudio"]
                                        ? Icon(
                                            Icons.keyboard_voice_sharp,
                                            size: 19,
                                            color: Colors.green,
                                          )
                                        : chatData[index]["seen"]
                                        ? Icon(
                                            Icons.done_all_rounded,
                                            color: Colors.blue,
                                            size: 19,
                                          )
                                        : Icon(
                                            Icons.camera_alt,
                                            size: 19,
                                            color: Colors.grey.shade400,
                                          ),
                                    SizedBox(width: 4),
                                    Expanded(
                                      child: Text(
                                        chatData[index]["msg"],
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Text(
                                  chatData[index]["msg"],
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                          SizedBox(height: 7),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(width: 11),
                  ],
                ),
                Divider(thickness: 0.6),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// // List View with Builder
// ListView.builder(
//         itemCount: mData.length,
//         itemBuilder: (_, index){
//           return Container(
//             width: 200,
//             height: 50,
//             color: mData[index]["bgColor"],
//             child: Center(
//               child: Text(
//                 mData[index]["name"],
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//               ),
//             ),
//           );
//         },
//       ),

// // List View
// ListView(
//         children: mData.map((element) {
//           return Container(
//             width: 200,
//             height: 50,
//             color: element["bgColor"],
//             child: Center(
//               child: Text(
//                 element["name"],
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//               ),
//             ),
//           );
//         }).toList(),
//       ),

// // Range Slider
// Center(
//         child: StatefulBuilder(
//           builder: (context, ss) {
//             return RangeSlider(
//               min: 0,
//               max: 100,
//               values: currentRange,
//               activeColor: Colors.amber,
//               divisions: 5,
//               labels: RangeLabels(
//                 "${currentRange.start}",
//                 "${currentRange.end}",
//               ),
//               inactiveColor: Colors.amber.shade100,
//               onChanged: (value) {
//                 ss(() {
//                   currentRange = value;
//                 });
//               },
//             );
//           },
//         ),
//       ),

// // Dropdown Menu
// Center(
//         child: DropdownMenu(
//           initialSelection: selectedCity,
//           dropdownMenuEntries: mCities.map((element) {
//             return DropdownMenuEntry(value: element, label: element);
//           }).toList(),
//           onSelected: (value) {
//             selectedCity = value!;
//           },
//         ),
//       ),

// // Dropdown button
// Center(
//         child: StatefulBuilder(
//           builder: (context, ss) {
//             return DropdownButton(
//               items: List.generate(mCities.length, (index) {
//                 return DropdownMenuItem(
//                   child: Text(mCities[index]),
//                   value: mCities[index],
//                 );
//               }),
//               onChanged: (value) {
//                 ss(() {
//                   selectedCity = value!;
//                 });
//               },
//               value: selectedCity,
//             );
//           },
//         ),
//       ),

// // Switch
// Center(
//         child: StatefulBuilder(
//           builder: (context, setState) {
//             return SwitchListTile(
//               // controlAffinity: ListTileControlAffinity.leading,
//               title: Text("Dark Mode"),
//               subtitle: Text("${isDarkMode ? "Disabled": "Enable"} to change the theme to ${isDarkMode ? "back to light": "Dark mode"}"),
//               value: isDarkMode,
//               onChanged: (value) {
//                 setState(() {
//                   isDarkMode = value;
//                 });
//                 print("switched");
//               },
//             );
//           },
//         ),
//       ),

// // Checkbox
// Center(
//         child: StatefulBuilder(
//           builder: (context, setState) {
//             return CheckboxListTile(
//               // fillColor: WidgetStatePropertyAll(Colors.amber),
//               activeColor: Colors.amber,
//               checkColor: Colors.black,
//               checkboxShape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20)
//               ),
//               controlAffinity: ListTileControlAffinity.leading,
//               title: Text("I accept all the Terms and Conditions."),
//               value: isChecked,
//               onChanged: (value) {
//                 setState(() {
//                   isChecked = value!;
//                 });
//                 print("checkedbox");
//               },
//             );
//           },
//         ),

// // Radio
// Padding(
//         padding: const EdgeInsets.all(21.0),
//         child: Center(
//           child: Column(
//             children: [
//               Text(mQuiz[0]["ques"], style: TextStyle(fontSize: 21)),
//               Column(
//                 children: (mQuiz[0]["opt"] as List<String>).map((element) {
//                   return RadioMenuButton(
//                     value: int.parse(element),
//                     groupValue: selectedRadio,
//                     onChanged: (value) {
//                       setState(() {
//                         selectedRadio = value!;
//                       });
//                     },
//                     child: Text(element),
//                   );
//                 }).toList(),
//               ),
//             ],
//           ),
//         ),
//       ),

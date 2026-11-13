import 'package:classico_cmd/notes_exp/db_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var titleController = TextEditingController();

  var descriptionController = TextEditingController();

  List<Map<String, dynamic>> mNotes = [];

  DbHelper? dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper.getInstance();

    getNotes();
  }

  getNotes() async {
    mNotes = await dbHelper!.getAllNotes();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: mNotes.isNotEmpty
          ? ListView.builder(
              itemCount: mNotes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(mNotes[index][DbHelper.columnNoteTitle]),
                  subtitle: Text(mNotes[index][DbHelper.columnNoteDesc]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          titleController.text =
                              mNotes[index][DbHelper.columnNoteTitle];
                          descriptionController.text =
                              mNotes[index][DbHelper.columnNoteDesc];

                          showModalBottomSheet(
                            context: context,
                            builder: (_) {
                              return getBottomSheetU();
                            },
                          );
                        },
                        icon: Icon(Icons.edit_note),
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (_) {
                              return Container(
                                padding: const EdgeInsets.all(11.0),
                                height: 120,
                                child: Column(
                                  children: [
                                    Text(
                                      "Are you sure want to delete?",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        OutlinedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "No",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 11),
                                        OutlinedButton(
                                          onPressed: () async {
                                            bool isDeleted = await dbHelper!
                                                .deleteNote(
                                                  id:
                                                      mNotes[index][DbHelper
                                                          .columnNoteId],
                                                );

                                            if (isDeleted) {
                                              getNotes();
                                              Navigator.pop(context);
                                            } else {
                                              print("Failed to delete Note.");
                                            }
                                          },
                                          child: Text(
                                            "Yes",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                );
              },
            )
          : Center(child: Text("No notes yet!!!")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleController.clear();
          descriptionController.clear();

          showModalBottomSheet(
            context: context,
            builder: (_) {
              return getBottomSheetU();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget getBottomSheetU() {
    return Container(
      padding: EdgeInsets.all(11),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Add Note",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 11),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: "Title",
              hintText: "Enter your title for note here...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
              ),
            ),
          ),
          SizedBox(height: 11),
          TextField(
            maxLines: 4,
            controller: descriptionController,
            decoration: InputDecoration(
              labelText: "Description",
              hintText: "Write note description...",
              alignLabelWithHint: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
              ),
            ),
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              SizedBox(width: 11),
              OutlinedButton(
                onPressed: () async {
                  bool isAdded = await dbHelper!.addNote(
                    title: titleController.text,
                    description: descriptionController.text,
                  );

                  if (isAdded) {
                    print("Note added successfully.");
                    getNotes();
                    Navigator.pop(context);
                  } else {
                    print("Failed to add Note.");
                  }
                },
                child: Text("Save"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

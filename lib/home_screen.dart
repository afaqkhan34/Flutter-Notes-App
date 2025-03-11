import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'model/notes_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive Database'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(
        children: [
          ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()async{
        _showMyDialog();
      },
      child: Icon(Icons.add),
      ),
    );
  }
  Future<void> _showMyDialog()async{
    return showDialog(context: context,
      builder:( context) {
        return AlertDialog(
          title: Text('Add Notes'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: 'Enter Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hintText: 'Enter Title',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Cancel')),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Add')),
          ],
        );
      },
    );
  }
}

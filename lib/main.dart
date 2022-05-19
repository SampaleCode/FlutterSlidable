import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slider',
      home: SliderScreen(),
    );
  }
}

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Slider'),
      ),
      body: ListView(
        children: const [
          //First Slide 1
          Slidable(
            key: ValueKey(0), //Specific Key for Slide
            startActionPane: ActionPane(
              motion: BehindMotion(),
              children: [
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Edit',
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: BehindMotion(),
              children: [
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Share',
                ),
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'archive',
                ),
              ],
            ),

            child: ListTile(
              title: Text("Slider 1"),
            ),
          ),
          //First Slide 2
          Slidable(
            key: ValueKey(1), //Specific Key for Slide
            startActionPane: ActionPane(
              motion: DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Edit',
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Share',
                ),
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'archive',
                ),
              ],
            ),

            child: ListTile(
              title: Text("Slider 2"),
            ),
          ),
          //First Slide 3
          Slidable(
            key: ValueKey(2), //Specific Key for Slide
            startActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Edit',
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: BehindMotion(),
              children: [
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Share',
                ),
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'archive',
                ),
              ],
            ),

            child: ListTile(
              title: Text("Slider 3"),
            ),
          ),
          //First Slide 4
          Slidable(
            key: ValueKey(3), //Specific Key for Slide
            startActionPane: ActionPane(
              motion: BehindMotion(),
              children: [
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Edit',
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: BehindMotion(),
              children: [
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Share',
                ),
                SlidableAction(
                  onPressed: doSomething,
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'archive',
                ),
              ],
            ),

            child: ListTile(
              title: Text("Slider 4"),
            ),
          ),
        ],
      ),
    );
  }
}

void doSomething(BuildContext context) {
  print("clicked");
}

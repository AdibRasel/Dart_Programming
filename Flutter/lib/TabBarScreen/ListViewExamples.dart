import 'package:flutter/material.dart';


class ListViewExamples extends StatelessWidget {
  const ListViewExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "1️⃣ Simple ListView",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          simpleListView(),
          
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "2️⃣ ListView.builder() (Dynamic)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 200, child: dynamicListView()),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "3️⃣ ListView.separated() (With Divider)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 200, child: separatedListView()),
        ],
      ),
    );
  }

  /// Simple ListView (Static Data)
  Widget simpleListView() {
    return ListView(
      shrinkWrap: true, // Prevent infinite height issue
      physics: NeverScrollableScrollPhysics(),
      children: const <Widget>[
        ListTile(leading: Icon(Icons.map), title: Text('Map')),
        ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
        ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
        ListTile(leading: Icon(Icons.contacts), title: Text('Contact')),
        ListTile(leading: Icon(Icons.settings), title: Text('Setting')),
      ],
    );
  }

  /// ListView.builder() (Dynamic Data)
  Widget dynamicListView() {
    return ListView.builder(
      itemCount: 10, // Total items
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.star),
          title: Text('Item ${index + 1}'),
          subtitle: Text('Subtitle ${index + 1}'),
        );
      },
    );
  }

  /// ListView.separated() (With Dividers)
  Widget separatedListView() {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) => Divider(), // Adds a divider between items
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.label),
          title: Text('Item ${index + 1}'),
        );
      },
    );
  }
}

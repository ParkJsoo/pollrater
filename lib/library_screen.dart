import 'package:flutter/material.dart';
import 'package:pollrater_example_01/library_detail_screen.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  List<BookTile> books = [
    BookTile(
      title2: "객체지향의 사실과 오해",
      imagePath:
          "https://bookthumb-phinf.pstatic.net/cover/091/459/09145968.jpg?type=m140&udate=20211002",
    ),
    BookTile(
      title2: "오브젝트",
      imagePath:
          "https://bookthumb-phinf.pstatic.net/cover/150/077/15007773.jpg?type=m140&udate=20220701",
    ),
    BookTile(
      // title2: "오브젝트",
      // imagePath:
      // "https://bookthumb-phinf.pstatic.net/cover/150/077/15007773.jpg?type=m140&udate=20220701",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("도서 목록 앱"),
      ),
      body: ListView(
        children: books,
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  // final String title;
  // final String imagePath;
  String? title;
  String? imagePath;

  BookTile({
    Key? key,
    String? title2,
    this.imagePath,
    // required this.title,
    // required this.imagePath,
  }) : super(key: key) {
    this.title = title2 ?? "야옹이";
    this.imagePath = this.imagePath?? "https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: ListTile(
        title: Text(this.title!),
        leading: Image.network(this.imagePath!),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LibraryDetailScreen(title: this.title!, imagePath: this.imagePath!))
          );
        },
      ),
    );
  }
}

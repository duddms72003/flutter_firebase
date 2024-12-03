import 'package:flutter/material.dart';
import 'package:flutter_firebase_blog_app/ui/write/write_page.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            //
            iconButton(Icons.delete, () {
              print('object');
            }),
            iconButton(Icons.edit, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return WritePage();
                }),
              );
            }),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(bottom: 500),
          children: [
            Image.network(
              'https://picsum.photos/200/300',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today I Learned',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    '조영은',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '2024.09.09.20:30',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    '그리드 뷰를 배웠습니다.' * 10,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget iconButton(IconData icon, void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        child: Icon(icon),
      ),
    );
  }
}

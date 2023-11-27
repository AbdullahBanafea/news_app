import 'package:flutter/material.dart';
import 'package:news/models/newsModel.dart';

class ArticleScreen extends StatelessWidget {
  final Article articleItem;
  const ArticleScreen({
  super.key, 
  required this.articleItem
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.all(12),
          child: ListView(
            children: [
              Image.network(
                articleItem.urlToImage ?? '',
                errorBuilder: (n,nn,nnn){
                  return Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage('https://ak2.picdn.net/shutterstock/videos/10897022/thumb/5.jpg'),
                      )
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(articleItem.author ?? ''),
                subtitle: Text(articleItem.publishedAt.toString()),
              ),
              Text(articleItem.description ?? 'Empty Description'),
            ],
          ),
        ));
  }
}

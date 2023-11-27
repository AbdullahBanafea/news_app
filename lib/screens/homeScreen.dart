import 'package:flutter/material.dart';
import 'package:news/models/newsModel.dart';
import 'package:news/newsRepository/newsRepository.dart';
import 'package:news/screens/articleScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late Future<NewsModel> news = NewRepository().getNews();

  @override
  void initState() {
    super.initState();
    news;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: FutureBuilder(
        future: news,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }

          if(snapshot.hasData){
            final NewsModel newsData = snapshot.data!;

            return listOfNews(newsData);
          }

          return Center(child: Text('There is an error try again'));
        },
      ),
    );
  }

  ListView listOfNews(NewsModel newsData) {
    return ListView.builder(
            itemCount: newsData.articles.length,
            itemBuilder: (context, index) {
              final Article article = newsData.articles[index];

              return ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) {
                          return ArticleScreen(articleItem: article,);
                        },
                    )
                  );
                },
                trailing: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          article.urlToImage ??
                          'https://ak2.picdn.net/shutterstock/videos/10897022/thumb/5.jpg'),
                    )
                  ),
                ),
                title: Text(
                  article.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  article.description ?? "Empty Description",
                  style: TextStyle(color: Colors.grey),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          );
  }
}

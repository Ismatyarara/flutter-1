import 'package:flutter/material.dart';
import 'package:isma_project/list_widget/detail_screen.dart';
import 'package:isma_project/main_layout.dart';

class ArticleListScreen extends StatelessWidget {
  ArticleListScreen({super.key});

  final List<Map<String, String>> articles = [
    {
      'title': 'Flutter Dasar',
      'description': 'Belajar Dasar Flutter',
      'image':
          'data:image/jpeg;base64,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'
    },
    {
      'title': 'State Management',
      'description': 'Get X, Provider, Bloc, Riverpod',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk7DK9NDWcRgTUk2Ut_J5yCzYtjk4yX1bczKkflxy3IDln_9cVZHr33JBWOzRh4SDegVs&usqp=CAU'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Article',
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleDetailScreen(data: article),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6)
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      image: DecorationImage(
                        image: NetworkImage(article['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(article['title']!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 5),
                        Text(article['description']!,
                            style: const TextStyle(fontSize: 13)),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

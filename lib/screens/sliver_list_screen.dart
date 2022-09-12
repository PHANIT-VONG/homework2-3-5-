import 'package:flutter/material.dart';

class SliverListScreen extends StatelessWidget {
  const SliverListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _buildSliverAppbar(),
          _buildOtherWidget(),
          _buldSliverGrid(),
          _buildSliverList(),
        ],
      ),
    );
  }

  _buildOtherWidget() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(10, (index) {
            return Container(
              margin: const EdgeInsets.only(right: 15),
              width: 200,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://cdn.searchenginejournal.com/wp-content/uploads/2022/04/reverse-image-search-627b7e49986b0-sej-760x400.png'),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  SliverFixedExtentList _buildSliverList() {
    return SliverFixedExtentList(
      itemExtent: 100.0,
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text('List Item $index'),
          );
        },
        childCount: 20,
      ),
    );
  }

  SliverGrid _buldSliverGrid() {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * (index % 9)],
            child: Text('Grid Item $index'),
          );
        },
        childCount: 9,
      ),
    );
  }

  SliverAppBar _buildSliverAppbar() {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 100.0,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('Demo'),
        background: Image.network(
          'https://c4.wallpaperflare.com/wallpaper/283/702/434/summer-wallpaper-tumblr-beach-8553-wallpaper-preview.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

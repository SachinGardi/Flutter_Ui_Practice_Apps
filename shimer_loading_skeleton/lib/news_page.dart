import 'package:flutter/material.dart';
import 'package:shimmer_loading_skeleton/constatnts.dart';

import 'new_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'News App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _isLoading
                ? Expanded(child: ListView.separated(
                itemBuilder: (context, index) => const NewsCardSkeleton(),
                separatorBuilder: (context, index) => const SizedBox(height: defaultPadding,),
                itemCount: 5
            ))
                : Expanded(child: ListView.separated(
                itemCount: 6,
               separatorBuilder: (BuildContext context, int index)=> const SizedBox(height: defaultPadding),
               itemBuilder: (BuildContext context, int index)=> NewsCard(image: 'assets/images/Image_$index.png',),
            ))
          ],
        ),
      ),
    );
  }
}

class NewsCardSkeleton extends StatelessWidget {
  const NewsCardSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
     children: [
       Skeleton(
         height: 120,
         width: 120,
       ),
       SizedBox(width: defaultPadding,),
       Expanded(child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Skeleton( width: 80),
           SizedBox(height: 8,),
           Skeleton(),
           SizedBox(height: 8,),
           Skeleton(),
           SizedBox(height: 8,),
           Row(
             children: [
               Expanded(child: Skeleton()),
               SizedBox(width: defaultPadding,),
               Expanded(child: Skeleton()),
             ],
           )
         ],
       ))
     ],
            );
  }
}

class Skeleton extends StatelessWidget {
  const Skeleton({
    super.key,  this.height,  this.width,
  });
  final double? height,width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(defaultPadding/2),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: BorderRadius.circular(defaultPadding)
      ),
    );
  }
}

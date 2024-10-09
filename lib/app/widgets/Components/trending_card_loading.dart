import 'package:flutter/material.dart';
import 'package:news_apps/app/widgets/Components/loading_container.dart';

class TrendingLoading extends StatelessWidget {
  const TrendingLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      padding: const EdgeInsets.all(5),
      //height: 300,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          LoadingContainer(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LoadingContainer(
                width: MediaQuery.of(context).size.width / 3,
                height: 10,
              ),
              LoadingContainer(
                width: MediaQuery.of(context).size.width / 5,
                height: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LoadingContainer(
                width: MediaQuery.of(context).size.width / 1.53,
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              LoadingContainer(
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              LoadingContainer(
                width: MediaQuery.of(context).size.width / 3,
                height: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_apps/app/widgets/Components/loading_container.dart';

class Demopage extends StatelessWidget {
  const Demopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  LoadingContainer(
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            LoadingContainer(
                              width: 25,
                              height: 25,
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
                          height: 15,
                        ),
                        LoadingContainer(
                          width: MediaQuery.of(context).size.width / 1.6,
                          height: 15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LoadingContainer(
                          width: MediaQuery.of(context).size.width / 1.8,
                          height: 15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LoadingContainer(
                              width: MediaQuery.of(context).size.width / 5,
                              height: 15,
                            ),
                            LoadingContainer(
                              width: MediaQuery.of(context).size.width / 5,
                              height: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

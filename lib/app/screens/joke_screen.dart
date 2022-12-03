import 'package:flutter/material.dart';
import 'package:flutter_joke_app/app/components/joke_card.dart';
import 'package:flutter_joke_app/app/controllers/joke_controller.dart';
import 'package:provider/provider.dart';

class JokesScreen extends StatelessWidget {
  const JokesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<JokesController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2c3e50),
        elevation: 0,
        title: Text(
          controller.isLoading ? 'Loading...' : 'XKCD',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFF2c3e50),
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                      itemCount: controller.jokes.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final joke = controller.jokes[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: JokeTile(
                            index: index,
                            joke: joke,
                            onTap: () {},
                          ),
                        );
                      }),
                ),
        ],
      ),
    );
  }
}

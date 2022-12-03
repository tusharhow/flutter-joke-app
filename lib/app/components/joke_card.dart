import 'package:flutter/material.dart';
import '../models/joke_model.dart';

// ignore: must_be_immutable
class JokeTile extends StatelessWidget {
  JokeTile({
    Key? key,
    required this.joke,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  final JokeModel joke;
  int index;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        joke.jokes!.isNotEmpty
                            ? joke.jokes![index].lang.toString().toUpperCase()
                            : '',
                        maxLines: 2,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        joke.jokes!.isNotEmpty
                            ? joke.jokes![index].category.toString()
                            : '',
                        maxLines: 2,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    joke.jokes!.isNotEmpty
                        ? joke.jokes![index].joke.toString()
                        : '',
                    style: const TextStyle(fontSize: 13, color: Colors.black54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dailyexerciseapp/constants.dart';
import 'package:dailyexerciseapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Meditation',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const Text(
                    '3-10 min course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * .6,
                    child: const Text(
                      'Live healthier and happier by learning the fundamentals of meditation',
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  SizedBox(
                    width: size.width * .5,
                    child: const CustomTextField(),
                  ),
                  Wrap(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(
                                0,
                                17,
                              ),
                              blurRadius: 23,
                              color: kShadowColor,
                              spreadRadius: -23,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: const BoxDecoration(
                                  color: kBlueColor, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Section-01',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

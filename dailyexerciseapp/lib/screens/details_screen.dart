import 'package:dailyexerciseapp/constants.dart';
import 'package:dailyexerciseapp/widgets/custom_nav_bar.dart';
import 'package:dailyexerciseapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
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
              child: SingleChildScrollView(
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
                    const Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SeassionCard(
                          seasionNum: 1,
                          isDone: true,
                        ),
                        SeassionCard(
                          seasionNum: 2,
                          isDone: false,
                        ),
                        SeassionCard(
                          seasionNum: 3,
                          isDone: false,
                        ),
                        SeassionCard(
                          seasionNum: 4,
                          isDone: false,
                        ),
                        SeassionCard(
                          seasionNum: 5,
                          isDone: false,
                        ),
                        SeassionCard(
                          seasionNum: 6,
                          isDone: false,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const Text('Start your deppen your practise')
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  const SeassionCard({
    super.key,
    required this.seasionNum,
    this.isDone = true,
  });
  final int seasionNum;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Container(
          width: constraints.maxWidth / 2 - 10,
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
          child: Material(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Section-$seasionNum',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

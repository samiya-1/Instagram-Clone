import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSearchGrid extends StatelessWidget {
  CustomSearchGrid({super.key, required this.isindexEven});

  final bool isindexEven;
  List imageList = [
    "https://images.pexels.com/photos/20440040/pexels-photo-20440040/free-photo-of-a-road-in-the-middle-of-a-forest-with-fog.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
    "https://images.pexels.com/photos/12411443/pexels-photo-12411443.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
    "https://images.pexels.com/photos/18714721/pexels-photo-18714721/free-photo-of-boardwalk-in-a-green-forest.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
    "https://images.pexels.com/photos/18031294/pexels-photo-18031294/free-photo-of-woman-in-sunhat-taking-a-photo.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/20339251/pexels-photo-20339251/free-photo-of-woman-wearing-dress-sitting-by-the-lake.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
    "https://images.pexels.com/photos/19877487/pexels-photo-19877487/free-photo-of-sun-through-massive-redwood-trees-in-forest.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
    "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/1547813/pexels-photo-1547813.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/1381679/pexels-photo-1381679.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/2105416/pexels-photo-2105416.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/592284/pexels-photo-592284.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/2522085/pexels-photo-2522085.jpeg?auto=compress&cs=tinysrgb&w=400",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          isindexEven
              ? Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/17815952/pexels-photo-17815952/free-photo-of-sun-hat-a-camera-and-a-bowl-of-blackberries-lying-on-a-white-picnic-blanket.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
                                scale: 2,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/19808874/pexels-photo-19808874/free-photo-of-the-light.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
                                scale: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.sizeOf(context).width * .66,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://images.pexels.com/photos/12801958/pexels-photo-12801958.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
                              scale: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.sizeOf(context).width * .66,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://images.pexels.com/photos/12801958/pexels-photo-12801958.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
                              scale: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/17815952/pexels-photo-17815952/free-photo-of-sun-hat-a-camera-and-a-bowl-of-blackberries-lying-on-a-white-picnic-blanket.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
                                scale: 2,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/19808874/pexels-photo-19808874/free-photo-of-the-light.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load",
                                scale: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          GridView.builder(
            itemCount: imageList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) => Container(
              // color: index.isEven ? Colors.green : Colors.grey,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageList[index]))),
            ),
          )
        ],
      ),
    );
  }
}

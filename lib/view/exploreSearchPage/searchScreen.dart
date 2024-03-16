import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/color_constant.dart';
import 'package:instagram_clone/view/exploreSearchPage/widget/searcgcategorycard.dart/customSearchGrid.dart';
import 'package:instagram_clone/view/exploreSearchPage/widget/searcgcategorycard.dart/searchcategorycard.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIconConstraints: BoxConstraints(minWidth: 30),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                        ),
                        isDense: true,
                        fillColor: ColorConstant.primaryblack.withOpacity(.1),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                      ),
                      controller: searchController,
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.select_all_sharp))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ColorConstant.primaryblack.withOpacity(.1),
                  ),
                ),
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      10,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: SearchCategoryCard(
                          icon: index.isEven ? Icons.shopping_bag : null,
                        ),
                      ),
                    ),
                  )),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                  children: List.generate(
                4,
                (index) => CustomSearchGrid(
                  isindexEven: index.isEven,
                ),
              )),
            )),
          ],
        ),
      ),
    );
  }
}

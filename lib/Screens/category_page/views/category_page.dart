import 'package:flutter/material.dart';
import 'package:meet_shop/Screens/category_page/controller/categories_page_controller.dart';
import 'package:provider/provider.dart';
import '../../fish_items.dart';
import '../../marinated_items.dart';
import '../../meat_items.dart';
import '../../ready_cook_items.dart';
import '../widgets/category_item_card.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      bool success =
          await context.read<CategoriesPageController>().getCategories();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: context.watch<CategoriesPageController>().isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey User,",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Let's order fresh items for you",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        thickness: 4,
                      ),
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GridView.builder(
                          itemCount: context
                              .watch<CategoriesPageController>()
                              .categoriesList
                              .length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.8),
                          itemBuilder: (context, index) {
                            final dataList = context
                                .watch<CategoriesPageController>()
                                .categoriesList;
                            return CategoryItemTile(
                              categoryName: dataList[index].name ?? 'unknown',
                              imagePath: dataList[index].image ?? '',
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MeatItems();
                                  },
                                ));
                              },
                              color: Colors.green,
                            );
                          })
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

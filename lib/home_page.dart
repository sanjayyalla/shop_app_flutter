import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  final List<String> categories = ['All', 'Adidas', 'Nike', 'Puma'];
  late String selectedCategories;
  @override
  void initState() {
    super.initState();
    selectedCategories = categories[0];
  }
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
    );
    final List<String> categories = ['All', 'Adidas', 'Nike', 'Puma'];
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final label = categories[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),

                    child: GestureDetector(
                      onTap: ()=>{
                        setState((){
                          selectedCategories = label;
                        })
                      },
                      child: Chip(
                        label: Text(label),
                        backgroundColor:selectedCategories==label? Theme.of(context).colorScheme.primary: Color.fromRGBO(245, 247, 249, 1),
                        side: BorderSide(color: Color.fromRGBO(245, 247, 249, 1)),
                        iconTheme: IconThemeData(),
                        labelStyle: TextStyle(fontSize: 14),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

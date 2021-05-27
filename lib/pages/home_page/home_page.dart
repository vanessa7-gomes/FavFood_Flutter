// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui';
import 'package:fav_food/pages/home_page/widgets/recipe_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(300, 242, 49, 50),
        accentColor: Color.fromARGB(200, 255, 211, 18),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My FavFood'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              itemCount: Recipe.samples.length,
              itemBuilder: (context, int index) {
                var recipe = Recipe.samples[index];
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: RecipeCardWidget(
                      recipe: recipe,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeDetailPage(
                          recipe: recipe,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.favorite),
        ),
      ),
    );
  }
}

class RecipeDetailPage extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetailPage({Key key, this.recipe}) : super(key: key);

  @override
  _RecipeDetailPageState createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.recipe.label,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Modo de Preparo',
                style: GoogleFonts.oswald(
                  color: Color.fromARGB(300, 156, 63, 58),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                widget.recipe.directions,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              'Ingredients',
              style: GoogleFonts.oswald(
                color: Color.fromARGB(300, 156, 63, 58),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                    '${ingredient.quantity} ${ingredient.measure}',
                    style: TextStyle(
                      fontSize: 22,
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

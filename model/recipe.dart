import 'ingredient.dart';

class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.ingredients);

  static var samples = [
    Recipe(
      'Strogonoff de Frango',
      'assets/images/strogonoffe.jpg',
      [
        Ingredient(3, '', 'peitos de frango cortados em cubos'),
        Ingredient(1, '', 'dente de alho picado'),
        Ingredient(1, 'pitada', 'de sal'),
        Ingredient(1, '', 'cebola picada'),
        Ingredient(2, 'colheres (sopa)', 'de maionese'),
        Ingredient(1, 'colher', 'de manteiga'),
        Ingredient(1 / 2, 'copo', 'de ketchup'),
        Ingredient(1 / 3, 'copo', 'de mostarda'),
        Ingredient(1, 'copo', 'de cogumelos'),
        Ingredient(1, 'copo', 'de creme de leite'),
        Ingredient(1, 'pacote', 'de batata palha')
      ],
    ),
    Recipe(
      'Panqueca de Presunto e Queijo',
      'assets/images/panqueca.jpg',
      [
        Ingredient(1, '', 'ovo'),
        Ingredient(1, 'copo', 'de leite'),
        Ingredient(1, 'copo', 'de farinha de trigo'),
        Ingredient(1, 'pitada', 'de sal'),
        Ingredient(2, 'pitada', 'de pó royal'),
        Ingredient(100, 'gramas', 'de presunto fatiado'),
        Ingredient(150, 'gramas', 'de mussarela fatiada'),
        Ingredient(100, 'gramas', 'de molho de tomate')
      ],
    ),
    Recipe(
      'Arroz de Forno',
      'assets/images/arroz.jpg',
      [
        Ingredient(3, 'xícaras', 'de arroz cozido'),
        Ingredient(1, 'lata',
            'de seleta de legumes (milho, ervilho, batata, cenoura)'),
        Ingredient(1, '', 'peito de frango cozido e desfiado'),
        Ingredient(2, '', 'tomates picados em cubos'),
        Ingredient(1, '', 'cebola média picada em rodelas'),
        Ingredient(1, 'copo', 'de requeijão'),
        Ingredient(1 / 2, 'xícara', 'de batata palha'),
        Ingredient(1 / 2, 'xícara', 'de queijo mussarela ralado'),
        Ingredient(2, 'colheres (sopa)', 'de molho de tomate'),
        Ingredient(1, 'colher (sopa)', 'de óleo')
      ],
    ),
    Recipe(
      'Lasanha á Bolonhesa',
      'assets/images/lasanha.jpg',
      [
        Ingredient(3, 'colheres', 'de margarina'),
        Ingredient(4, 'colheres', 'de farinha de trigo'),
        Ingredient(2, 'xícaras', 'de leite'),
        Ingredient(2, 'xícaras', 'de creme de leite'),
        Ingredient(1, 'colher', 'de óleo'),
        Ingredient(2, '', 'dentes de alho amassados'),
        Ingredient(300, 'gramas', 'de carne moída'),
        Ingredient(3, 'xícaras', 'de polpa de tomate batida no liquidificador'),
        Ingredient(3 / 4, 'xícaras', 'de água quente'),
        Ingredient(200, 'gramas', 'de presunto fatiada'),
        Ingredient(200, 'gramas', 'de mussarela fatiada'),
        Ingredient(200, 'gramas', 'de massa para lasanha')
      ],
    ),
  ];
}

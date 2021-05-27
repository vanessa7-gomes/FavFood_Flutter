import 'ingredient.dart';

class Recipe {
  String label;
  String imageUrl;
  String directions;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.ingredients, {this.directions});

  static final strogonoffFrango =
      "1- Em uma panela, misture o frango, o alho, a maionese, o sal e a pimenta. 2-Em uma frigideira grande, derreta a manteiga e doure a cebola. 3-Junte o frango temperado até que esteja dourado. 4-Adicione os cogumelos, o ketchup e a mostarda. 5-Incorpore o creme de leite e retire do fogo antes de ferver. 6-Sirva com arroz branco e batata palha";

  static final panquecadePresuntoQueijo =
      "1- Bata os ingredientes no liquidificador um por um na ordem da receita. 2-Esquente em uma frigideira pequena um fio de óleo e acrescente um pouco da massa. Não coloque muito, pois a panqueca fica melhor fininha. 3- Recheie as panquecas com o presunto e a mussarela e coloque em uma travessa. Jogue o molho de tomate por cima, salpique com mussarela e leve ao forno por dez minutos. ";

  static final arrozDeForno =
      "1- Misture o conteúdo da lata de seleta de legumes com o arroz cozido, sem levar ao fogo e reserve. 2-Refogue a cebola no óleo, junte o tomate picado, o peito de frango desfiado e as 2 colheres de molho de tomate. 3-Tempere com sal e pimenta-do-reino a gosto. 4-Em um refratário faça uma camada de arroz, uma de requeijão e uma de molho e repita novamente a mesma sequência, terminando com a última camada de arroz. 5- Sobre as camadas prontas, espalhar a batata palha e o queijo ralado. 6- Levar ao forno médio por no máximo 15 minutos ou no micro-ondas na potência alta por no máximo 6 minutos.";

  static final lasanhaABolonhesa =
      "1- Em um recipiente refratário (20 x 30 cm), coloque uma porção de molho bolonhesa; cubra com uma camada de massa, e uma porção de molho branco e coloque o queijo mozarela. Repita as camadas até a borda do recipiente. 2- Finalize com o queijo parmesão ralado e leve ao forno alto (220°C), preaquecido, por cerca de 20 minutos ou até dourar. Sirva.";

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
        directions: strogonoffFrango),
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
        directions: panquecadePresuntoQueijo),
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
        directions: arrozDeForno),
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
          Ingredient(
              3, 'xícaras', 'de polpa de tomate batida no liquidificador'),
          Ingredient(3 / 4, 'xícaras', 'de água quente'),
          Ingredient(200, 'gramas', 'de presunto fatiada'),
          Ingredient(200, 'gramas', 'de mussarela fatiada'),
          Ingredient(200, 'gramas', 'de massa para lasanha')
        ],
        directions: lasanhaABolonhesa),
  ];
}

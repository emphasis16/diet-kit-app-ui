class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];
    String path = 'assets/icons/';
    List<String> name = ['Honey Pancake', 'Canai Bread'];
    List<String> iconPath = ['honey-pancakes', 'canai-bread'];
    List<String> level = ['Easy', 'Hard'];
    List<String> duration = ['30 mins', '20 mins'];
    List<String> calories = ['180kCal', '230kCal'];
    List<bool> viewIsSelected = [true, false];

    for (var i = 0; i < name.length; i++) {
      diets.add(
        DietModel(
            name: name[i],
            iconPath: '$path${iconPath[i]}.svg',
            level: level[i],
            duration: duration[i],
            calories: calories[i],
            viewIsSelected: viewIsSelected[i]),
      );
    }

    return diets;
  }
}

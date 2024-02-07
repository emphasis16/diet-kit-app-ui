class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool boxIsSelected;

  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    required this.boxIsSelected,
  });

  static List<PopularDietsModel> getPopularDiets() {
    List<PopularDietsModel> popularDiets = [];
    String path = 'assets/icons/';
    List<String> name = ['Blueberry Pancake', 'Salmon Nigiri'];
    List<String> iconPath = ['blueberry-pancake', 'salmon-nigiri'];
    List<String> level = ['Medium', 'Easy'];
    List<String> duration = ['30 mins', '20 mins'];
    List<String> calories = ['230kCal', '120kCal'];
    List<bool> boxIsSelected = [true, false];

    for (var i = 0; i < name.length; i++) {
      popularDiets.add(
        PopularDietsModel(
            name: name[i],
            iconPath: '$path${iconPath[i]}.svg',
            level: level[i],
            duration: duration[i],
            calories: calories[i],
            boxIsSelected: boxIsSelected[i]),
      );
    }

    return popularDiets;
  }
}

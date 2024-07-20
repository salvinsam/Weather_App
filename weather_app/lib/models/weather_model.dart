class Weather {
  final double temperature;
  final String cityName;
  final String mainCondition;

  Weather({
    required this.temperature,
    required this.cityName,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['description'],
    );
  }
}

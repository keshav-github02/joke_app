class Joke {
  final String? type;
  final String? setup;
  final String? delivery;
  final String? joke;

  Joke({
    this.type,
    this.setup,
    this.delivery,
    this.joke,
  });

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      type: json['type'] as String?,
      setup: json['setup'] as String?,
      delivery: json['delivery'] as String?,
      joke: json['joke'] as String?,
    );
  }

  @override
  String toString() {
    return type == 'single'
        ? joke ?? 'No joke available'
        : '${setup ?? 'No setup available'} - ${delivery ?? 'No delivery available'}';
  }
}

import 'dart:convert';

class WeatherData {
    final Coord? coord;
    final List<Weather>? weather;
    final String? base;
    final Main? main;
    final int? visibility;
    final Wind? wind;
    final Clouds? clouds;
    final int? dt;
    final Sys? sys;
    final int? timezone;
    final int? id;
    final String? name;
    final int? cod;

    WeatherData({
        this.coord,
        this.weather,
        this.base,
        this.main,
        this.visibility,
        this.wind,
        this.clouds,
        this.dt,
        this.sys,
        this.timezone,
        this.id,
        this.name,
        this.cod,
    });

    factory WeatherData.fromJson(String str) => WeatherData.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory WeatherData.fromMap(Map<String, dynamic> json) => WeatherData(
        coord: json["coord"] == null ? null : Coord.fromMap(json["coord"]),
        weather: json["weather"] == null ? [] : List<Weather>.from(json["weather"]!.map((x) => Weather.fromMap(x))),
        base: json["base"],
        main: json["main"] == null ? null : Main.fromMap(json["main"]),
        visibility: json["visibility"],
        wind: json["wind"] == null ? null : Wind.fromMap(json["wind"]),
        clouds: json["clouds"] == null ? null : Clouds.fromMap(json["clouds"]),
        dt: json["dt"],
        sys: json["sys"] == null ? null : Sys.fromMap(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
    );

    Map<String, dynamic> toMap() => {
        "coord": coord?.toMap(),
        "weather": weather == null ? [] : List<dynamic>.from(weather!.map((x) => x.toMap())),
        "base": base,
        "main": main?.toMap(),
        "visibility": visibility,
        "wind": wind?.toMap(),
        "clouds": clouds?.toMap(),
        "dt": dt,
        "sys": sys?.toMap(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
    };
}

class Clouds {
    final int? all;

    Clouds({
        this.all,
    });

    factory Clouds.fromJson(String str) => Clouds.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Clouds.fromMap(Map<String, dynamic> json) => Clouds(
        all: json["all"],
    );

    Map<String, dynamic> toMap() => {
        "all": all,
    };
}

class Coord {
    final double? lon;
    final double? lat;

    Coord({
        this.lon,
        this.lat,
    });

    factory Coord.fromJson(String str) => Coord.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Coord.fromMap(Map<String, dynamic> json) => Coord(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "lon": lon,
        "lat": lat,
    };
}

class Main {
    final double? temp;
    final double? feelsLike;
    final double? tempMin;
    final double? tempMax;
    final int? pressure;
    final int? humidity;
    final int? seaLevel;
    final int? grndLevel;

    Main({
        this.temp,
        this.feelsLike,
        this.tempMin,
        this.tempMax,
        this.pressure,
        this.humidity,
        this.seaLevel,
        this.grndLevel,
    });

    factory Main.fromJson(String str) => Main.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Main.fromMap(Map<String, dynamic> json) => Main(
        temp: json["temp"]?.toDouble(),
        feelsLike: json["feels_like"]?.toDouble(),
        tempMin: json["temp_min"]?.toDouble(),
        tempMax: json["temp_max"]?.toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
        seaLevel: json["sea_level"],
        grndLevel: json["grnd_level"],
    );

    Map<String, dynamic> toMap() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
        "sea_level": seaLevel,
        "grnd_level": grndLevel,
    };
}

class Sys {
    final String? country;
    final int? sunrise;
    final int? sunset;

    Sys({
        this.country,
        this.sunrise,
        this.sunset,
    });

    factory Sys.fromJson(String str) => Sys.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Sys.fromMap(Map<String, dynamic> json) => Sys(
        country: json["country"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
    );

    Map<String, dynamic> toMap() => {
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
    };
}

class Weather {
    final int? id;
    final String? main;
    final String? description;
    final String? icon;

    Weather({
        this.id,
        this.main,
        this.description,
        this.icon,
    });

    factory Weather.fromJson(String str) => Weather.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Weather.fromMap(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
    };
}

class Wind {
    final double? speed;
    final int? deg;
    final double? gust;

    Wind({
        this.speed,
        this.deg,
        this.gust,
    });

    factory Wind.fromJson(String str) => Wind.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Wind.fromMap(Map<String, dynamic> json) => Wind(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
        gust: json["gust"]?.toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "speed": speed,
        "deg": deg,
        "gust": gust,
    };
}

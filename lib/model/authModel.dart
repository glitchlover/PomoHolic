import 'dart:convert';

class AuthModel {
  final bool loggedIn;
  final String apiKey;
  final String userId;
  AuthModel({
    this.loggedIn = true,
    required this.apiKey,
    required this.userId,
  });

  AuthModel copyWith({
    bool? loggedIn,
    String? apiKey,
    String? userId,
  }) {
    return AuthModel(
      loggedIn: loggedIn ?? this.loggedIn,
      apiKey: apiKey ?? this.apiKey,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'loggedIn': loggedIn,
      'apiKey': apiKey,
      'userId': userId,
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      loggedIn: map['loggedIn'] ?? false,
      apiKey: map['apiKey'] ?? '',
      userId: map['userId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) => AuthModel.fromMap(json.decode(source));

  @override
  String toString() => 'AuthModel(loggedIn: $loggedIn, apiKey: $apiKey, userId: $userId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AuthModel &&
      other.loggedIn == loggedIn &&
      other.apiKey == apiKey &&
      other.userId == userId;
  }

  @override
  int get hashCode => loggedIn.hashCode ^ apiKey.hashCode ^ userId.hashCode;
}

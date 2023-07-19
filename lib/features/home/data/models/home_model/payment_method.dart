import 'dart:convert';

class PaymentMethod {
  int? id;
  String? type;
  String? name;
  String? description;
  String? icon;
  dynamic options;

  PaymentMethod({
    this.id,
    this.type,
    this.name,
    this.description,
    this.icon,
    this.options,
  });

  @override
  String toString() {
    return 'PaymentMethod(id: $id, type: $type, name: $name, description: $description, icon: $icon, options: $options)';
  }

  factory PaymentMethod.fromMap(Map<String, dynamic> data) => PaymentMethod(
        id: data['id'] as int?,
        type: data['type'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        icon: data['icon'] as String?,
        options: data['options'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'type': type,
        'name': name,
        'description': description,
        'icon': icon,
        'options': options,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PaymentMethod].
  factory PaymentMethod.fromJson(String data) {
    return PaymentMethod.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PaymentMethod] to a JSON string.
  String toJson() => json.encode(toMap());

  PaymentMethod copyWith({
    int? id,
    String? type,
    String? name,
    String? description,
    String? icon,
    dynamic options,
  }) {
    return PaymentMethod(
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      options: options ?? this.options,
    );
  }
}

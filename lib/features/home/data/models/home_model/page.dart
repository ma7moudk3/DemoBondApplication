import 'dart:convert';

class Page {
  int? id;
  String? title;
  String? slug;
  String? description;
  String? icon;
  String? type;

  Page({
    this.id,
    this.title,
    this.slug,
    this.description,
    this.icon,
    this.type,
  });

  @override
  String toString() {
    return 'Page(id: $id, title: $title, slug: $slug, description: $description, icon: $icon, type: $type)';
  }

  factory Page.fromMap(Map<String, dynamic> data) => Page(
        id: data['id'] as int?,
        title: data['title'] as String?,
        slug: data['slug'] as String?,
        description: data['description'] as String?,
        icon: data['icon'] as String?,
        type: data['type'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'slug': slug,
        'description': description,
        'icon': icon,
        'type': type,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Page].
  factory Page.fromJson(String data) {
    return Page.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Page] to a JSON string.
  String toJson() => json.encode(toMap());

  Page copyWith({
    int? id,
    String? title,
    String? slug,
    String? description,
    String? icon,
    String? type,
  }) {
    return Page(
      id: id ?? this.id,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      type: type ?? this.type,
    );
  }
}

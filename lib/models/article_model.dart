class Article {
  final String title;
  final String byline;
  final String url;
  final String imageUrl;
  final String publishedDate;
  final String summary;

  Article({
    this.title,
    this.byline,
    this.url,
    this.imageUrl,
    this.publishedDate,
    this.summary
  });

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      title: map['title'],
      byline: map['byline'],
      url: map['url'],
      imageUrl: map['multimedia'].length > 0
        ? map['multimedia'][3]['url']
        : 'https://images.unsplash.com/photo-1576018397465-3fa155cd5bf9?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      publishedDate: map['publishedDate'],
      summary: map['abstract']
    );
  }
}
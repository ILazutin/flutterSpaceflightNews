
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spaceflight_news/domain/model/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _height = 310.0;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: _height,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {},
            splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
            highlightColor: Colors.transparent,
            child: _ArticleItemContent(article),
          ),
        ),
      ),
    );
  }

}

class _ArticleItemContent extends StatelessWidget {
  final Article article;

  const _ArticleItemContent(this.article);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.headline5;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 180.0,
          child: Ink.image(
            image: NetworkImage(article.imageUrl),
            fit: BoxFit.cover,
            child: Container(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0),
          child: DefaultTextStyle(
            softWrap: false,
            style: titleStyle!,
            overflow: TextOverflow.ellipsis,
            child: Text(article.title),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0),
          child: DefaultTextStyle(
            softWrap: false,
            style: theme.textTheme.subtitle1!,
            overflow: TextOverflow.ellipsis,
            child: AutoSizeText(
              article.summary,
              maxLines: 3,
              minFontSize: theme.textTheme.subtitle1!.fontSize!,
            ),
          ),
        ),
      ],
    );
  }
}
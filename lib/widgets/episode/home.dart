import 'package:flutter/material.dart';
import 'package:hear2learn/widgets/common/episode_tile.dart';
import 'package:hear2learn/widgets/episode/options.dart';
import 'package:hear2learn/widgets/episode/player.dart';
import 'package:hear2learn/models/episode.dart';

class EpisodeHome extends StatelessWidget {
  final Episode episode;
  final Function onDelete;
  final Function onDownload;
  final Function onPause;
  final Function onPlay;

  const EpisodeHome({
    Key key,
    this.episode,
    this.onDelete,
    this.onDownload,
    this.onPause,
    this.onPlay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(episode.podcastTitle, style: Theme.of(context).textTheme.title, textAlign: TextAlign.left),
              ),
            ),
            EpisodeTile(
              subtitle: episode.getMetaLine(),
              title: episode.title,
            ),
            EpisodeOptions(
              episode: episode,
              onDelete: onDelete,
              onDownload: onDownload,
            ),
          ],
        ),
        Container(
          child: Divider(
            color: Theme.of(context).dividerColor,
            height: 8.0,
          ),
          padding: const EdgeInsets.all(16.0),
        ),
        Container(
          child: EpisodePlayer(
            episode: episode,
            onPause: onPause,
            onPlay: onPlay,
          ),
          padding: const EdgeInsets.only(bottom: 16.0),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}

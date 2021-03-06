// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_subscription.dart';

// **************************************************************************
// BeanGenerator
// **************************************************************************

abstract class _PodcastSubscriptionBean implements Bean<PodcastSubscription> {
  final id = StrField('id');
  final isSubscribed = BoolField('is_subscribed');
  final created = DateTimeField('created');
  final details = StrField('details');
  final podcastId = StrField('podcast_id');
  final podcastUrl = StrField('podcast_url');
  Map<String, Field> _fields;
  Map<String, Field> get fields => _fields ??= {
        id.name: id,
        isSubscribed.name: isSubscribed,
        created.name: created,
        details.name: details,
        podcastId.name: podcastId,
        podcastUrl.name: podcastUrl,
      };
  PodcastSubscription fromMap(Map map) {
    PodcastSubscription model = PodcastSubscription();
    model.id = adapter.parseValue(map['id']);
    model.isSubscribed = adapter.parseValue(map['is_subscribed']);
    model.created = adapter.parseValue(map['created']);
    model.details = adapter.parseValue(map['details']);
    model.podcastId = adapter.parseValue(map['podcast_id']);
    model.podcastUrl = adapter.parseValue(map['podcast_url']);

    return model;
  }

  List<SetColumn> toSetColumns(PodcastSubscription model,
      {bool update = false, Set<String> only, bool onlyNonNull: false}) {
    List<SetColumn> ret = [];

    if (only == null && !onlyNonNull) {
      ret.add(id.set(model.id));
      ret.add(isSubscribed.set(model.isSubscribed));
      ret.add(created.set(model.created));
      ret.add(details.set(model.details));
      ret.add(podcastId.set(model.podcastId));
      ret.add(podcastUrl.set(model.podcastUrl));
    } else if (only != null) {
      if (only.contains(id.name)) ret.add(id.set(model.id));
      if (only.contains(isSubscribed.name))
        ret.add(isSubscribed.set(model.isSubscribed));
      if (only.contains(created.name)) ret.add(created.set(model.created));
      if (only.contains(details.name)) ret.add(details.set(model.details));
      if (only.contains(podcastId.name))
        ret.add(podcastId.set(model.podcastId));
      if (only.contains(podcastUrl.name))
        ret.add(podcastUrl.set(model.podcastUrl));
    } else /* if (onlyNonNull) */ {
      if (model.id != null) {
        ret.add(id.set(model.id));
      }
      if (model.isSubscribed != null) {
        ret.add(isSubscribed.set(model.isSubscribed));
      }
      if (model.created != null) {
        ret.add(created.set(model.created));
      }
      if (model.details != null) {
        ret.add(details.set(model.details));
      }
      if (model.podcastId != null) {
        ret.add(podcastId.set(model.podcastId));
      }
      if (model.podcastUrl != null) {
        ret.add(podcastUrl.set(model.podcastUrl));
      }
    }

    return ret;
  }

  Future<void> createTable({bool ifNotExists: false}) async {
    final st = Sql.create(tableName, ifNotExists: ifNotExists);
    st.addStr(id.name, primary: true, length: 36, isNullable: false);
    st.addBool(isSubscribed.name, isNullable: false);
    st.addDateTime(created.name, isNullable: false);
    st.addStr(details.name, length: 0, isNullable: false);
    st.addStr(podcastId.name, length: 0, isNullable: false);
    st.addStr(podcastUrl.name, length: 0, isNullable: false);
    return adapter.createTable(st);
  }

  Future<dynamic> insert(PodcastSubscription model,
      {bool cascade: false, bool onlyNonNull: false, Set<String> only}) async {
    final Insert insert = inserter
        .setMany(toSetColumns(model, only: only, onlyNonNull: onlyNonNull));
    return adapter.insert(insert);
  }

  Future<void> insertMany(List<PodcastSubscription> models,
      {bool onlyNonNull: false, Set<String> only}) async {
    final List<List<SetColumn>> data = models
        .map((model) =>
            toSetColumns(model, only: only, onlyNonNull: onlyNonNull))
        .toList();
    final InsertMany insert = inserters.addAll(data);
    await adapter.insertMany(insert);
    return;
  }

  Future<dynamic> upsert(PodcastSubscription model,
      {bool cascade: false, Set<String> only, bool onlyNonNull: false}) async {
    final Upsert upsert = upserter
        .setMany(toSetColumns(model, only: only, onlyNonNull: onlyNonNull));
    return adapter.upsert(upsert);
  }

  Future<void> upsertMany(List<PodcastSubscription> models,
      {bool onlyNonNull: false, Set<String> only}) async {
    final List<List<SetColumn>> data = [];
    for (var i = 0; i < models.length; ++i) {
      var model = models[i];
      data.add(
          toSetColumns(model, only: only, onlyNonNull: onlyNonNull).toList());
    }
    final UpsertMany upsert = upserters.addAll(data);
    await adapter.upsertMany(upsert);
    return;
  }

  Future<int> update(PodcastSubscription model,
      {bool cascade: false,
      bool associate: false,
      Set<String> only,
      bool onlyNonNull: false}) async {
    final Update update = updater
        .where(this.id.eq(model.id))
        .setMany(toSetColumns(model, only: only, onlyNonNull: onlyNonNull));
    return adapter.update(update);
  }

  Future<void> updateMany(List<PodcastSubscription> models,
      {bool onlyNonNull: false, Set<String> only}) async {
    final List<List<SetColumn>> data = [];
    final List<Expression> where = [];
    for (var i = 0; i < models.length; ++i) {
      var model = models[i];
      data.add(
          toSetColumns(model, only: only, onlyNonNull: onlyNonNull).toList());
      where.add(this.id.eq(model.id));
    }
    final UpdateMany update = updaters.addAll(data, where);
    await adapter.updateMany(update);
    return;
  }

  Future<PodcastSubscription> find(String id,
      {bool preload: false, bool cascade: false}) async {
    final Find find = finder.where(this.id.eq(id));
    return await findOne(find);
  }

  Future<int> remove(String id) async {
    final Remove remove = remover.where(this.id.eq(id));
    return adapter.remove(remove);
  }

  Future<int> removeMany(List<PodcastSubscription> models) async {
// Return if models is empty. If this is not done, all records will be removed!
    if (models == null || models.isEmpty) return 0;
    final Remove remove = remover;
    for (final model in models) {
      remove.or(this.id.eq(model.id));
    }
    return adapter.remove(remove);
  }
}

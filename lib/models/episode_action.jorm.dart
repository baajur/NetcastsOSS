// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_action.dart';

// **************************************************************************
// BeanGenerator
// **************************************************************************

abstract class _EpisodeActionBean implements Bean<EpisodeAction> {
  final created = DateTimeField('created');
  final details = StrField('details');
  final type = StrField('type');
  final url = StrField('url');
  final id = StrField('id');
  Map<String, Field> _fields;
  Map<String, Field> get fields => _fields ??= {
        created.name: created,
        details.name: details,
        type.name: type,
        url.name: url,
        id.name: id,
      };
  EpisodeAction fromMap(Map map) {
    EpisodeAction model = EpisodeAction();
    model.created = adapter.parseValue(map['created']);
    model.details = adapter.parseValue(map['details']);
    model.type = adapter.parseValue(map['type']);
    model.url = adapter.parseValue(map['url']);
    model.id = adapter.parseValue(map['id']);

    return model;
  }

  List<SetColumn> toSetColumns(EpisodeAction model,
      {bool update = false, Set<String> only, bool onlyNonNull: false}) {
    List<SetColumn> ret = [];

    if (only == null && !onlyNonNull) {
      ret.add(created.set(model.created));
      ret.add(details.set(model.details));
      ret.add(type.set(model.type));
      ret.add(url.set(model.url));
      ret.add(id.set(model.id));
    } else if (only != null) {
      if (only.contains(created.name)) ret.add(created.set(model.created));
      if (only.contains(details.name)) ret.add(details.set(model.details));
      if (only.contains(type.name)) ret.add(type.set(model.type));
      if (only.contains(url.name)) ret.add(url.set(model.url));
      if (only.contains(id.name)) ret.add(id.set(model.id));
    } else /* if (onlyNonNull) */ {
      if (model.created != null) {
        ret.add(created.set(model.created));
      }
      if (model.details != null) {
        ret.add(details.set(model.details));
      }
      if (model.type != null) {
        ret.add(type.set(model.type));
      }
      if (model.url != null) {
        ret.add(url.set(model.url));
      }
      if (model.id != null) {
        ret.add(id.set(model.id));
      }
    }

    return ret;
  }

  Future<void> createTable({bool ifNotExists: false}) async {
    final st = Sql.create(tableName, ifNotExists: ifNotExists);
    st.addDateTime(created.name, isNullable: false);
    st.addStr(details.name, length: 0, isNullable: false);
    st.addStr(type.name, length: 0, isNullable: false);
    st.addStr(url.name, length: 0, isNullable: false);
    st.addStr(id.name, primary: true, length: 36, isNullable: false);
    return adapter.createTable(st);
  }

  Future<dynamic> insert(EpisodeAction model,
      {bool cascade: false, bool onlyNonNull: false, Set<String> only}) async {
    final Insert insert = inserter
        .setMany(toSetColumns(model, only: only, onlyNonNull: onlyNonNull));
    return adapter.insert(insert);
  }

  Future<void> insertMany(List<EpisodeAction> models,
      {bool onlyNonNull: false, Set<String> only}) async {
    final List<List<SetColumn>> data = models
        .map((model) =>
            toSetColumns(model, only: only, onlyNonNull: onlyNonNull))
        .toList();
    final InsertMany insert = inserters.addAll(data);
    await adapter.insertMany(insert);
    return;
  }

  Future<dynamic> upsert(EpisodeAction model,
      {bool cascade: false, Set<String> only, bool onlyNonNull: false}) async {
    final Upsert upsert = upserter
        .setMany(toSetColumns(model, only: only, onlyNonNull: onlyNonNull));
    return adapter.upsert(upsert);
  }

  Future<void> upsertMany(List<EpisodeAction> models,
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

  Future<int> update(EpisodeAction model,
      {bool cascade: false,
      bool associate: false,
      Set<String> only,
      bool onlyNonNull: false}) async {
    final Update update = updater
        .where(this.id.eq(model.id))
        .setMany(toSetColumns(model, only: only, onlyNonNull: onlyNonNull));
    return adapter.update(update);
  }

  Future<void> updateMany(List<EpisodeAction> models,
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

  Future<EpisodeAction> find(String id,
      {bool preload: false, bool cascade: false}) async {
    final Find find = finder.where(this.id.eq(id));
    return await findOne(find);
  }

  Future<int> remove(String id) async {
    final Remove remove = remover.where(this.id.eq(id));
    return adapter.remove(remove);
  }

  Future<int> removeMany(List<EpisodeAction> models) async {
// Return if models is empty. If this is not done, all records will be removed!
    if (models == null || models.isEmpty) return 0;
    final Remove remove = remover;
    for (final model in models) {
      remove.or(this.id.eq(model.id));
    }
    return adapter.remove(remove);
  }
}

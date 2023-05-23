// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_drift.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, model> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 5, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 5, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [id, email, password, createAt];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<model> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  model map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return model(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class model extends DataClass implements Insertable<model> {
  final int id;
  final String email;
  final String password;
  final DateTime createAt;
  const model(
      {required this.id,
      required this.email,
      required this.password,
      required this.createAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    map['create_at'] = Variable<DateTime>(createAt);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      email: Value(email),
      password: Value(password),
      createAt: Value(createAt),
    );
  }

  factory model.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return model(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'createAt': serializer.toJson<DateTime>(createAt),
    };
  }

  model copyWith(
          {int? id, String? email, String? password, DateTime? createAt}) =>
      model(
        id: id ?? this.id,
        email: email ?? this.email,
        password: password ?? this.password,
        createAt: createAt ?? this.createAt,
      );
  @override
  String toString() {
    return (StringBuffer('model(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('createAt: $createAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, email, password, createAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is model &&
          other.id == this.id &&
          other.email == this.email &&
          other.password == this.password &&
          other.createAt == this.createAt);
}

class UsersCompanion extends UpdateCompanion<model> {
  final Value<int> id;
  final Value<String> email;
  final Value<String> password;
  final Value<DateTime> createAt;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.createAt = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    required String password,
    this.createAt = const Value.absent(),
  })  : email = Value(email),
        password = Value(password);
  static Insertable<model> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? password,
    Expression<DateTime>? createAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (createAt != null) 'create_at': createAt,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? email,
      Value<String>? password,
      Value<DateTime>? createAt}) {
    return UsersCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
      createAt: createAt ?? this.createAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('createAt: $createAt')
          ..write(')'))
        .toString();
  }
}

class $ExperiencesTable extends Experiences
    with TableInfo<$ExperiencesTable, experiences> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExperiencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _startedMeta =
      const VerificationMeta('started');
  @override
  late final GeneratedColumn<DateTime> started = GeneratedColumn<DateTime>(
      'started', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _completedMeta =
      const VerificationMeta('completed');
  @override
  late final GeneratedColumn<DateTime> completed = GeneratedColumn<DateTime>(
      'completed', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _currentMeta =
      const VerificationMeta('current');
  @override
  late final GeneratedColumn<bool> current =
      GeneratedColumn<bool>('current', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("current" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES users (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, started, completed, current, createAt, userId];
  @override
  String get aliasedName => _alias ?? 'experiences';
  @override
  String get actualTableName => 'experiences';
  @override
  VerificationContext validateIntegrity(Insertable<experiences> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('started')) {
      context.handle(_startedMeta,
          started.isAcceptableOrUnknown(data['started']!, _startedMeta));
    } else if (isInserting) {
      context.missing(_startedMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed']!, _completedMeta));
    }
    if (data.containsKey('current')) {
      context.handle(_currentMeta,
          current.isAcceptableOrUnknown(data['current']!, _currentMeta));
    }
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  experiences map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return experiences(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      started: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}started'])!,
      completed: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}completed']),
      current: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}current'])!,
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
    );
  }

  @override
  $ExperiencesTable createAlias(String alias) {
    return $ExperiencesTable(attachedDatabase, alias);
  }
}

class experiences extends DataClass implements Insertable<experiences> {
  final int id;
  final String title;
  final DateTime started;
  final DateTime? completed;
  final bool current;
  final DateTime createAt;
  final int userId;
  const experiences(
      {required this.id,
      required this.title,
      required this.started,
      this.completed,
      required this.current,
      required this.createAt,
      required this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['started'] = Variable<DateTime>(started);
    if (!nullToAbsent || completed != null) {
      map['completed'] = Variable<DateTime>(completed);
    }
    map['current'] = Variable<bool>(current);
    map['create_at'] = Variable<DateTime>(createAt);
    map['user_id'] = Variable<int>(userId);
    return map;
  }

  ExperiencesCompanion toCompanion(bool nullToAbsent) {
    return ExperiencesCompanion(
      id: Value(id),
      title: Value(title),
      started: Value(started),
      completed: completed == null && nullToAbsent
          ? const Value.absent()
          : Value(completed),
      current: Value(current),
      createAt: Value(createAt),
      userId: Value(userId),
    );
  }

  factory experiences.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return experiences(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      started: serializer.fromJson<DateTime>(json['started']),
      completed: serializer.fromJson<DateTime?>(json['completed']),
      current: serializer.fromJson<bool>(json['current']),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'started': serializer.toJson<DateTime>(started),
      'completed': serializer.toJson<DateTime?>(completed),
      'current': serializer.toJson<bool>(current),
      'createAt': serializer.toJson<DateTime>(createAt),
      'userId': serializer.toJson<int>(userId),
    };
  }

  experiences copyWith(
          {int? id,
          String? title,
          DateTime? started,
          Value<DateTime?> completed = const Value.absent(),
          bool? current,
          DateTime? createAt,
          int? userId}) =>
      experiences(
        id: id ?? this.id,
        title: title ?? this.title,
        started: started ?? this.started,
        completed: completed.present ? completed.value : this.completed,
        current: current ?? this.current,
        createAt: createAt ?? this.createAt,
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('experiences(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('started: $started, ')
          ..write('completed: $completed, ')
          ..write('current: $current, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, started, completed, current, createAt, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is experiences &&
          other.id == this.id &&
          other.title == this.title &&
          other.started == this.started &&
          other.completed == this.completed &&
          other.current == this.current &&
          other.createAt == this.createAt &&
          other.userId == this.userId);
}

class ExperiencesCompanion extends UpdateCompanion<experiences> {
  final Value<int> id;
  final Value<String> title;
  final Value<DateTime> started;
  final Value<DateTime?> completed;
  final Value<bool> current;
  final Value<DateTime> createAt;
  final Value<int> userId;
  const ExperiencesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.started = const Value.absent(),
    this.completed = const Value.absent(),
    this.current = const Value.absent(),
    this.createAt = const Value.absent(),
    this.userId = const Value.absent(),
  });
  ExperiencesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required DateTime started,
    this.completed = const Value.absent(),
    this.current = const Value.absent(),
    this.createAt = const Value.absent(),
    required int userId,
  })  : title = Value(title),
        started = Value(started),
        userId = Value(userId);
  static Insertable<experiences> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<DateTime>? started,
    Expression<DateTime>? completed,
    Expression<bool>? current,
    Expression<DateTime>? createAt,
    Expression<int>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (started != null) 'started': started,
      if (completed != null) 'completed': completed,
      if (current != null) 'current': current,
      if (createAt != null) 'create_at': createAt,
      if (userId != null) 'user_id': userId,
    });
  }

  ExperiencesCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<DateTime>? started,
      Value<DateTime?>? completed,
      Value<bool>? current,
      Value<DateTime>? createAt,
      Value<int>? userId}) {
    return ExperiencesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      started: started ?? this.started,
      completed: completed ?? this.completed,
      current: current ?? this.current,
      createAt: createAt ?? this.createAt,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (started.present) {
      map['started'] = Variable<DateTime>(started.value);
    }
    if (completed.present) {
      map['completed'] = Variable<DateTime>(completed.value);
    }
    if (current.present) {
      map['current'] = Variable<bool>(current.value);
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExperiencesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('started: $started, ')
          ..write('completed: $completed, ')
          ..write('current: $current, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $ProfilesTable extends Profiles with TableInfo<$ProfilesTable, profile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _contactMeta =
      const VerificationMeta('contact');
  @override
  late final GeneratedColumn<String> contact = GeneratedColumn<String>(
      'contact', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 8, maxTextLength: 8),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<Uint8List> image = GeneratedColumn<Uint8List>(
      'image', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES users (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, contact, address, image, createAt, userId];
  @override
  String get aliasedName => _alias ?? 'profiles';
  @override
  String get actualTableName => 'profiles';
  @override
  VerificationContext validateIntegrity(Insertable<profile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('contact')) {
      context.handle(_contactMeta,
          contact.isAcceptableOrUnknown(data['contact']!, _contactMeta));
    } else if (isInserting) {
      context.missing(_contactMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  profile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return profile(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      contact: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}image'])!,
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
    );
  }

  @override
  $ProfilesTable createAlias(String alias) {
    return $ProfilesTable(attachedDatabase, alias);
  }
}

class profile extends DataClass implements Insertable<profile> {
  final int id;
  final String contact;
  final String address;
  final Uint8List image;
  final DateTime createAt;
  final int userId;
  const profile(
      {required this.id,
      required this.contact,
      required this.address,
      required this.image,
      required this.createAt,
      required this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['contact'] = Variable<String>(contact);
    map['address'] = Variable<String>(address);
    map['image'] = Variable<Uint8List>(image);
    map['create_at'] = Variable<DateTime>(createAt);
    map['user_id'] = Variable<int>(userId);
    return map;
  }

  ProfilesCompanion toCompanion(bool nullToAbsent) {
    return ProfilesCompanion(
      id: Value(id),
      contact: Value(contact),
      address: Value(address),
      image: Value(image),
      createAt: Value(createAt),
      userId: Value(userId),
    );
  }

  factory profile.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return profile(
      id: serializer.fromJson<int>(json['id']),
      contact: serializer.fromJson<String>(json['contact']),
      address: serializer.fromJson<String>(json['address']),
      image: serializer.fromJson<Uint8List>(json['image']),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'contact': serializer.toJson<String>(contact),
      'address': serializer.toJson<String>(address),
      'image': serializer.toJson<Uint8List>(image),
      'createAt': serializer.toJson<DateTime>(createAt),
      'userId': serializer.toJson<int>(userId),
    };
  }

  profile copyWith(
          {int? id,
          String? contact,
          String? address,
          Uint8List? image,
          DateTime? createAt,
          int? userId}) =>
      profile(
        id: id ?? this.id,
        contact: contact ?? this.contact,
        address: address ?? this.address,
        image: image ?? this.image,
        createAt: createAt ?? this.createAt,
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('profile(')
          ..write('id: $id, ')
          ..write('contact: $contact, ')
          ..write('address: $address, ')
          ..write('image: $image, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, contact, address, $driftBlobEquality.hash(image), createAt, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is profile &&
          other.id == this.id &&
          other.contact == this.contact &&
          other.address == this.address &&
          $driftBlobEquality.equals(other.image, this.image) &&
          other.createAt == this.createAt &&
          other.userId == this.userId);
}

class ProfilesCompanion extends UpdateCompanion<profile> {
  final Value<int> id;
  final Value<String> contact;
  final Value<String> address;
  final Value<Uint8List> image;
  final Value<DateTime> createAt;
  final Value<int> userId;
  const ProfilesCompanion({
    this.id = const Value.absent(),
    this.contact = const Value.absent(),
    this.address = const Value.absent(),
    this.image = const Value.absent(),
    this.createAt = const Value.absent(),
    this.userId = const Value.absent(),
  });
  ProfilesCompanion.insert({
    this.id = const Value.absent(),
    required String contact,
    required String address,
    required Uint8List image,
    this.createAt = const Value.absent(),
    required int userId,
  })  : contact = Value(contact),
        address = Value(address),
        image = Value(image),
        userId = Value(userId);
  static Insertable<profile> custom({
    Expression<int>? id,
    Expression<String>? contact,
    Expression<String>? address,
    Expression<Uint8List>? image,
    Expression<DateTime>? createAt,
    Expression<int>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (contact != null) 'contact': contact,
      if (address != null) 'address': address,
      if (image != null) 'image': image,
      if (createAt != null) 'create_at': createAt,
      if (userId != null) 'user_id': userId,
    });
  }

  ProfilesCompanion copyWith(
      {Value<int>? id,
      Value<String>? contact,
      Value<String>? address,
      Value<Uint8List>? image,
      Value<DateTime>? createAt,
      Value<int>? userId}) {
    return ProfilesCompanion(
      id: id ?? this.id,
      contact: contact ?? this.contact,
      address: address ?? this.address,
      image: image ?? this.image,
      createAt: createAt ?? this.createAt,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (contact.present) {
      map['contact'] = Variable<String>(contact.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfilesCompanion(')
          ..write('id: $id, ')
          ..write('contact: $contact, ')
          ..write('address: $address, ')
          ..write('image: $image, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $FormationsTable extends Formations
    with TableInfo<$FormationsTable, formations> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FormationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<Degree, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Degree>($FormationsTable.$converterstatus);
  static const VerificationMeta _diplomatMeta =
      const VerificationMeta('diplomat');
  @override
  late final GeneratedColumn<String> diplomat = GeneratedColumn<String>(
      'diplomat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _startedMeta =
      const VerificationMeta('started');
  @override
  late final GeneratedColumn<DateTime> started = GeneratedColumn<DateTime>(
      'started', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _completedMeta =
      const VerificationMeta('completed');
  @override
  late final GeneratedColumn<DateTime> completed = GeneratedColumn<DateTime>(
      'completed', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES users (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, status, diplomat, started, completed, createAt, userId];
  @override
  String get aliasedName => _alias ?? 'formations';
  @override
  String get actualTableName => 'formations';
  @override
  VerificationContext validateIntegrity(Insertable<formations> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('diplomat')) {
      context.handle(_diplomatMeta,
          diplomat.isAcceptableOrUnknown(data['diplomat']!, _diplomatMeta));
    } else if (isInserting) {
      context.missing(_diplomatMeta);
    }
    if (data.containsKey('started')) {
      context.handle(_startedMeta,
          started.isAcceptableOrUnknown(data['started']!, _startedMeta));
    } else if (isInserting) {
      context.missing(_startedMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed']!, _completedMeta));
    }
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  formations map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return formations(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      status: $FormationsTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      diplomat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}diplomat'])!,
      started: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}started'])!,
      completed: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}completed']),
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
    );
  }

  @override
  $FormationsTable createAlias(String alias) {
    return $FormationsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Degree, String, String> $converterstatus =
      const EnumNameConverter<Degree>(Degree.values);
}

class formations extends DataClass implements Insertable<formations> {
  final int id;
  final Degree status;
  final String diplomat;
  final DateTime started;
  final DateTime? completed;
  final DateTime createAt;
  final int userId;
  const formations(
      {required this.id,
      required this.status,
      required this.diplomat,
      required this.started,
      this.completed,
      required this.createAt,
      required this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      final converter = $FormationsTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status));
    }
    map['diplomat'] = Variable<String>(diplomat);
    map['started'] = Variable<DateTime>(started);
    if (!nullToAbsent || completed != null) {
      map['completed'] = Variable<DateTime>(completed);
    }
    map['create_at'] = Variable<DateTime>(createAt);
    map['user_id'] = Variable<int>(userId);
    return map;
  }

  FormationsCompanion toCompanion(bool nullToAbsent) {
    return FormationsCompanion(
      id: Value(id),
      status: Value(status),
      diplomat: Value(diplomat),
      started: Value(started),
      completed: completed == null && nullToAbsent
          ? const Value.absent()
          : Value(completed),
      createAt: Value(createAt),
      userId: Value(userId),
    );
  }

  factory formations.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return formations(
      id: serializer.fromJson<int>(json['id']),
      status: $FormationsTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      diplomat: serializer.fromJson<String>(json['diplomat']),
      started: serializer.fromJson<DateTime>(json['started']),
      completed: serializer.fromJson<DateTime?>(json['completed']),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'status': serializer
          .toJson<String>($FormationsTable.$converterstatus.toJson(status)),
      'diplomat': serializer.toJson<String>(diplomat),
      'started': serializer.toJson<DateTime>(started),
      'completed': serializer.toJson<DateTime?>(completed),
      'createAt': serializer.toJson<DateTime>(createAt),
      'userId': serializer.toJson<int>(userId),
    };
  }

  formations copyWith(
          {int? id,
          Degree? status,
          String? diplomat,
          DateTime? started,
          Value<DateTime?> completed = const Value.absent(),
          DateTime? createAt,
          int? userId}) =>
      formations(
        id: id ?? this.id,
        status: status ?? this.status,
        diplomat: diplomat ?? this.diplomat,
        started: started ?? this.started,
        completed: completed.present ? completed.value : this.completed,
        createAt: createAt ?? this.createAt,
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('formations(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('diplomat: $diplomat, ')
          ..write('started: $started, ')
          ..write('completed: $completed, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, status, diplomat, started, completed, createAt, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is formations &&
          other.id == this.id &&
          other.status == this.status &&
          other.diplomat == this.diplomat &&
          other.started == this.started &&
          other.completed == this.completed &&
          other.createAt == this.createAt &&
          other.userId == this.userId);
}

class FormationsCompanion extends UpdateCompanion<formations> {
  final Value<int> id;
  final Value<Degree> status;
  final Value<String> diplomat;
  final Value<DateTime> started;
  final Value<DateTime?> completed;
  final Value<DateTime> createAt;
  final Value<int> userId;
  const FormationsCompanion({
    this.id = const Value.absent(),
    this.status = const Value.absent(),
    this.diplomat = const Value.absent(),
    this.started = const Value.absent(),
    this.completed = const Value.absent(),
    this.createAt = const Value.absent(),
    this.userId = const Value.absent(),
  });
  FormationsCompanion.insert({
    this.id = const Value.absent(),
    required Degree status,
    required String diplomat,
    required DateTime started,
    this.completed = const Value.absent(),
    this.createAt = const Value.absent(),
    required int userId,
  })  : status = Value(status),
        diplomat = Value(diplomat),
        started = Value(started),
        userId = Value(userId);
  static Insertable<formations> custom({
    Expression<int>? id,
    Expression<String>? status,
    Expression<String>? diplomat,
    Expression<DateTime>? started,
    Expression<DateTime>? completed,
    Expression<DateTime>? createAt,
    Expression<int>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (status != null) 'status': status,
      if (diplomat != null) 'diplomat': diplomat,
      if (started != null) 'started': started,
      if (completed != null) 'completed': completed,
      if (createAt != null) 'create_at': createAt,
      if (userId != null) 'user_id': userId,
    });
  }

  FormationsCompanion copyWith(
      {Value<int>? id,
      Value<Degree>? status,
      Value<String>? diplomat,
      Value<DateTime>? started,
      Value<DateTime?>? completed,
      Value<DateTime>? createAt,
      Value<int>? userId}) {
    return FormationsCompanion(
      id: id ?? this.id,
      status: status ?? this.status,
      diplomat: diplomat ?? this.diplomat,
      started: started ?? this.started,
      completed: completed ?? this.completed,
      createAt: createAt ?? this.createAt,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (status.present) {
      final converter = $FormationsTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status.value));
    }
    if (diplomat.present) {
      map['diplomat'] = Variable<String>(diplomat.value);
    }
    if (started.present) {
      map['started'] = Variable<DateTime>(started.value);
    }
    if (completed.present) {
      map['completed'] = Variable<DateTime>(completed.value);
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormationsCompanion(')
          ..write('id: $id, ')
          ..write('status: $status, ')
          ..write('diplomat: $diplomat, ')
          ..write('started: $started, ')
          ..write('completed: $completed, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $SkillsTable extends Skills with TableInfo<$SkillsTable, skills> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SkillsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _skillMeta = const VerificationMeta('skill');
  @override
  late final GeneratedColumn<String> skill = GeneratedColumn<String>(
      'skill', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<Status, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Status>($SkillsTable.$converterstatus);
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES users (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, skill, status, createAt, userId];
  @override
  String get aliasedName => _alias ?? 'skills';
  @override
  String get actualTableName => 'skills';
  @override
  VerificationContext validateIntegrity(Insertable<skills> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('skill')) {
      context.handle(
          _skillMeta, skill.isAcceptableOrUnknown(data['skill']!, _skillMeta));
    } else if (isInserting) {
      context.missing(_skillMeta);
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  skills map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return skills(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      skill: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}skill'])!,
      status: $SkillsTable.$converterstatus.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
    );
  }

  @override
  $SkillsTable createAlias(String alias) {
    return $SkillsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Status, String, String> $converterstatus =
      const EnumNameConverter<Status>(Status.values);
}

class skills extends DataClass implements Insertable<skills> {
  final int id;
  final String skill;
  final Status status;
  final DateTime createAt;
  final int userId;
  const skills(
      {required this.id,
      required this.skill,
      required this.status,
      required this.createAt,
      required this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['skill'] = Variable<String>(skill);
    {
      final converter = $SkillsTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status));
    }
    map['create_at'] = Variable<DateTime>(createAt);
    map['user_id'] = Variable<int>(userId);
    return map;
  }

  SkillsCompanion toCompanion(bool nullToAbsent) {
    return SkillsCompanion(
      id: Value(id),
      skill: Value(skill),
      status: Value(status),
      createAt: Value(createAt),
      userId: Value(userId),
    );
  }

  factory skills.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return skills(
      id: serializer.fromJson<int>(json['id']),
      skill: serializer.fromJson<String>(json['skill']),
      status: $SkillsTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'skill': serializer.toJson<String>(skill),
      'status': serializer
          .toJson<String>($SkillsTable.$converterstatus.toJson(status)),
      'createAt': serializer.toJson<DateTime>(createAt),
      'userId': serializer.toJson<int>(userId),
    };
  }

  skills copyWith(
          {int? id,
          String? skill,
          Status? status,
          DateTime? createAt,
          int? userId}) =>
      skills(
        id: id ?? this.id,
        skill: skill ?? this.skill,
        status: status ?? this.status,
        createAt: createAt ?? this.createAt,
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('skills(')
          ..write('id: $id, ')
          ..write('skill: $skill, ')
          ..write('status: $status, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, skill, status, createAt, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is skills &&
          other.id == this.id &&
          other.skill == this.skill &&
          other.status == this.status &&
          other.createAt == this.createAt &&
          other.userId == this.userId);
}

class SkillsCompanion extends UpdateCompanion<skills> {
  final Value<int> id;
  final Value<String> skill;
  final Value<Status> status;
  final Value<DateTime> createAt;
  final Value<int> userId;
  const SkillsCompanion({
    this.id = const Value.absent(),
    this.skill = const Value.absent(),
    this.status = const Value.absent(),
    this.createAt = const Value.absent(),
    this.userId = const Value.absent(),
  });
  SkillsCompanion.insert({
    this.id = const Value.absent(),
    required String skill,
    required Status status,
    this.createAt = const Value.absent(),
    required int userId,
  })  : skill = Value(skill),
        status = Value(status),
        userId = Value(userId);
  static Insertable<skills> custom({
    Expression<int>? id,
    Expression<String>? skill,
    Expression<String>? status,
    Expression<DateTime>? createAt,
    Expression<int>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (skill != null) 'skill': skill,
      if (status != null) 'status': status,
      if (createAt != null) 'create_at': createAt,
      if (userId != null) 'user_id': userId,
    });
  }

  SkillsCompanion copyWith(
      {Value<int>? id,
      Value<String>? skill,
      Value<Status>? status,
      Value<DateTime>? createAt,
      Value<int>? userId}) {
    return SkillsCompanion(
      id: id ?? this.id,
      skill: skill ?? this.skill,
      status: status ?? this.status,
      createAt: createAt ?? this.createAt,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (skill.present) {
      map['skill'] = Variable<String>(skill.value);
    }
    if (status.present) {
      final converter = $SkillsTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status.value));
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SkillsCompanion(')
          ..write('id: $id, ')
          ..write('skill: $skill, ')
          ..write('status: $status, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

class $LangagesTable extends Langages with TableInfo<$LangagesTable, langages> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LangagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _langageMeta =
      const VerificationMeta('langage');
  @override
  late final GeneratedColumn<String> langage = GeneratedColumn<String>(
      'langage', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<Status, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Status>($LangagesTable.$converterstatus);
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES users (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, langage, status, createAt, userId];
  @override
  String get aliasedName => _alias ?? 'langages';
  @override
  String get actualTableName => 'langages';
  @override
  VerificationContext validateIntegrity(Insertable<langages> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('langage')) {
      context.handle(_langageMeta,
          langage.isAcceptableOrUnknown(data['langage']!, _langageMeta));
    } else if (isInserting) {
      context.missing(_langageMeta);
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  langages map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return langages(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      langage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}langage'])!,
      status: $LangagesTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
    );
  }

  @override
  $LangagesTable createAlias(String alias) {
    return $LangagesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Status, String, String> $converterstatus =
      const EnumNameConverter<Status>(Status.values);
}

class langages extends DataClass implements Insertable<langages> {
  final int id;
  final String langage;
  final Status status;
  final DateTime createAt;
  final int userId;
  const langages(
      {required this.id,
      required this.langage,
      required this.status,
      required this.createAt,
      required this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['langage'] = Variable<String>(langage);
    {
      final converter = $LangagesTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status));
    }
    map['create_at'] = Variable<DateTime>(createAt);
    map['user_id'] = Variable<int>(userId);
    return map;
  }

  LangagesCompanion toCompanion(bool nullToAbsent) {
    return LangagesCompanion(
      id: Value(id),
      langage: Value(langage),
      status: Value(status),
      createAt: Value(createAt),
      userId: Value(userId),
    );
  }

  factory langages.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return langages(
      id: serializer.fromJson<int>(json['id']),
      langage: serializer.fromJson<String>(json['langage']),
      status: $LangagesTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'langage': serializer.toJson<String>(langage),
      'status': serializer
          .toJson<String>($LangagesTable.$converterstatus.toJson(status)),
      'createAt': serializer.toJson<DateTime>(createAt),
      'userId': serializer.toJson<int>(userId),
    };
  }

  langages copyWith(
          {int? id,
          String? langage,
          Status? status,
          DateTime? createAt,
          int? userId}) =>
      langages(
        id: id ?? this.id,
        langage: langage ?? this.langage,
        status: status ?? this.status,
        createAt: createAt ?? this.createAt,
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('langages(')
          ..write('id: $id, ')
          ..write('langage: $langage, ')
          ..write('status: $status, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, langage, status, createAt, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is langages &&
          other.id == this.id &&
          other.langage == this.langage &&
          other.status == this.status &&
          other.createAt == this.createAt &&
          other.userId == this.userId);
}

class LangagesCompanion extends UpdateCompanion<langages> {
  final Value<int> id;
  final Value<String> langage;
  final Value<Status> status;
  final Value<DateTime> createAt;
  final Value<int> userId;
  const LangagesCompanion({
    this.id = const Value.absent(),
    this.langage = const Value.absent(),
    this.status = const Value.absent(),
    this.createAt = const Value.absent(),
    this.userId = const Value.absent(),
  });
  LangagesCompanion.insert({
    this.id = const Value.absent(),
    required String langage,
    required Status status,
    this.createAt = const Value.absent(),
    required int userId,
  })  : langage = Value(langage),
        status = Value(status),
        userId = Value(userId);
  static Insertable<langages> custom({
    Expression<int>? id,
    Expression<String>? langage,
    Expression<String>? status,
    Expression<DateTime>? createAt,
    Expression<int>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (langage != null) 'langage': langage,
      if (status != null) 'status': status,
      if (createAt != null) 'create_at': createAt,
      if (userId != null) 'user_id': userId,
    });
  }

  LangagesCompanion copyWith(
      {Value<int>? id,
      Value<String>? langage,
      Value<Status>? status,
      Value<DateTime>? createAt,
      Value<int>? userId}) {
    return LangagesCompanion(
      id: id ?? this.id,
      langage: langage ?? this.langage,
      status: status ?? this.status,
      createAt: createAt ?? this.createAt,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (langage.present) {
      map['langage'] = Variable<String>(langage.value);
    }
    if (status.present) {
      final converter = $LangagesTable.$converterstatus;
      map['status'] = Variable<String>(converter.toSql(status.value));
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LangagesCompanion(')
          ..write('id: $id, ')
          ..write('langage: $langage, ')
          ..write('status: $status, ')
          ..write('createAt: $createAt, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(e);
  late final $UsersTable users = $UsersTable(this);
  late final $ExperiencesTable experiences = $ExperiencesTable(this);
  late final $ProfilesTable profiles = $ProfilesTable(this);
  late final $FormationsTable formations = $FormationsTable(this);
  late final $SkillsTable skills = $SkillsTable(this);
  late final $LangagesTable langages = $LangagesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, experiences, profiles, formations, skills, langages];
}

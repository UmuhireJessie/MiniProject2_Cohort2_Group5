import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'details.dart';


class DBHelper {
  static Database? _database;
  static final String _dbName = 'my_database.db';
  static final int _dbVersion = 1;
  static final String _tableTickets = 'tickets';

  static Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }

  static Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);
    return await openDatabase(path, version: _dbVersion,
        onCreate: (Database db, int version) async {
      await db.execute('''
          CREATE TABLE $_tableTickets (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            location TEXT,
            time TEXT,
            agency TEXT,
            arrival_time TEXT
          )
          ''');
    });
  }

  static Future<int> insertTicket(Ticket ticket) async {
    final db = await database;
    return await db.insert(_tableTickets, ticket.toMap());
  }

  static Future<int> updateTicket(Ticket ticket) async {
    final db = await database;
    return await db.update(_tableTickets, ticket.toMap(),
        where: 'id = ?', whereArgs: [ticket.id]);
  }

  static Future<int> deleteTicket(int id) async {
    final db = await database;
    return await db.delete(_tableTickets, where: 'id = ?', whereArgs: [id]);
  }

  static Future<List<Ticket>> getTickets() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(_tableTickets);
    return List.generate(maps.length, (i) {
      return Ticket.fromMap(maps[i]);
    });
  }
}

class Ticket {
  final int? id;
  final String location;
  final String time;
  final String agency;
  final String arrivalTime;

  Ticket({
    this.id,
    required this.location,
    required this.time,
    required this.agency,
    required this.arrivalTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'location': location,
      'time': time,
      'agency': agency,
      'arrival_time': arrivalTime,
    };
  }

  factory Ticket.fromMap(Map<String, dynamic> map) {
    return Ticket(
      id: map['id'],
      location: map['location'],
      time: map['time'],
      agency: map['agency'],
      arrivalTime: map['arrival_time'],
    );
  }
}

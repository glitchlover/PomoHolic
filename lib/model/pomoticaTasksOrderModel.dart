// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';

part 'pomoticaTasksOrderModel.g.dart';

@Collection()
class PomoticaTasksOrder {
  @Id()
  int? pomoticataskid = Isar.autoIncrement;

  final String? frequency;
  final String? type;
  final String notes;
  final List<String>? tags;
  final double? value;
  final double? priority;
  final DateTime createdAt = DateTime.now();
  final DateTime? updatedAt;
  final String? id;
  final String text;
  final String? alias;
  final int? everyX;
  final int? streak;
  final List<String>? nextDue;
  final bool? yesterDaily;
  final bool? completed;
  final bool? collapseChecklist;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool? isDue;
  final DateTime? date;
  final bool isActive;
  final bool isSync;
  PomoticaTasksOrder({
    this.pomoticataskid,
    this.frequency,
    this.type,
    required this.notes,
    this.tags,
    this.value,
    this.priority,
    this.updatedAt,
    this.id,
    required this.text,
    this.alias,
    this.everyX,
    this.streak,
    this.nextDue,
    this.yesterDaily,
    this.completed,
    this.collapseChecklist,
    this.startDate,
    this.endDate,
    this.isDue,
    this.date,
    required this.isActive,
    required this.isSync,
  });
}

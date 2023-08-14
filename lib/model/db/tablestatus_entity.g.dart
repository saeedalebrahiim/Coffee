// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tablestatus_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<TableStatusEntity> {
  @override
  final int typeId = 0;

  @override
  TableStatusEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TableStatusEntity(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TableStatusEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.tableNumber)
      ..writeByte(1)
      ..write(obj.statusString);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

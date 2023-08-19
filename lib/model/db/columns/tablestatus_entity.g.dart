// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<TableEntity> {
  @override
  final int typeId = 4;

  @override
  TableEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TableEntity(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TableEntity obj) {
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TableEntityAdapter extends TypeAdapter<TableEntity> {
  @override
  final int typeId = 2;

  @override
  TableEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TableEntity(
      number: fields[0] as String,
      orderStatus: fields[2] as String,
      productsId: (fields[3] as List).cast<String>(),
      tableStatus: fields[1] as String,
      id: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TableEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.tableStatus)
      ..writeByte(2)
      ..write(obj.orderStatus)
      ..writeByte(3)
      ..write(obj.productsId)
      ..writeByte(4)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TableEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

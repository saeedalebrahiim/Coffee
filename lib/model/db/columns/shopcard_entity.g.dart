// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopcard_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShopCardEntityAdapter extends TypeAdapter<ShopCardEntity> {
  @override
  final int typeId = 2;

  @override
  ShopCardEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShopCardEntity(
        count: fields[2] as int,
        tableId: fields[1] as int,
        totalPrice: fields[0] as String);
  }

  @override
  void write(BinaryWriter writer, ShopCardEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.totalPrice)
      ..writeByte(1)
      ..write(obj.tableId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShopCardEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopcard_item_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShopCardItemEntityAdapter extends TypeAdapter<ShopCardItemEntity> {
  @override
  final int typeId = 3;

  @override
  ShopCardItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShopCardItemEntity(
      fields[0] as String,
      fields[1] as int,
      fields[2] as int,
      fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ShopCardItemEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.totalPrice)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.shopCardId)
      ..writeByte(3)
      ..write(obj.productId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShopCardItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

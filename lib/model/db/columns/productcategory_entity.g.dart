// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productcategory_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductCategoryEntityAdapter extends TypeAdapter<ProductCategoryEntity> {
  @override
  final int typeId = 1;

  @override
  ProductCategoryEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductCategoryEntity(
      fields[1] as dynamic Function()?,
      fields[0] as String,
      fields[2] as IconData,
    );
  }

  @override
  void write(BinaryWriter writer, ProductCategoryEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.engName)
      ..writeByte(1)
      ..write(obj.onTap)
      ..writeByte(2)
      ..write(obj.categoryIcon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductCategoryEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

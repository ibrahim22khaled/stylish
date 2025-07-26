// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 0;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      productId: fields[0] as int,
      productTitle: fields[1] as String,
      productPrice: fields[2] as num,
      productDescription: fields[3] as String,
      productCategory: fields[4] as String,
      productImage: fields[5] as String,
      productRate: fields[6] as num,
      productReviews: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.productTitle)
      ..writeByte(2)
      ..write(obj.productPrice)
      ..writeByte(3)
      ..write(obj.productDescription)
      ..writeByte(4)
      ..write(obj.productCategory)
      ..writeByte(5)
      ..write(obj.productImage)
      ..writeByte(6)
      ..write(obj.productRate)
      ..writeByte(7)
      ..write(obj.productReviews);
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

import 'package:chopper/chopper.dart';
import 'package:scratch_flutter/pojo/util/serializers.dart';

class BuiltValueConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) {
    if (body.runtimeType == Map) {
      return super.convertRequest(request);
    }
    return super.convertRequest(request.copyWith(
        body: serializers.serializeWith(
            serializers.serializerForType(request.body.runtimeType),
            request.body)));
  }

  @override
  Response<BodyType> convertResponse<BodyType, SingleItemType>(
      Response response) {
    assert(BodyType == SingleItemType);

    final dynamicResponse = super.convertResponse(response);

    if (dynamicResponse.body is SingleItemType) return dynamicResponse;

    BodyType typedBody;

    try {

      final serializer = serializers.serializerForType(BodyType);
      print(serializer);
      typedBody = serializers.deserializeWith(
          serializer, dynamicResponse.body);
      print(typedBody);

    } on Exception catch (e) {
      print(e);
    }

    return dynamicResponse.copyWith<BodyType>(
        body: typedBody);
  }
}

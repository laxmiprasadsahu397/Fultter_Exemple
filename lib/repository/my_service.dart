import "dart:async";
import 'package:chopper/chopper.dart';

part "my_service.chopper.dart";

@ChopperApi(baseUrl: "/resources")
abstract class MyService extends ChopperService {
  static MyService create([ChopperClient client]) => _$MyService(client);

  
  @Get()
  Future<Response> getUserList();

  // @Get(url: "{id}")
  // Future<Response> getResource(@Path() String id);

  // @Get(headers: const {"foo": "bar"})
  // Future<Response<Map>> getMapResource(@Query() String id);

  // @Post(url: 'multi')
  // @multipart
  // Future<Response> postResources(
  //   @Part('1') Map a,
  //   @Part('2') Map b,
  //   @Part('3') String c,
  // );

  // @Post(url: 'file')
  // @multipart
  // Future<Response> postFile(
  //   @FileField('file') List<int> bytes,
  // );
}
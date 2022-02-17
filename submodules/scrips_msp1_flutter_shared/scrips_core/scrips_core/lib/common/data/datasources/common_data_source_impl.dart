import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:scrips_core/common/data/datamodels/location_by_placeid_model.dart';
import 'package:scrips_core/common/data/datamodels/location_request_model.dart';
import 'package:scrips_core/common/data/datamodels/locations_model.dart';
import 'package:scrips_core/common/data/datamodels/twilio_response_model.dart';
import 'package:scrips_core/common/data/datasources/common_data_source.dart';
import 'package:scrips_core/constants/status_objects.dart';
import 'package:scrips_core/utils/dio_api_client.dart';
import 'package:scrips_shared_features/di/dependency_injection.dart';

class CommonDataSourceImpl extends CommonDataSource {
  int defaultTimeout = 10;
  static final endpointTwilio = 'https://lookups.twilio.com';
  Dio client;

  CommonDataSourceImpl() {
    client = sl<DioApiClient>().getAuthenticatedBytesApiClient();
  }

  @override
  Future<Locations> fetchLocationsByQuery({String query, String type}) async {
    return null;
  }

  @override
  Future<TwilioResponse> verifyPhone({String phone, String country}) async {
    //TODO: check this hard coded token
    Dio client = Dio();
    client.options.responseType = ResponseType.bytes;
    client.options.headers = {
      'Content-Type': 'application/json',
    };
    var response = await client
        .get('$endpointTwilio/v1/PhoneNumbers/$phone')
        .timeout(Duration(seconds: defaultTimeout + 10), onTimeout: () {
      throw Failure('Fetching locations Failed');
    });
    print(utf8.decode(response.data));
    return twilioResponseFromJson(utf8.decode(response.data));
  }

  @override
  Future<LocationByPlaceId> fetchLocationByPlaceId({String placeId}) async {
    return null;
  }

  @override
  Future<List> valueSetsData(Map<String, String> request) {
    // TODO: implement valueSetsData
    throw UnimplementedError();
  }

  @override
  Future<List> valueSetsDataSimpleKey(Map<String, String> request) {
    // TODO: implement valueSetsDataSimpleKey
    throw UnimplementedError();
  }
}

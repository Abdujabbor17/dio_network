import 'package:dio/dio.dart';
import 'package:dio_network/core/api/api.dart';
import 'package:dio_network/model/photo_model.dart';
import 'package:dio_network/model/photo_model.dart';
import 'package:dio_network/model/photo_model.dart';
import 'package:dio_network/model/photo_model.dart';
import 'package:dio_network/model/photo_model.dart';

import '../core/config/dio_config.dart';
import '../model/post_model.dart';
import 'log_service.dart';

class PhotoService {
  static final PhotoService _inheritance = PhotoService._init();

  static PhotoService get inheritance => _inheritance;

  PhotoService._init();

  static Future<List<PhotoModel>?> getPhotos() async {
    try {
      Response res =
          await DioConfig.inheritance.createRequest().get(Urls.getPhotos);
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<PhotoModel> photos = [];
        for (var e in (res.data as List)) {
          photos.add(PhotoModel.fromJson(e));
        }

        return photos;
      } else {
        Log.e("${res.statusMessage} ${res.statusCode}");
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
    }
    return null;
  }

  /*static Future<bool> createPhoto(PhotoModel newPhoto) async {
    try {
      Response res = await DioConfig.inheritance
          .createRequest()
          .post(Urls.addPhoto, data: {
        "userId": newPhoto.userId,
        "title": newPhoto.title,
        "body": newPhoto.body
      });
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      } else {
        Log.e("${res.statusMessage} ${res.statusCode}");
        return false;
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
        return false;
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
      return false;
    }
  }

  static Future<bool> editPhoto(PhotoModel newPhoto) async {
    try {
      Response res = await DioConfig.inheritance
          .createRequest()
          .put(Urls.updatePhoto + newPhoto.id.toString(), data: {
        "userId": newPhoto.userId,
        "title": newPhoto.title,
        "body": newPhoto.body
      });
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      } else {
        Log.e("${res.statusMessage} ${res.statusCode}");
        return false;
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
        return false;
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
      return false;
    }
  }

  static Future<bool> deletePhoto(int id) async {
    try {
      Response res = await DioConfig.inheritance
          .createRequest()
          .delete(Urls.deletePhoto + id.toString());
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200 || res.statusCode == 201) {
        return true;
      } else {
        Log.e("${res.statusMessage} ${res.statusCode}");
        return false;
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
        return false;
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
      return false;
    }
  }*/
}

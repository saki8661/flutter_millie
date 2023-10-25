import 'package:dio/dio.dart';
import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/response_dto/reponse_dto.dart';
import 'package:flutter_blog/data/model/post.dart';

class PostRepository {
  Future<ResponseDTO> fetchPostDetail(int id) async {
    try {
      Response response = await dio.get("/posts/$id");

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Post post = Post.fromJson(responseDTO.data);
      responseDTO.data = post;

      return responseDTO;
    } catch (e) {
      return ResponseDTO(-1, "포스트 불러오기 실패", null);
    }
  }
}

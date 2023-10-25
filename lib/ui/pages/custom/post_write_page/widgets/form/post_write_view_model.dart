import 'package:flutter/material.dart';
import 'package:flutter_blog/data/dto/request_dto/post_request_dto.dart';
import 'package:flutter_blog/data/repository/post_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_summernote/flutter_summernote.dart';

class PostWriteViewModel extends StateNotifierProvider {
  final TextEditingController titleController = TextEditingController();
  final GlobalKey<FlutterSummernoteState> keyEditor = GlobalKey();

  PostWriteViewModel(super._state, this.ref);
  final Ref ref;

  Future<void> publishPost(PostRepository postRepository) async {
    final title = titleController.text;
    final content = await keyEditor.currentState?.getText();
    if (title.isEmpty || content == null || content.isEmpty) {
      // 글 작성이나 포스트 저장에 필요한 데이터가 부족한 경우에 대한 처리
      return;
    }

    final dto = PostSaveReqDTO(title: title, content: content);

    try {
      await postRepository.savePost(dto);

    } catch (e) {
      // 저장에 실패했을 때의 로직을 추가하세요.
    }
  }
}

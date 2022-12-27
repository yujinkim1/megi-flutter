import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import '../providers/device_info.dart';

//MARK: -ATTACHMENT
List<String> attachments = [];

//MARK: -SUBJECT
final _subjectController = TextEditingController(text: "Test App");

//MARK: -RECIPIENTS
final _recipientsController =
    TextEditingController(text: "yujinkim1.dev@gmail.com");

//MARK: -GET EMAIL BODYS
Future<String> _getEmailBody() async {
  String body = "";
  Map<String, dynamic> deviceData = await getDeviceInfo();
  body += "----------\n";
  body += "고객님의 리뷰는 저희의 앱을 발전시키는데 도움이 됩니다.\n";
  deviceData.forEach((key, value) {
    body += "$key: $value\n";
  });
  body += "----------\n";
  body += "위 정보를 제외하고 자유롭게 작성해서 보내주세요!";
  return body;
}

//MARK: -SUPPORT WITH APP TO USING MAIL SENDER
Future<void> sender() async {
  String platformResponse;
  final body = await _getEmailBody();
  final Email email = Email(
      body: body,
      subject: _subjectController.text,
      recipients: [_recipientsController.text],
      cc: [],
      bcc: [],
      attachmentPaths: attachments,
      isHTML: false);

  try {
    await FlutterEmailSender.send(email);
    platformResponse = "발송 완료!";
  } catch (error) {
    String error =
        "기본 메일을 사용할 수 없어서 메일을 보낼 수 없는 상황이에요\n\n아래 번호로 연락주시면 친절하게 안내해드릴게요:)\n\nT.031-374-6898";
    print(error);
    platformResponse = error.toString();
    print(email.body);
  }
}

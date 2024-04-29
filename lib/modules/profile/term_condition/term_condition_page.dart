import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_audio/flutter_html_audio.dart';
import 'package:flutter_html_iframe/flutter_html_iframe.dart';
import 'package:flutter_html_svg/flutter_html_svg.dart';
import 'package:flutter_html_table/flutter_html_table.dart';
import 'package:flutter_html_video/flutter_html_video.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './term_condition_controller.dart';

class TermConditionPage extends GetView<TermConditionController> {
  const TermConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("terms_and_conditions".tr),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.getData();
        },
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Obx(() => Column(
                  children: [
                    controller.state.value.noConnectionWidget(),
                    controller.state.value.loadingWidget(),
                    controller.state.value.errorWidget(),
                    controller.state.value.successWidget(
                      (data, total, hasReachedMax) => Html(
                        data: data.content,
                        shrinkWrap: true,
                        style: {"body": Style(margin: Margins.zero)},
                        extensions: const [
                          AudioHtmlExtension(),
                          VideoHtmlExtension(),
                          IframeHtmlExtension(),
                          TableHtmlExtension(),
                          SvgHtmlExtension(),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

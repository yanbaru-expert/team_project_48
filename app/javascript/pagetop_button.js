
// トップへ戻るボタンの実装
$(document).on('turbolinks:load', function () {
  var pagetop = $('#page_top');
  // ボタン非表示
  pagetop.hide();
  // 100px スクロールしたらボタン表示
  $(window).on('scroll', function () {
    if ($(this).scrollTop() > 100) {
      pagetop.fadeIn();
    } else {
      pagetop.fadeOut();
    }
  });
  pagetop.on('click', function () {
    $('body, html').animate({ scrollTop: 0 }, 500);
    return false;
  });
});
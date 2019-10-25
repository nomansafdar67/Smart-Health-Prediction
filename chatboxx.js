$(function () {
    $("#btn-chat").click(function (ev) {
        var text = $("#btn-input").val();
        if (!text.trim()) return;
        console.log("Wao");
        var msg_container = renderMessage(text, null, (new Date).toLocaleDateString(), true);
        var container = $(".msg_container_base");
        $(container).append(msg_container);
        $(container).animate({
            scrollTop: $(container).prop('scrollHeight')
        }, 300);
        $("#btn-input").val('');
        ev.preventDefault();
    });
});
function renderMessage(text, pp, datetime, issent) {

    var baseclass, msgclass;
    if (issent)
        baseclass = 'base_sent', msgclass = 'msg_sent';
    else
        baseclass = 'base_receive', msgclass = 'msg_receive';
    var msg_container = $("<div/>").addClass("row msg_container " + baseclass);

    var avatar = $("<div/>").addClass("col-md-2 col-xs-2 avatar");
    var img = $("<img/>").attr("src", "http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg").addClass("img-responsive");
    avatar.append(img);
    msg_container.append(avatar);

    var col = $("<div/>").addClass("col-xs-10 col-md-10");
    var msg_receive = $("<div/>").addClass("messages " + msgclass);
    var p = $("<p/>").text(text);
    var time = $("<time/>").attr("datetime", "2009-11-13T20:00").text(datetime);
    msg_receive.append(p);
    msg_receive.append(time);
    col.append(msg_receive);
    if (issent) {
        msg_container.append(col);
        msg_container.append(avatar);
    }
    else {
        msg_container.append(avatar);
        msg_container.append(col);
    }
    return msg_container;

}
$(document).on('click', '.panel-heading span.icon_minim', function (e) {
    var $this = $(this);
    if (!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).on('focus', '.panel-footer input.chat_input', function (e) {
    var $this = $(this);
    if ($('#minim_chat_window').hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideDown();
        $('#minim_chat_window').removeClass('panel-collapsed');
        $('#minim_chat_window').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).on('click', '#new_chat', function (e) {
    var size = $(".chat-window:last-child").css("margin-left");
    size_total = parseInt(size) + 400;
    alert(size_total);
    var clone = $("#chat_window_1").clone().appendTo(".container");
    clone.css("margin-left", size_total);
});
$(document).on('click', '.icon_close', function (e) {
    //$(this).parent().parent().parent().parent().remove();
    $("#chat_window_1").remove();
});



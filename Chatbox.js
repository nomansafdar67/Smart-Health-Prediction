var CRef=undefined;
var CSKey = undefined;
function initializeChat() {
    
    $(".contact").click(function (ev) {
        $("#chat_window_1").css("display", "block");
        $("#nextusername").text($(this).text());
        var groupid = $(this).data('conversationid');
        console.log(groupid);
        if (groupid) {
            getFBC(groupid);
            var cref = firebase.database().ref('/Chat/c_' + groupid);
            CRef = cref;
            var uid = $("#uid").val();
            $('#chat_window_1').data('conversationid', groupid);
            $('#chat_window_1').data('receiverid', $(this).data('receiverid'));
            var chatLoadQuery = cref.limitToLast(7);
            var chatListenQuery = cref;
            var t = 0;
            var oldMessagesLoaded = false;
            chatLoadQuery.once('value', function (snapshot) {
                if (!snapshot.val()) {
                    console.log("Empty");
                    return;
                }
                var tLength = Object.keys(snapshot.val()).length;
                chatLoadQuery.on('child_added', function (snapshot) {
                    t++;
                    if (t == 1) {
                        CSKey = snapshot.key;
                    }
                    if (t == tLength) {
                        oldMessagesLoaded = true;
                        chatLoadQuery.off();
                    }
                    onLoadMessages(snapshot.val(), uid);
                });
            });
            chatListenQuery.on('child_added', function (snapshot) {
                if (!oldMessagesLoaded) return;
                var message = snapshot.val();
                if (message.senderid === uid) return;
                var body = $(".msg_container_base");
                $("#chat_window_1").css("display", "block");
                var messageContainer = renderMessage(message.text, null, message.datetime, false);
                $(body).append(messageContainer);

                $(body).animate({
                    scrollTop: $(body).prop("scrollHeight")
                }, 100);
            });
            renderGroupChat();
        }
        else console.log("Not a groupid");
    });
}
function fbCGExists(groupid,exists){
    if(!exists ){
        if (!groupid) {
            console.log("Group Not Created");
            return;
        }
        var key="c_"+groupid;
        var group={};
        group["c_"+groupid]=0;
        firebase.database().ref("/Chat/").update(group).catch(function(err){
        });
        firebase.database().ref("/Notification/Message/").update(group)
            .catch(function(err){
            });
    }
}
function getFBC(groupid){
    var fb=firebase.database().ref('/Chat/'+"c_"+groupid);
    fb.once('value', function (snapshot) {
        console.log("Value received");
        fbCGExists(groupid,snapshot.val()!==null);
    });
}
function onLoadMessages(message,uid,isScroll){
    var body = $(".msg_container_base");
    var bodyInitialHeight=body.height();
    if(uid===message.senderid)
    {
        if(isScroll)
        {
            var mcont=renderMessage(message.text,null,message.datetime,true);
            $(body).prepend(mcont);
        }
        else
            $(body).append(renderMessage(message.text, null, message.datetime, true));
    }
    else {
        var messageContainer = renderMessage(message.text, null, message.datetime, false);
        if(isScroll)
        {

            $(body).prepend(messageContainer);
        }
        else
            $(body).append(messageContainer);
    }
    if(!isScroll){
        $(body).animate({
            scrollTop:$(body).height()
        },200);
    }
    else{
        $(body).animate({
            scrollTop:bodyInitialHeight
        },20);
    }
}
function renderGroupChat(){
    var body = $(".msg_container_base");
    $(body).scroll(function(){
        if($(this).scrollTop()==0){
            if(CSKey){
                var paginatquery=CRef.orderByKey().endAt(CSKey).limitToLast(7);
                paginatquery.once('value',function(snapshot){
                    var t=0;
                    var messages=[];
                    var tLength=Object.keys(snapshot.val()).length;
                    paginatquery.on('child_added',function(snaps){
                        if(CSKey==snaps.key)return;
                        t++;
                        if(t==1)
                        {
                            messages=[];
                            CSKey=snaps.key;
                        }
                        messages.push(snaps.val());
                        if(t==tLength-1){
                            messages.reverse();
                            $.each(messages, function (index,message) {
                                onLoadMessages(message,$("#uid").val(),true);
                            });
                            paginatquery.off();
                        }
                    });
                });

            }
        }
    });
}

function sendMessaage(text) {
    var body = $(".msg_container_base");
    var message = renderMessage(text,null,(new Date).toLocaleString(),true);
    $(body).append(message);
    $(body).animate({
        scrollTop: $(body).prop("scrollHeight")
    }, 100);
    var date = new Date();
    var fbmsg = {
        senderid: $("#uid").val(),
        text: text,
        datetime:date.toLocaleString()
    };
    // Notification insertion
    if (CRef) {
        CRef.push(fbmsg).then(function () {
            //var groupid = $('#chat_window_1').data('conversationid');
            //var fcgchat = firebase.database().ref('/Notification/Message/c_' + groupid);
            //var ntext = $("#uname").value() + " has Messaged you ";
            //var notification = {
            //    text: ntext,
            //    url: window.location.href,
            //    senderid: $("#uid").val(),
            //    dtime: date.toLocaleTimeString(),
            //    ddate: date.toLocaleDateString()
            //};
            //fcgchat.push(notification);

        }).catch(function (err) {
            //message.remove();
        });
    }
    $(this).val('');
}
$(function () {
    initializeChat();
    $("#btn-chat").click(function (ev) {

        var text = $("#btn-input").val();
        if (!text.trim()) {
            console.log("Wao");
            ev.preventDefault();
            return;
        }
        sendMessaage(text);
        //var msg_container = renderMessage(text, null, (new Date).toLocaleDateString(), true);
        //var container = $(".msg_container_base");
        //$(container).append(msg_container);
        //$(container).animate({
        //    scrollTop:$(container).prop('scrollHeight')
        //}, 300);
        $("#btn-input").val('');
        ev.preventDefault();
    });
    var container = $(".msg_container_base");
    $(container).animate({
        scrollTop: $(container).prop('scrollHeight')
    }, 500);
});
function renderMessage(text,pp,datetime,issent){
    
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
    var msg_receive = $("<div/>").addClass("messages "+msgclass);
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
    $("#chat_window_1").css("display","none");
});



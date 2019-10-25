function initializeChat() {
    var groupid = $("#groupli").data("id");
    getFBCG(groupid);
    var scgref = firebase.database().ref('/cgchat/cg_' + groupid);
    var ppstorageref = firebase.storage().ref('/profilepictures');
    SCGRef = scgref;
    PPStRef = ppstorageref;
    var uid = $("#umpi").val();
    var chatLoadQuery = scgref.limitToLast(7);
    var chatListenQuery = scgref;
    var t = 0;
    var oldMessagesLoaded = false;
    chatLoadQuery.once('value', function (snapshot) {
        var tLength = Object.keys(snapshot.val()).length;
        chatLoadQuery.on('child_added', function (snapshot) {
            t++;
            if (t == 1) {
                CGCSKey = snapshot.key;
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
        console.log("Returning");
        if (message.senderid === uid) return;
        var body = $(".chatbox.card").css("display", "block")
            .find(".card-content");
        var messageContainer = renderMessage(message.text, 'msg msg-left');
        $(body).append(messageContainer);
        ppstorageref.child(message.senderid + ".jpg").getDownloadURL()
            .then(function (url) {
                var img = $('<img />').attr("src", url).addClass('circle').css({
                    width: '30px',
                    height: '30px'
                });
                var link = $("<a/>").attr("href", "/users/" + message.senderid);
                link.append(img);
                messageContainer.find(".col.s2.valign-wrapper").append(link);

            });
        $(body).animate({
            scrollTop: $(body).prop("scrollHeight")
        }, 100);
    });
    renderGroupChat();
}
function fbCGExists(groupid, exists) {
    if (!exists) {
        if (!groupid) return;
        var key = "cg_" + groupid;
        var group = {};
        group["cg_" + groupid] = 0;
        firebase.database().ref("/cgchat/").update(group).catch(function (err) {
        });
        firebase.database().ref("/notifications/fcgchat/").update(group)
            .catch(function (err) {
            });
    }
}
function getFBCG(groupid) {
    var fb = firebase.database().ref('/cgchat/' + "cg_" + groupid);
    fb.once('value', function (snapshot) {
        fbCGExists(groupid, snapshot.val() !== null);
    });
}
function onLoadMessages(message, uid, isScroll) {
    var className = 'msg ';
    var body = $(".chatbox.card")
        .find(".card-content");
    var bodyInitialHeight = body.height();
    if (uid === message.senderid) {
        className += "msg-right";
        if (isScroll) {
            var mcont = renderMessage(message.text, className);
            $(body).prepend(mcont);
        }
        else
            $(body).append(renderMessage(message.text, className));
    }
    else {
        className += "msg-left";
        var messageContainer = renderMessage(message.text, className);
        if (isScroll) {

            $(body).prepend(messageContainer);
        }
        else
            $(body).append(messageContainer);
        PPStRef.child(message.senderid + ".jpg").getDownloadURL().then(function (url) {
            var img = $('<img />').attr("src", url).addClass('circle').css({
                width: '30px',
                height: '30px'
            });
            var link = $("<a/>").attr("href", "/users/" + message.senderid);
            link.append(img);
            messageContainer.find(".col.s2.valign-wrapper").append(link);
        });
    }
    if (!isScroll) {
        $(body).animate({
            scrollTop: $(body).height()
        }, 200);
    }
    else {
        $(body).animate({
            scrollTop: bodyInitialHeight
        }, 20);
    }
}
function renderGroupChat() {
    var cgid = $("#groupli").data("id");
    var chatBox = $('<div></div>').attr("id", "cg_" + cgid).addClass('chatbox card').css('display', 'none');
    chatBox.prepend(renderChatBoxHeader());
    var body = renderChatBoxBody();
    chatBox.append(body);
    $(body).scroll(function () {
        if ($(this).scrollTop() == 0) {
            if (CGCSKey) {
                var paginatquery = SCGRef.orderByKey().endAt(CGCSKey).limitToLast(7);
                paginatquery.once('value', function (snapshot) {
                    var t = 0;
                    var messages = [];
                    var tLength = Object.keys(snapshot.val()).length;
                    console.log("First Chunk Value");
                    paginatquery.on('child_added', function (snaps) {
                        if (CGCSKey == snaps.key) return;
                        t++;
                        if (t == 1) {
                            messages = [];
                            CGCSKey = snaps.key;
                        }
                        messages.push(snaps.val());
                        if (t == tLength - 1) {
                            messages.reverse();
                            $.each(messages, function (index, message) {
                                onLoadMessages(message, $("#umpi").val(), true);
                            });
                            console.log("First Chunk Child");
                            paginatquery.off();
                        }
                    });
                });

            }
        }
    });
    chatBox.append(renderChatBoxTextField());
    chatBox.appendTo(document.body);
}
function renderChatBoxHeader() {
    var groupName = $("#a_groupname").text();
    var header = $('<div class="card-header white-text blue lighten-2"></div>').text(groupName);

    var btn_close = $("<a></a>").css({
        position: 'absolute', left: '90%'
    }).append("<i class='material-icons white-text iclose'>close</i>");
    btn_close.click(function (ev) {
        $(this).parents().find(".chatbox.card").css("display", "none");
        ev.preventDefault();
    });
    btn_close.appendTo(header);
    return header;
}
function renderChatBoxBody() {
    return $('<div class="card-content"></div>')
}
function renderMessage(text, classes) {
    var messageContainer = $("<div/>").addClass("row").css({
        margin: '0px'
    });
    var textCol = $('<div/>').addClass("col s8 " + classes).css({
        width: 'auto',
        maxWidth: '66%'
    }).text(text);
    if (classes === 'msg msg-left') {
        var imgCont = $("<div/>").addClass("col s2 valign-wrapper").css({ width: '10%', padding: '0px' });

        messageContainer.prepend(imgCont);
    }
    messageContainer.append(textCol);
    return messageContainer;
}
function renderChatBoxTextField() {
    return $("<textarea class='textinput'></textarea>").attr("rows", 1).attr("cols", 20).attr("placeholder", "Text Here...!").keypress(function (ev) {
        if (ev.keyCode === 13 && !ev.shiftKey) {
            return false;
        }
    }).keyup(function (ev) {
        if (ev.keyCode === 13 && !ev.shiftKey && !ev.ctrlKey && !ev.altKey) {
            var text = $(this).val();
            text = text.trim();
            if (!text) return;
            var body = $(".card.chatbox .card-content");
            var message = renderMessage(text, 'msg msg-right');
            $(body).append(message);
            $(body).animate({
                scrollTop: $(body).prop("scrollHeight")
            }, 100);
            var date = new Date();
            var stime = date.getTime();
            var dtime = date.toLocaleTimeString();
            var ddate = date.toLocaleDateString();
            var fbmsg = {
                senderid: $("#umpi").val(),
                text: text,
                stime: stime,
                dtime: dtime,
                ddate: ddate
            };
            var ntext = $("#umpo").data('ufname') + $("#umpo").data('usname') + " Messaged in " + $("#scn").val() + " Group";
            var cgnot = {
                senderid: $("#umpi").val(),
                text: ntext,
                dtime: dtime,
                ddate: ddate
            };
            if (SCGRef) {
                SCGRef.push(fbmsg).then(function () {
                    var groupid = $("#groupli").data("id");
                    var fcgchat = firebase.database().ref('/notifications/fcgchat/cg_' + groupid);
                    var fname = $("#umpo").data('ufname');
                    var sname = $("#umpo").data('usname');
                    var groupname = $("#a_groupname").text();
                    var ntext = fname + " " + sname + " Messaged you in " + groupname;
                    var notification = {
                        text: ntext,
                        url: window.location.href,
                        senderid: $("#umpi").val(),
                        dtime: date.toLocaleTimeString(),
                        ddate: date.toLocaleDateString()
                    };
                    ajax('post', '/notification/sgchat', {
                        scgroupid: groupid, text: ntext, url: window.location.href
                    }, function () {
                        fcgchat.push(notification);
                    });

                }).catch(function (err) {
                    Materialize.toast(err.message, 2000, 'red');
                    message.remove();
                });
            }
            $(this).val('');
        }
    });
}
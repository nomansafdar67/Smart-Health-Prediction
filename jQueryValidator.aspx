<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jQueryValidator.aspx.cs" Inherits="WebApplication2.jQueryValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery.min.js"></script>
    <script>
        $(function () {
            $("#btn").click(function (ev) {
                var name = $("#name").val();
                var password = $("#password").val();
                var cpassword = $("#confirmpassword").val();
                //$("#lbl").text("");
                //ev.preventDefault();
                if(!name.trim())
                {
                    alert("Name Required");
                    ev.preventDefault();
                }
                else if (!password.trim()) {
                    alert("Password Required");
                    ev.preventDefault();
                }
                else if (password.trim().length<=5) {
                    alert("Password Should contain atleast 6 characters");
                    ev.preventDefault();
                }
                else if (!cpassword.trim()) {
                    alert("Please confirm your password");
                    ev.preventDefault();
                }
                else if (cpassword.trim() !== cpassword.trim()) {
                    alert("Password doesn't match");
                    ev.preventDefault();
                }
                else {
                    alert("Ready to go");
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="text" id="name"/>
        <input type="password" id="password"/>
        <input type="password" id="confirmpassword"/>
        <input type="submit" value="Save" id="btn"/>
    </div>
    </form>
</body>
</html>

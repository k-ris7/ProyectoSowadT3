function LibraryVM()
{
    var parent = this;

    $("#btnLogin").click(function () {
        parent.VerificarAcceso();
    });
    parent.VerificarAcceso = function ()
    {
        var pass = $("#txtpassword").val().toString();
        var name = $("#txtUsername").val().toString();
        $.ajax({
            url: "http://190.117.203.194:9090/CapaWebSWT3/VerificarAccesoMobile",
            //url: 'http://localhost:8080/sowadt3/VerificarAccesoMobile',
            data: "UserName=" +name+ "&Password=" + pass,
            type: "POST",
            async: false,
            success: function (result) {
                var objresult = JSON.parse(result);
                if (objresult.Success=="true")
                {
                    navigator.notification.alert(objresult.Message, null, "Mensaje", "OK")
                    window.location.replace("ProductosView.html");
                }
                else
                    navigator.notification.alert(objresult.Message, null, "Mensaje", "OK")
            }
        });
    }
}

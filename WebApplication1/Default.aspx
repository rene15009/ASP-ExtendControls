<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<%@ Register Assembly="WebControls" Namespace="WebControls" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <cc1:SmartImage ID="SmartImage1" runat="server" ImageUrl="~/Images/son-goku.jpeg" FallBackUrl="~/Images/default-thumb.gif" />
            <cc1:SmartImage ID="SmartImage2" runat="server" ImageUrl="~/Images/son-gERRRORoku.jpeg" FallBackUrl="~/Images/default-thumb.gif" />

            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/OTROERROR DE IAMGEN" FallBackUrl="~/Images/default-thumb.gif" />
        </div>
    </form>
</body>
</html>
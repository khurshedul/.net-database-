<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="first.aspx.cs" Inherits="WebApplication1.first" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        
        <asp:View ID="View1" runat="server">
                   
        NAME:
        <br />
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
            <br />
        <br />
        <asp:Button ID="Button2" runat="server"  Text="next" OnClick="Button2_Click" />
        <br />
        <br />
                 </asp:View>
        <asp:View ID="View2" runat="server">
             Password:
        <br />
        <asp:TextBox ID="Pass" runat="server"></asp:TextBox>
        <br />
        Email:<br />
        <asp:TextBox ID="Email" runat="server" ></asp:TextBox>
        <br />
        <asp:Button ID="Button3" runat="server" Text="back" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="Confirm" OnClick="Button4_Click" />
        <br />
        <br />
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:Button ID="Button5" runat="server" Text="back" OnClick="Button5_Click" />
        </asp:View>
  </asp:MultiView>
    </div>
    </form>
</body>
</html>

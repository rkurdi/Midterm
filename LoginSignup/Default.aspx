<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            Hello visitor. Please log in <br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </AnonymousTemplate>
        <LoggedInTemplate>
            Hello 
            <asp:LoginName ID="LoginName1" runat="server" /><br />
            Good to see you again<br/>
            <asp:LoginStatus ID="LoginStatus2" runat="server" /><br /><br/>
            <a href="ChangePassword.aspx">Change password</a>
        </LoggedInTemplate>
        <RoleGroups>
            <asp:RoleGroup Roles="Admin">
                <ContentTemplate>
                    Hello Admin.<br />
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/Management/Manager.aspx">Manage Site</asp:LinkButton>
                    <br />
                    <asp:LoginStatus ID="LoginStatus3" runat="server" />
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>
    </asp:LoginView>
    </form>
</body>
</html>

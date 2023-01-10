<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBooks.aspx.cs" Inherits="UploadImages.AddBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 104px;
        }
        .auto-style3 {
            width: 104px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="BookID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxBookID" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="BookName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxBookName" runat="server" Width="253px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Upload Images"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Text="BtnBack" Width="78px" />
                    </td>
                    <td>
                        <asp:Button ID="AddBook" runat="server" Text="Add Book" Width="86px" OnClick="AddBook_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

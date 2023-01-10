<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UploadImages._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Product List"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="BookID">
          
            <ItemTemplate>
                <div class="list">
                    <table style="width: 9%; float: left;">
                        <tr><td> <asp:Image ID="Label3" runat="server" Height="116px" Width="90px" ImageUrl='<%# Eval("Img") %>' /></td></tr>
                        <tr><td><span>Book ID:</span><asp:Label ID="Label4" runat="server" Text='<%# Eval("BookID") %>' /></td></tr>
                        <tr><td><span>Book Name:</span><asp:Label ID="Label5" runat="server" Text='<%# Eval("BookName") %>' /></td></tr>
                        <tr><td><span>Price:</span><asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>' /></td></tr>
                    </table>
                </div>
            </ItemTemplate>

        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImageSysConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

    

</asp:Content>

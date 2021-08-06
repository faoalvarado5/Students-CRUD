<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Students_CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align="center">Student info manage form</div>
        <table class="nav-justified">
            <tr>
                <td style="height: 50px">Student ID</td>
                <td style="height: 50px">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="173px"></asp:TextBox>
                </td>
                <td style="height: 50px"></td>
            </tr>
            <tr>
                <td style="height: 53px">Student name</td>
                <td style="height: 53px">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="173px"></asp:TextBox>
                </td>
                <td style="height: 53px"></td>
            </tr>
            <tr>
                <td style="height: 47px">Address</td>
                <td style="height: 47px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>CANADA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 47px"></td>
            </tr>
            <tr>
                <td style="height: 49px">Age</td>
                <td style="height: 49px">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="173px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                </td>
                <td style="height: 49px"></td>
            </tr>
            <tr>
                <td style="height: 71px">Contact</td>
                <td style="height: 71px">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="173px"></asp:TextBox>
                </td>
                <td style="height: 71px"></td>
            </tr>
            <tr>
                <td style="height: 59px"></td>
                <td style="height: 59px">
                    <asp:Button ID="Button1" runat="server" BackColor="Blue" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Insert" />
                &nbsp;<asp:Button ID="Button2" runat="server" BackColor="Blue" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Update" />
                &nbsp;<asp:Button ID="Button3" runat="server" BackColor="Blue" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" Text="Delete" />
                &nbsp;<asp:Button ID="Button4" runat="server" BackColor="Blue" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Load" />
                &nbsp;<asp:Button ID="Button5" runat="server" BackColor="Blue" Font-Size="Medium" ForeColor="White" OnClick="Button5_Click" Text="Load ALL" />
                </td>
                <td style="height: 59px"></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" Width="992px">
        </asp:GridView>
        <br />

    </div>

</asp:Content>

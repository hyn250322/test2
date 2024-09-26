<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FirstWebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" defaultbutton ="btnDangKy" runat="server">
        <div>
            <asp:Panel ID="Panel1" DefaultButton="btnCopy" runat="server">
            <asp:TextBox ID="TextBox1" runat="server"  style="margin-left: 0px" Width="116px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ValidateString1" runat="server" ControlToValidate="TextBox1" ErrorMessage="txtString khong duoc de trong">*</asp:RequiredFieldValidator>
            <asp:Button ID="btnCopy" runat="server" OnClick="btnCopy_Click" Text="Button" style="margin-left: 17px" />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"  style="margin-left: 0px" Width="116px"></asp:TextBox>
       </asp:Panel>

        </div>

        <p>
            <table style="width:100%;">
                <tr>
                    <th colspan ="2">Form dang ky thanh vien</th>
                </tr>
                <tr>
                    <td>Ten dang nhap</td>
                    <td>
                        <asp:TextBox ID="txtTenDangNhap" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDangNhap" ErrorMessage="ten dang nhap khong duoc de trong"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mat khau</td>
                    <td>
                        <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Mat khau khong duoc de trong"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Xac nhan mat khau</td>
                    <td>
                        <asp:TextBox ID="txtXacNhanMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMatKhau" ControlToValidate="txtXacNhanMatKhau" ErrorMessage="xac nhan mat khau khong khop voi mat khau"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Dia chi</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server" TextMode="MultiLine" Width="191px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="email khong dung dinh dang" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Chuyen nganh</td>
                    <td>
                        <asp:DropDownList ID="cmbChuyenNganh" runat="server">
                            <asp:ListItem>CNTT</asp:ListItem>
                            <asp:ListItem>QTKD</asp:ListItem>
                            <asp:ListItem>TMDT</asp:ListItem>
                            <asp:ListItem>KTVT</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnDangKy" runat="server" OnClick="btnDangKy_Click" Text="DangKy" />
                    </td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>

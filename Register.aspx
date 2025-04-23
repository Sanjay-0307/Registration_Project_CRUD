<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RegistrationProject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        form {
            width: 400px;
            margin: 60px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label, .form-label {
            display: block;
            margin-top: 15px;
            font-weight: 600;
            color: #555;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
        }

        .submit-btn {
            margin-top: 25px;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Register</h2>

        <asp:Label runat="server" ID="lblName" CssClass="form-label">Name</asp:Label>
        <asp:TextBox ID="txtName" runat="server" Placeholder="Enter your name" TextMode="SingleLine"></asp:TextBox> 

        <asp:Label runat="server" ID="lblPassword" CssClass="form-label">Password</asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" Placeholder="Enter your password" TextMode="Password"></asp:TextBox> 

        <asp:Label runat="server" ID="lblCPassword" CssClass="form-label">Confirm Password</asp:Label>
        <asp:TextBox ID="txtCPassword" runat="server" Placeholder="Re-enter your password" TextMode="Password"></asp:TextBox> 

        <asp:Label runat="server" ID="lblEmail" CssClass="form-label">Email</asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your email" TextMode="Email"></asp:TextBox> 

        <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="submit-btn" />
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId"
    OnRowEditing="GridView1_RowEditing"
    OnRowUpdating="GridView1_RowUpdating"
    OnRowCancelingEdit="GridView1_RowCancelingEdit"
    OnRowDeleting="GridView1_RowDeleting">
    <Columns>
        <asp:BoundField DataField="UserId" HeaderText="ID" ReadOnly="True" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" />
        <asp:BoundField DataField="Password" HeaderText="Password" />
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>    
    
    </form>
</body>
</html>

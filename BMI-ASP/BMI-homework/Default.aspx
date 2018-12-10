<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BMI_homework.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    
    <style type="text/css">
        
        .auto-style2 {
            font-size: xx-large;
            font-family: 微軟正黑體;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
            color: #FF0000;
        }
    </style>
</head>
<body style="font-family: 微軟正黑體; font-size: xx-large; text-align: center;background-color:skyblue" >
    <form id="form1" runat="server">
        <div>


            <div>BMI</div>
            <div >
                身高<asp:TextBox ID="tbHeight" runat="server" CssClass="auto-style2" class="form-control" placeholder="請輸入身高" TextMode="Number"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbHeight" CssClass="auto-style3" Display="Dynamic" ErrorMessage="身高介於1~300" MaximumValue="300" MinimumValue="1" style="color: #FF0000" Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbHeight" CssClass="auto-style4" Display="Dynamic" ErrorMessage="身高不能空白"></asp:RequiredFieldValidator>
                <br />
                <br />
            </div>

            <div >
                體重<asp:TextBox ID="tbWeight" runat="server" CssClass="auto-style2" class="form-control" placeholder="請輸入體重" TextMode="Number"></asp:TextBox>

                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="tbWeight" CssClass="auto-style3" Display="Dynamic" ErrorMessage="體重介於1~300" MaximumValue="300" MinimumValue="1" style="color: #FF0000" Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbWeight" CssClass="auto-style4" Display="Dynamic" ErrorMessage="體重不能空白"></asp:RequiredFieldValidator>
                <br />
                <br class="auto-style3" />
                <asp:Button ID="btnResult" runat="server" Style="font-family: 微軟正黑體; font-size: xx-large" Text="計算結果" OnClick="btnResult_Click" />

            </div>




        </div>
        <br />
        <br />
        <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
    </form>


</body>
</html>

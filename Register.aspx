<%@ Page Title="" Language="C#" MasterPageFile="~/plate.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="addInfor.css" type="text/css" />
    <style type="text/css">
        #ContentPlaceHolder1_passwordVal{

    width:400px;
    height:20px;
    border-bottom:1px solid black;
    border-top:none;
    border-left:none;
    border-right:none;
    outline:none;
    background-color:transparent;
    /*color:#fff;*/
    color:blue;
}
        .password
        {
            width:100%;
    /*padding-right:20px;*/
    box-sizing:border-box;
    height:50px;
    margin-top:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="header">
        <div class="txt">Registered Account Module</div>
    </div>
    <div class="bodyer">
        <div class="tips">Tips:Please fill in the basic information</div>
        <div class="name">
                <div class="text">Name：&nbsp; </div>
                <div class="val" title="Up to six characters">
                    <asp:TextBox ID="nameVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="gender">
                <div class="text">Gender：&nbsp; </div>
                <div class="val" title="1 or 0">
                    <asp:TextBox ID="genderVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="age">
                <div class="text">Age：&nbsp; </div>
                <div class="val" title="An integer">
                    <asp:TextBox ID="ageVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="department">
                <div class="text">Department：&nbsp; </div>
                <div class="val" title="Up to 10 characters">
                    <asp:TextBox ID="departmentVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="address">
                <div class="text">Address：&nbsp; </div>
                <div class="val" title="Up to 20 characters">
                    <asp:TextBox ID="addressVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="ps">
                <div class="text">PS：&nbsp; </div>
                <div class="val" title="Up to 40 characters">
                    <asp:TextBox ID="psVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="password">
                <div class="text">Password：&nbsp; </div>
                <div class="val" title="Up to 20 characters">
                    <asp:TextBox ID="passwordVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="btn">
            <asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" />
            <asp:Button ID="submit" runat="server" Text="Register" OnClick="submit_Click" />
        </div>
    </div>
    <div class="footer">
        <div class="left">
            <span>@2017MIS</span>
        </div>
        <div class="right">
            <a href="Default2.aspx">Back To Login</a>
        </div>
    </div>
</asp:Content>



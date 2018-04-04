<%@ Page Title="" Language="C#" MasterPageFile="~/plate.master" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="deleteInfor.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="header">
        <div class="txt">Delete Information Module</div>
    </div>
    <div class="bodyer">
        <div class="tips">Tips: Do not modify !</div>
        <div class="id">
                <div class="text">ID：&nbsp; </div>
                <div class="val" title="Can not be changed.">
                    <asp:TextBox ID="idVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="name">
                <div class="text">Name：&nbsp; </div>
                <div class="val" title="Can not be empty.">
                    <asp:TextBox ID="nameVal" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="gender">
                <div class="text">Gender：&nbsp; </div>
                <div class="val">
                    <asp:TextBox ID="genderVal" runat="server"></asp:TextBox>
                    <asp:Button ID="genderBtn" runat="server" Text="remove" OnClick="genderBtn_Click" />
                </div>
            </div>
        <div class="age">
                <div class="text">Age：&nbsp; </div>
                <div class="val">
                    <asp:TextBox ID="ageVal" runat="server"></asp:TextBox>
                    <asp:Button ID="ageBtn" runat="server" Text="remove" OnClick="ageBtn_Click" />
                </div>
            </div>
        <div class="department">
                <div class="text">Department：&nbsp; </div>
                <div class="val">
                    <asp:TextBox ID="departmentVal" runat="server"></asp:TextBox>
                    <asp:Button ID="departmentBtn" runat="server" Text="remove" OnClick="departmentBtn_Click" />
                </div>
            </div>
        <div class="address">
                <div class="text">Address：&nbsp; </div>
                <div class="val">
                    <asp:TextBox ID="addressVal" runat="server"></asp:TextBox>
                    <asp:Button ID="addressBtn" runat="server" Text="remove" OnClick="addressBtn_Click" />
                </div>
            </div>
        <div class="ps">
                <div class="text">PS：&nbsp; </div>
                <div class="val">
                    <asp:TextBox ID="psVal" runat="server"></asp:TextBox>
                    <asp:Button ID="psBtn" runat="server" Text="remove" OnClick="psBtn_Click" />
                </div>
            </div>
    </div>
    <div class="footer">
        <div class="left">
            <span>@2017MIS</span>
        </div>
        <div class="right">
            <a href="home.aspx" onclick="BackToHome">Back To Home</a>
        </div>
    </div>
</asp:Content>



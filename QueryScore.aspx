<%@ Page Title="" Language="C#" MasterPageFile="~/plate.master" AutoEventWireup="true" CodeFile="QueryScore.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="queryScore.css" type="text/css" />
    <style type="text/css">
        td
        {
            border:1px solid #7f7b7b;
            width:160px;
            overflow:hidden;
            height:110px;
            text-align:center;
            line-height:110px;
            color:blue;
        }
        #ContentPlaceHolder1_math,#ContentPlaceHolder1_computer,#ContentPlaceHolder1_english,#ContentPlaceHolder1_pe
        {
            width:100%;
            height:100%;

    border:none;
    text-align:center;
    outline:none;
    color:blue;
    /*font-weight:600;*/
    font-size:18px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="header">
        <div class="txt">Query Score Module</div>
    </div>
    <div class="bodyer">
        <div class="tips">Tips: Do not modify !</div>
        <div class="score">
            <h3>Score Information Table</h3>
            <table border:1;>
                
                <tr>
                    <th>Course code</th>
                    <th>Course name</th>
                    <th>Credit</th>
                    <th>Teacher</th>
                    <th>Grade</th>
                </tr>
                <tr>
                    <td>C1111</td>
                    <td>Math</td>
                    <td>4.0</td>
                    <td>Mr.Li</td>
                    <td>

                        <asp:TextBox ID="math" runat="server" ReadOnly="True"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>C1112</td>
                    <td>Computer</td>
                    <td>5.0</td>
                    <td>Chen</td>
                    <td>
                        <asp:TextBox ID="computer" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>C1113</td>
                    <td>English</td>
                    <td>4.0</td>
                    <td>Zhang</td>
                    <td>
                        <asp:TextBox ID="english" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>C1114</td>
                    <td>PE</td>
                    <td>3.0</td>
                    <td>Yao</td>
                    <td>
                        <asp:TextBox ID="pe" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            </table>
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



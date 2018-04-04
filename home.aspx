<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HOME</title>
    <link rel="stylesheet" href="home.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="header">
            <div class="txt">Management Information System</div>
        </div>
        <div class="bodyer">
            <div class="stuInfor">
                <div class="add"  title="Adding basic information" >
                    <a href="Add.aspx" onclick="Click">
                        <p class="title">Add</p>
                        <p class="infor">information</p>
                    </a>
                </div>
                <div class="delete"  title="Delete basic information">
                    <a href="Delete.aspx"  onclick="Click">
                        <p class="title">Delete</p>
                        <p class="infor">information</p>
                    </a>
                </div>
                <div class="query" title="Query basic information">
                    <a href="Query.aspx"  onclick="Click">
                        <p class="title">Query</p>
                        <p class="infor">information</p> 
                    </a>
                </div>
                <div class="revise" title="Modifying basic information">
                    <a href="Modify.aspx"  onclick="Click">
                        <p class="title">Modify</p>
                        <p class="infor">information</p>
                    </a>
                </div>
            </div>
            <div class="stuScore" title="Query score information and classroom teacher">
                <a href="QueryScore.aspx"  onclick="Click">
                    <p class="txt">Query score information</p>
                </a>
            </div>
           
        </div>
         <div class="footer">
             <div class="left">
			    <span>@2017MIS</span>	
			</div>
			<div class="right">
				<a href="Default2.aspx">Exit system</a>
			</div>			
        </div>
    </div>
    </form>
</body>
</html>

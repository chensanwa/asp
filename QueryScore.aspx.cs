using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    string id = "";
    string c1 = "C1111";
    string c2 = "C1112";
    string c3 = "C1113";
    string c4 = "C1114";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Session["id"].ToString().Trim();
        //Response.Write(id);
        ConnMySql connMySql = new ConnMySql();
        string sql = "select score from stuScore where id='" + id + "' and courseNo='" + c1 + "'";
        MySqlDataReader myDR = connMySql.GetData(sql);
        if (myDR.Read())
        {
            math.Text = myDR[0].ToString();
        }
        sql = "select score from stuScore where id='" + id + "' and courseNo='" + c2 + "'";
        myDR = connMySql.GetData(sql);
        if (myDR.Read())
        {
            computer.Text = myDR[0].ToString();
        }
        sql = "select score from stuScore where id='" + id + "' and courseNo='" + c3 + "'";
        myDR = connMySql.GetData(sql);
        if (myDR.Read())
        {
            english.Text = myDR[0].ToString();
        }
        sql = "select score from stuScore where id='" + id + "' and courseNo='" + c4 + "'";
        myDR = connMySql.GetData(sql);
        if (myDR.Read())
        {
            pe.Text = myDR[0].ToString();
        }
    }
    protected void BackToHome(object sender, EventArgs e)
    {
        Session["id"] = id;
        Server.Transfer("home.aspx");
    }
}
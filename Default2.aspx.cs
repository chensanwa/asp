using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void Login_Click(object sender, EventArgs e)
    {
        //MySqlCommand sqlcmd = new MySqlCommand();
        //sqlcmd.Parameters.AddWithValue("@id", nameVal.Text.ToString());
        ConnMySql connMySql = new ConnMySql();
        string sql = "select password from account where id='";
        sql += nameVal.Text.ToString() + "'";
        MySqlDataReader myDR = connMySql.GetData(sql);
        if (myDR.Read())
        {
            if (myDR[0].ToString() == passwordVal.Text.ToString())
            {
                
                
                
                Session["id"] = nameVal.Text.ToString().Trim();
                Session["password"] = passwordVal.Text.ToString().Trim();
                Server.Transfer("home.aspx");
                Response.Redirect("home.aspx");
                
            }
            else
            {
                //MessageBox.Show("","");
                Response.Write("<script>alert("+"'Wrong password.'"+");</script>");
            }
        }
        else
        {
            Response.Write("<script>alert(" + "'ID does not exist.'" + ");</script>");
        }
    }

}
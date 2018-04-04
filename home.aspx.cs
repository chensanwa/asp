using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Session["id"].ToString().Trim();
        
    }
    protected void Click(object sender, EventArgs e)
    {
        Server.Transfer("Add.aspx");
    }
  
}
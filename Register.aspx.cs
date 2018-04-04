using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string name = nameVal.Text.ToString().Trim();
        string gender = genderVal.Text.ToString().Trim();
        string age = ageVal.Text.ToString().Trim();
        string department = departmentVal.Text.ToString().Trim();
        string address = addressVal.Text.ToString().Trim();
        string ps = psVal.Text.ToString().Trim();
        string password = passwordVal.Text.ToString().Trim();

        string id = "";
        int agei = int.Parse(age);
        if (name.Length > 6 || gender.Length > 1 || age.Length > 3 || department.Length > 10 || address.Length > 20 || ps.Length > 40 || password.Length > 20)
        {
            Response.Write("<script>alert(" + "'Data is illegal.'" + ");</script>");
        }
        else
        {
            ConnMySql connMySql = new ConnMySql();
            string sql = "select max(id) from account";
    
            MySqlDataReader myDR = connMySql.GetData(sql);
            if (myDR.Read())
            {
                id = myDR[0].ToString().Trim();
                id = (int.Parse(id) + 1).ToString();
            }
            
            sql = "insert into stuInfor(id,name,gender,age,department,address,ps) values('" + id + "','" + name + "','" + gender + "'," + age + ",'" + department + "','" + address + "','" + ps + "')";
            myDR = connMySql.GetData(sql);
            sql = "insert into account(id,password) values('" + id + "','" + password + "')";
            myDR = connMySql.GetData(sql);
            Response.Write("<script>alert(" + "'Registrantion success.User ID:" + id + "');</script>");
        }
    }
}
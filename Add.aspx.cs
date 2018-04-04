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
    string name = "";
    string gender = "";
    string age = "";
    string department = "";
    string address = "";
    string ps = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Session["id"].ToString().Trim();

        ConnMySql connMySql = new ConnMySql();
        string sql = "select name,gender,age,department,address,ps from stuInfor where id='" + id + "'";
        MySqlDataReader myDR = connMySql.GetData(sql);
        if (myDR.Read())
        {
            name = myDR[0].ToString().Trim();
            gender = myDR[1].ToString().Trim();
            age = myDR[2].ToString().Trim();
            department = myDR[3].ToString().Trim();
            address = myDR[4].ToString().Trim();
            ps = myDR[5].ToString().Trim();
            if (name != "")
            {
                nameVal.Text = name;
            }
            if (gender == "1")
            {

                genderVal.Text = "男";
            }
            else if (gender == "0")
            {
                genderVal.Text = "女";
            }
            if (gender != "")
            {
                genderVal.Text = gender;
            }
            if (age != "")
            {
                ageVal.Text = age;
            }
            if (department != "")
            {

                departmentVal.Text = department;
            }
            if (address != "")
            {
                addressVal.Text = address;
            }
            if (ps != "")
            {
                psVal.Text = ps;
            }
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {

        
        ConnMySql connMySql = new ConnMySql();
        string sql = "update stuInfor set name='" + this.nameVal.Text + "',gender='" + genderVal.Text + "',age=" + int.Parse(ageVal.Text) + ",department='" + departmentVal.Text + "',address='" + addressVal.Text + "',ps='" + psVal.Text + "' where id='"+id+"'" ;

        MySqlDataReader myDR = connMySql.GetData(sql);
        //Response.Write(ageVal.Text);
        Response.Write("<script>alert(" + "'Successful operation." + "');</script>");
    }
    protected void BackToHome(object sender, EventArgs e)
    {
        Session["id"] = id;
        Server.Transfer("home.aspx");
    }
}
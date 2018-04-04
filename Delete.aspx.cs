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
        //Response.Write(id);
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

            idVal.Text = id;
            nameVal.Text = name;
            //if (gender == "1")
            //{

            //    genderVal.Text = "男";
            //}
            //else if(gender == "0"){
            //    genderVal.Text = "女";
            //}
            genderVal.Text = gender;
            ageVal.Text = age;
            departmentVal.Text = department;
            addressVal.Text = address;
            psVal.Text = ps;
        }
    }
    protected void BackToHome(object sender, EventArgs e)
    {
        Session["id"] = id;
        Server.Transfer("home.aspx");
    }
    protected void genderBtn_Click(object sender, EventArgs e)
    {
        ConnMySql connMySql = new ConnMySql();
        string sql = "update stuInfor set gender='' where id='" + id + "'";
        MySqlDataReader myDR = connMySql.GetData(sql);
    }
    protected void ageBtn_Click(object sender, EventArgs e)
    {
        ConnMySql connMySql = new ConnMySql();
        string sql = "update stuInfor set age=-1 where id='" + id + "'";
        MySqlDataReader myDR = connMySql.GetData(sql);
    }
    protected void departmentBtn_Click(object sender, EventArgs e)
    {
        ConnMySql connMySql = new ConnMySql();
        string sql = "update stuInfor set department='' where id='" + id + "'";
        MySqlDataReader myDR = connMySql.GetData(sql);
    }
    protected void addressBtn_Click(object sender, EventArgs e)
    {
        ConnMySql connMySql = new ConnMySql();
        string sql = "update stuInfor set address='' where id='" + id + "'";
        MySqlDataReader myDR = connMySql.GetData(sql);
    }
    protected void psBtn_Click(object sender, EventArgs e)
    {
        ConnMySql connMySql = new ConnMySql();
        string sql = "update stuInfor set ps='' where id='" + id + "'";
        MySqlDataReader myDR = connMySql.GetData(sql);
    }
}
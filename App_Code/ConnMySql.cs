using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

/// <summary>
/// ConnMySql 的摘要说明
/// </summary>
public class ConnMySql
{
    public MySqlDataReader GetData(string sql) {
        string connection = "server=localhost;user id=root;password=19960412Clh;database=aspdb;pooling=true";
        MySqlConnection conn=new MySqlConnection(connection);
        //string sqlQuery="insert into usertable values('龙昕','15202000','123')";
        MySqlCommand comm=new MySqlCommand(sql,conn);
        conn.Open();
        MySqlDataReader dr=comm.ExecuteReader();
        //conn.Close();
        return dr;
    }

 
}
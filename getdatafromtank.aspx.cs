using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class getdatafromtank : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
    public string[] arr = new string[100];
    public string user="dixit@gmail.com" ;
    public string tank1="Tank1";
    //public string tank2 = "Tank2";
    public string waterlevelvalueTank1;
    //public string waterlevelvalueTank2;
    public string Waterleveldate = DateTime.Now.ToString("dd/MMM/yy");
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        waterlevelvalueTank1 = Request.QueryString["waterlevelvalue"];
        //waterlevelvalueTank2 = Request.QueryString["waterlevelvalue"];
        user = Request.QueryString["email"];
        if (user.IndexOf("@") > 0)
        {
            waterlevel.insert("WaterLevel", tank1, Waterleveldate, waterlevelvalueTank1,user);
            //waterlevel.insert("WaterLevel", tank2, Waterleveldate, waterlevelvalueTank2,user);
        }
    }
}
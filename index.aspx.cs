using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
public partial class department_index : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = GetTankData();
        //for Chart X axis alue
        var waterleveldate = dt.AsEnumerable().Select(s => s.Field<DateTime>("WaterLevelDate").ToLongDateString()).Distinct().ToArray();
        // chartlabelvalue.Value = string.Join(",", waterleveldate);

        //Tank 1 Value
        var tank1 = dt.AsEnumerable().Where(m => m.Field<string>("TankName") == "Tank1").Select(s => s.Field<decimal>("WaterLevelValue")).ToArray();
        // charttank1.Value = string.Join(",", tank1);

        //Tank 2 Value
        //var tank2 = dt.AsEnumerable().Where(m => m.Field<string>("TankName") == "Tank2").Select(s => s.Field<decimal>("WaterLevelValue")).ToArray();
        //.Value = string.Join(",", tank2);


        SqlDataAdapter adapt = new SqlDataAdapter("select * from WaterLevel", con);
        con.Open();
        adapt.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {
            gvdata.DataSource = dt;
            gvdata.DataBind();
        }  

        //Bind data to table display
       // gvdata.DataSource = dt;//.AsEnumerable().OrderBy(s => s.Field<DateTime>("WaterLevelDate"));
       //gvdata.DataBind();

        //chart1value.Value =Convert.ToString( dt.AsEnumerable().Where(m => m.Field<string>("TankName") == "Tank1").OrderByDescending(m => m.Field<int>("Id")).Select(s => s.Field<decimal>("WaterLevelValue")).ToArray()[0]/100);
        //chart2value.Value = Convert.ToString(dt.AsEnumerable().Where(m => m.Field<string>("TankName") == "Tank2").OrderByDescending(m => m.Field<int>("Id")).Select(s => s.Field<decimal>("WaterLevelValue")).ToArray()[0] / 100);

        //Retrive the Demointroduction-of-cookies on the client's pc  
        HttpCookie cookie = Request.Cookies["email"];
        HttpCookie cookie1 = Request.Cookies["username"];
        if (cookie != null || cookie1 != null)
        {
            //assign the introduction-of-cookies value on the labelk  
            lblUname.Text = cookie["email"];
            lblname.InnerText = cookie1["username"];
        }
    
    }

    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        //Redirecting with value from textbox
        Response.Redirect("/logout.aspx");
    }

    public DataTable GetTankData()
    {
        DataTable dt = new DataTable();

        try
        {

            SqlDataAdapter da = new SqlDataAdapter("Select * from WaterLevel;", con);
            con.Open();
            da.Fill(dt);
        }
        catch
        {

        }
        finally
        {
            con.Close();
        }
        return dt;
    }
   
}

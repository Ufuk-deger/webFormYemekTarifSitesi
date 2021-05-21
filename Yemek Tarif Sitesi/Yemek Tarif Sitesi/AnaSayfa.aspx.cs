using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from tbl_yemekler", bgl.baglanti());
            SqlDataReader rd = cmd.ExecuteReader();
            DataList2.DataSource = rd;
            DataList2.DataBind();
        }
    }
}
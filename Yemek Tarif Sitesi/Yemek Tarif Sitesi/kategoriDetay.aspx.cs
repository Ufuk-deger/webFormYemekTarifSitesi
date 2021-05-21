using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        sqlconnect baglanti = new sqlconnect();
        string kategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["kategoriId"];
            SqlCommand cmd = new SqlCommand("select * from tbl_yemekler where kategoriId=@a1", baglanti.baglanti());
            cmd.Parameters.AddWithValue("@a1", kategoriId);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}
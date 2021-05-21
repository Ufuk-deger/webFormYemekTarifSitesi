using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From tbl_GununYemegi", bgl.baglanti());
            SqlDataReader oku = cmd.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
            
        }
    }
}
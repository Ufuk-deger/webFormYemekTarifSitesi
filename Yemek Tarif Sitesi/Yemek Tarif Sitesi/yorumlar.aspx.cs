using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Onaylı yorumlar
            SqlCommand cmd = new SqlCommand("select * from tbl_yorumlar where yorumOnay=1",bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bgl.baglanti().Close();

            //Onaysız yorumlar
            SqlCommand cmd2 = new SqlCommand("select * from tbl_yorumlar where yorumOnay=0", bgl.baglanti());
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            bgl.baglanti().Close();

        }

        protected void buttonYorumAc_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }
        protected void buttonOnaysizYorumAc_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }
        protected void buttonYorumKapat_Click(object sender, EventArgs e)
        {    
            Panel2.Visible = false;
        }
        protected void buttonOnaysizYorumKapat_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{   
    public partial class WebForm6 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekId"];
            SqlCommand cmd = new SqlCommand("select yemekAd from tbl_yemekler where yemekId=@a1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@a1", yemekid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }

            SqlCommand cmd2 = new SqlCommand("select * from tbl_yorumlar where yemekId=@a2", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@a2", yemekid);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            bgl.baglanti().Close();
        }

        protected void butonYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbl_yorumlar (yorumadsoyad,yorummail,yorumIcerik,yemekId) values (@a1,@a2,@a3,@a4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@a1", textBoxYorumAdSoyad.Text);
            cmd.Parameters.AddWithValue("@a2", textBoxYorumMail.Text);
            cmd.Parameters.AddWithValue("@a3", textBoxYorum.Text);
            cmd.Parameters.AddWithValue("@a4", yemekid);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
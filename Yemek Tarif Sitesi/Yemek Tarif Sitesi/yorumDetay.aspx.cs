using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorumId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select yorumAdSoyad,yorumMail,yorumIcerik,yemekAd from tbl_yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekId=tbl_yemekler.yemekId where yorumId=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    textBoxAdSoyad.Text = dr[0].ToString();
                    textBoxMailAdresi.Text = dr[1].ToString();
                    textBoxIcerik.Text = dr[2].ToString();
                    textBoxYemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }

        }

        protected void buttonYorumuOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_yorumlar set yorumIcerik=@p1,yorumOnay=@p2 where yorumId=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", textBoxIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
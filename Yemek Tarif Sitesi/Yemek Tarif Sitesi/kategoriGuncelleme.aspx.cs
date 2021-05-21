using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        string kategoriId;
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriId = Request.QueryString["kategoriId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select * from tbl_kategoriler where kategoriId=@a1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@a1", kategoriId);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    textBoxKategoriAd.Text = dr[1].ToString();
                    textBoxKategoriAdet.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void buttonKategoriGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update tbl_kategoriler set kategoriAd=@a1,kategoriAdet=@a2 where kategoriId=@a3", bgl.baglanti());
            cmd.Parameters.AddWithValue("@a1", textBoxKategoriAd.Text);
            cmd.Parameters.AddWithValue("@a2", textBoxKategoriAdet.Text);
            cmd.Parameters.AddWithValue("@a3", kategoriId);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        string yemekId;
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["yemekId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("select * from tbl_yemekler where yemekId=@a1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@a1", yemekId);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    textBoxYemekAdi.Text = dr[1].ToString();
                    textBoxMalzemeler.Text = dr[2].ToString();
                    textBoxTarif.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
                if (Page.IsPostBack == false)
                {
                    SqlCommand cmd2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = cmd2.ExecuteReader();

                    dropDownListKategori.DataTextField = "kategoriAd";
                    dropDownListKategori.DataValueField = "kategoriId";
                    dropDownListKategori.DataSource = dr2;
                    dropDownListKategori.DataBind();
                }
            }
        }

        protected void buttonYemegiGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdYemekGuncelle = new SqlCommand("update tbl_yemekler set yemekAd=@p1,yemekMalzeme=@p2,yemekTarif=@p3,kategoriId=@p4 where yemekId=@p5", bgl.baglanti());
            cmdYemekGuncelle.Parameters.AddWithValue("@p1", textBoxYemekAdi.Text);
            cmdYemekGuncelle.Parameters.AddWithValue("@p2", textBoxMalzemeler.Text);
            cmdYemekGuncelle.Parameters.AddWithValue("@p3", textBoxTarif.Text);
            cmdYemekGuncelle.Parameters.AddWithValue("@p4", dropDownListKategori.SelectedValue);
            cmdYemekGuncelle.Parameters.AddWithValue("@p5", yemekId);
            cmdYemekGuncelle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
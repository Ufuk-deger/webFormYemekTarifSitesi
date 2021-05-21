using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["yemekId"];
                islem = Request.QueryString["islem"];

                SqlCommand cmd2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader dr2 = cmd2.ExecuteReader();

                dropDownListKategori.DataTextField = "kategoriAd";
                dropDownListKategori.DataValueField = "kategoriId";
                dropDownListKategori.DataSource = dr2;
                dropDownListKategori.DataBind();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;
            SqlCommand cmd = new SqlCommand("select * from tbl_yemekler", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            if (islem=="sil")
            {
                SqlCommand cmdSil = new SqlCommand("delete from tbl_yemekler where yemekId=@a1", bgl.baglanti());
                cmdSil.Parameters.AddWithValue("@a1", id);
                cmdSil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            

          
        }

        protected void panelListeAc_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void buttonListeKapat_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void btnKategroiEklemeAc_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void btnKategoriEklemeKapat_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void buttonYemegiEkle0_Click(object sender, EventArgs e)
        {
            SqlCommand cmdYemek = new SqlCommand("insert into tbl_yemekler (yemekAd,yemekMalzeme,yemekTarif,kategoriId) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            cmdYemek.Parameters.AddWithValue("@p1", textBoxYemekAd.Text);
            cmdYemek.Parameters.AddWithValue("@p2", textBoxMalzemeler.Text);
            cmdYemek.Parameters.AddWithValue("@p3", textBoxYemekTarif.Text);
            cmdYemek.Parameters.AddWithValue("@p4", dropDownListKategori.SelectedValue);
            cmdYemek.ExecuteNonQuery();
            bgl.baglanti().Close();

            //kategori sayısı artırma
            SqlCommand kategoriArtirma = new SqlCommand("update tbl_kategoriler set kategoriAdet=kategoriAdet+1 where kategoriId=@a1", bgl.baglanti());
            kategoriArtirma.Parameters.AddWithValue("@a1", dropDownListKategori.SelectedValue);
            kategoriArtirma.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
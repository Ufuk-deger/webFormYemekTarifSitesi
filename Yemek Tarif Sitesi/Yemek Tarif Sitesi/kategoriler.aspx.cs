using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        string id = "";
        string islem;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["kategoriId"];
                islem = Request.QueryString["islem"];

            }
            SqlCommand cmd = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            Panel2.Visible = false;
            Panel4.Visible = false;
            if (islem=="sil")
            {
                SqlCommand kategoriSil = new SqlCommand("delete from tbl_kategoriler where kategoriId=@a1", bgl.baglanti());
                kategoriSil.Parameters.AddWithValue("@a1", id);
                kategoriSil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }
        protected void panelListeAc_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void buttonListeKapat_Click1(object sender, EventArgs e)
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

        protected void buttonKategoriyiEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_kategoriler (kategoriAd) values(@a1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@a1", textBoxKategoriAd.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void buttonTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbl_Tarifler (tarifAd,tarifMalzeme,tarifYapilis,tarifResim,tarifSahip,tarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@t1", textBoxTarifAd.Text);
            cmd.Parameters.AddWithValue("@t2", textBoxMalzemeler.Text);
            cmd.Parameters.AddWithValue("@t3", textBoxYapilis.Text);
            cmd.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@t5", textBoxTarifSahibi.Text);
            cmd.Parameters.AddWithValue("@t6", textBoxMail.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarif Öneriniz Alınmıştır.");
        }
    }
}
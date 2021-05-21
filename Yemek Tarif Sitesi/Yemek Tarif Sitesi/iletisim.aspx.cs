using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        sqlconnect bgl = new sqlconnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonMesajGonder_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbl_Mesajlar (mesajbaslik,mesajmail,mesaj,mesajgonderen) values " +
                "(@a1,@a2,@a3,@a4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@a1", textBoxMesajBaslik.Text);
            cmd.Parameters.AddWithValue("@a2", textBoxMail.Text);
            cmd.Parameters.AddWithValue("@a3", textBoxMesaj.Text);
            cmd.Parameters.AddWithValue("a4", textBoxAdSoyad.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
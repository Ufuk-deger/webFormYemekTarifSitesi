using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarif_Sitesi
{
    public class sqlconnect
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-NMN8G0A\SQLEXPRESS;Initial Catalog=dbYemekTarif;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
    
}
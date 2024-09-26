using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cmbChuyenNganh.Items.Insert(0, "");
                cmbChuyenNganh.Items.Add("KTDTVT");
                cmbChuyenNganh.Items.Add("Y");
            }
        }




        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }


        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            TextBox1.Text = cmbChuyenNganh.SelectedValue;
        }

        protected void btnCopy_Click(object sender, EventArgs e)
        {
            TextBox2.Text = TextBox1.Text;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_Shopping_System.Data;
using Online_Shopping_System.Entities;

{
    public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Online_Shopping_System.Entities.Customer user_login = new Online_Shopping_System.Enties.Customer();
        user_login.CustomerName = txtFirstName.Text + " " + txtLastName.Text;
        user_login.EmailAddress = txtEmail.Text;
        user_login.GenderPassword = txtPassword.Text;

    }

}
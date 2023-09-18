#region Imports...
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Online_Shopping_System.Web.UI;
#endregion

public partial class CartEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "CartEdit.aspx?{0}", CartDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "CartEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "Cart.aspx");
		FormUtil.SetDefaultMode(FormView1, "CartId");
	}
}



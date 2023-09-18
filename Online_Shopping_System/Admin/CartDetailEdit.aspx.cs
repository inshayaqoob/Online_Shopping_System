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

public partial class CartDetailEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "CartDetailEdit.aspx?{0}", CartDetailDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "CartDetailEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "CartDetail.aspx");
		FormUtil.SetDefaultMode(FormView1, "CartDetailId");
	}
	protected void GridViewCart1_SelectedIndexChanged(object sender, EventArgs e)
	{
		string urlParams = string.Format("CartId={0}", GridViewCart1.SelectedDataKey.Values[0]);
		Response.Redirect("CartEdit.aspx?" + urlParams, true);		
	}	
}



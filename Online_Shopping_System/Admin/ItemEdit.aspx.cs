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

public partial class ItemEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "ItemEdit.aspx?{0}", ItemDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "ItemEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "Item.aspx");
		FormUtil.SetDefaultMode(FormView1, "ItemId");
	}
	protected void GridViewCartDetail1_SelectedIndexChanged(object sender, EventArgs e)
	{
		string urlParams = string.Format("CartDetailId={0}", GridViewCartDetail1.SelectedDataKey.Values[0]);
		Response.Redirect("CartDetailEdit.aspx?" + urlParams, true);		
	}	
	protected void GridViewCategory2_SelectedIndexChanged(object sender, EventArgs e)
	{
		string urlParams = string.Format("CategoryId={0}", GridViewCategory2.SelectedDataKey.Values[0]);
		Response.Redirect("CategoryEdit.aspx?" + urlParams, true);		
	}	
	protected void GridViewSupplier3_SelectedIndexChanged(object sender, EventArgs e)
	{
		string urlParams = string.Format("SupplierId={0}", GridViewSupplier3.SelectedDataKey.Values[0]);
		Response.Redirect("SupplierEdit.aspx?" + urlParams, true);		
	}	
}



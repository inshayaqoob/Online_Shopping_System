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

public partial class SupplierEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "SupplierEdit.aspx?{0}", SupplierDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "SupplierEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "Supplier.aspx");
		FormUtil.SetDefaultMode(FormView1, "SupplierId");
	}
}



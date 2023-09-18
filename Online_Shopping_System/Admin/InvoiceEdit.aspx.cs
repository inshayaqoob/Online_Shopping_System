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

public partial class InvoiceEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "InvoiceEdit.aspx?{0}", InvoiceDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "InvoiceEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "Invoice.aspx");
		FormUtil.SetDefaultMode(FormView1, "InvoiceId");
	}
}



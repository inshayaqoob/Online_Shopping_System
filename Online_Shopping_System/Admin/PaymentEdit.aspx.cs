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

public partial class PaymentEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "PaymentEdit.aspx?{0}", PaymentDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "PaymentEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "Payment.aspx");
		FormUtil.SetDefaultMode(FormView1, "PaymentId");
	}
	protected void GridViewInvoice1_SelectedIndexChanged(object sender, EventArgs e)
	{
		string urlParams = string.Format("InvoiceId={0}", GridViewInvoice1.SelectedDataKey.Values[0]);
		Response.Redirect("InvoiceEdit.aspx?" + urlParams, true);		
	}	
}



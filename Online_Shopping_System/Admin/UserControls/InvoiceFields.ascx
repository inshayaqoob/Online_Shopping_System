<%@ Control Language="C#" ClassName="InvoiceFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataInvoiceDate" runat="server" Text="Invoice Date:" AssociatedControlID="dataInvoiceDate" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataInvoiceDate" Text='<%# Bind("InvoiceDate", "{0:d}") %>' MaxLength="10"></asp:TextBox><asp:ImageButton ID="cal_dataInvoiceDate" runat="server" SkinID="CalendarImageButton" OnClientClick="javascript:showCalendarControl(this.previousSibling);return false;" /><asp:RequiredFieldValidator ID="ReqVal_dataInvoiceDate" runat="server" Display="Dynamic" ControlToValidate="dataInvoiceDate" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataInoiceAmount" runat="server" Text="Inoice Amount:" AssociatedControlID="dataInoiceAmount" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataInoiceAmount" Text='<%# Bind("InoiceAmount") %>'></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataInoiceAmount" runat="server" Display="Dynamic" ControlToValidate="dataInoiceAmount" ErrorMessage="Required"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegExVal_dataInoiceAmount"  runat="server" ControlToValidate="dataInoiceAmount" Display="Dynamic" ValidationExpression="^[-]?(\d{1,9})(?:[.,]\d{1,4})?$" ErrorMessage="Invalid Value" />
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataPaymentId" runat="server" Text="Payment Id:" AssociatedControlID="dataPaymentId" /></td>
        <td>
					<data:EntityDropDownList runat="server" ID="dataPaymentId" DataSourceID="PaymentIdPaymentDataSource" DataTextField="PaymentPrice" DataValueField="PaymentId" SelectedValue='<%# Bind("PaymentId") %>' AppendNullItem="true" Required="true" NullItemText="< Please Choose ...>" ErrorText="Required" />
					<data:PaymentDataSource ID="PaymentIdPaymentDataSource" runat="server" SelectMethod="GetAll"  />
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>



<%@ Control Language="C#" ClassName="PaymentFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataPaymentPrice" runat="server" Text="Payment Price:" AssociatedControlID="dataPaymentPrice" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataPaymentPrice" Text='<%# Bind("PaymentPrice") %>'></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataPaymentPrice" runat="server" Display="Dynamic" ControlToValidate="dataPaymentPrice" ErrorMessage="Required"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeVal_dataPaymentPrice" runat="server" Display="Dynamic" ControlToValidate="dataPaymentPrice" ErrorMessage="Invalid value" MaximumValue="999999999" MinimumValue="-999999999" Type="Double"></asp:RangeValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataPaymentQuantity" runat="server" Text="Payment Quantity:" AssociatedControlID="dataPaymentQuantity" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataPaymentQuantity" Text='<%# Bind("PaymentQuantity") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataPaymentQuantity" runat="server" Display="Dynamic" ControlToValidate="dataPaymentQuantity" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCustomerId" runat="server" Text="Customer Id:" AssociatedControlID="dataCustomerId" /></td>
        <td>
					<data:EntityDropDownList runat="server" ID="dataCustomerId" DataSourceID="CustomerIdCustomerDataSource" DataTextField="CustomerName" DataValueField="CustomerId" SelectedValue='<%# Bind("CustomerId") %>' AppendNullItem="true" Required="true" NullItemText="< Please Choose ...>" ErrorText="Required" />
					<data:CustomerDataSource ID="CustomerIdCustomerDataSource" runat="server" SelectMethod="GetAll"  />
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>



<%@ Control Language="C#" ClassName="CartFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataCartList" runat="server" Text="Cart List:" AssociatedControlID="dataCartList" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCartList" Text='<%# Bind("CartList") %>' MaxLength="150"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataCartList" runat="server" Display="Dynamic" ControlToValidate="dataCartList" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCustomerId" runat="server" Text="Customer Id:" AssociatedControlID="dataCustomerId" /></td>
        <td>
					<data:EntityDropDownList runat="server" ID="dataCustomerId" DataSourceID="CustomerIdCustomerDataSource" DataTextField="CustomerName" DataValueField="CustomerId" SelectedValue='<%# Bind("CustomerId") %>' AppendNullItem="true" Required="true" NullItemText="< Please Choose ...>" ErrorText="Required" />
					<data:CustomerDataSource ID="CustomerIdCustomerDataSource" runat="server" SelectMethod="GetAll"  />
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCartDetailId" runat="server" Text="Cart Detail Id:" AssociatedControlID="dataCartDetailId" /></td>
        <td>
					<data:EntityDropDownList runat="server" ID="dataCartDetailId" DataSourceID="CartDetailIdCartDetailDataSource" DataTextField="CartName" DataValueField="CartDetailId" SelectedValue='<%# Bind("CartDetailId") %>' AppendNullItem="true" Required="true" NullItemText="< Please Choose ...>" ErrorText="Required" />
					<data:CartDetailDataSource ID="CartDetailIdCartDetailDataSource" runat="server" SelectMethod="GetAll"  />
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>



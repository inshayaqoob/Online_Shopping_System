<%@ Control Language="C#" ClassName="SupplierFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataSupplierName" runat="server" Text="Supplier Name:" AssociatedControlID="dataSupplierName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataSupplierName" Text='<%# Bind("SupplierName") %>' MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataSupplierName" runat="server" Display="Dynamic" ControlToValidate="dataSupplierName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataItemId" runat="server" Text="Item Id:" AssociatedControlID="dataItemId" /></td>
        <td>
					<data:EntityDropDownList runat="server" ID="dataItemId" DataSourceID="ItemIdItemDataSource" DataTextField="ItemName" DataValueField="ItemId" SelectedValue='<%# Bind("ItemId") %>' AppendNullItem="true" Required="false" NullItemText="< Please Choose ...>" />
					<data:ItemDataSource ID="ItemIdItemDataSource" runat="server" SelectMethod="GetAll"  />
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>



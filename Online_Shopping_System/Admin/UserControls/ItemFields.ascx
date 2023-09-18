<%@ Control Language="C#" ClassName="ItemFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataItemName" runat="server" Text="Item Name:" AssociatedControlID="dataItemName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataItemName" Text='<%# Bind("ItemName") %>' MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataItemName" runat="server" Display="Dynamic" ControlToValidate="dataItemName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataItemQuantity" runat="server" Text="Item Quantity:" AssociatedControlID="dataItemQuantity" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataItemQuantity" Text='<%# Bind("ItemQuantity") %>'></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataItemQuantity" runat="server" Display="Dynamic" ControlToValidate="dataItemQuantity" ErrorMessage="Required"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeVal_dataItemQuantity" runat="server" Display="Dynamic" ControlToValidate="dataItemQuantity" ErrorMessage="Invalid value" MaximumValue="999999999" MinimumValue="-999999999" Type="Double"></asp:RangeValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCategoryId" runat="server" Text="Category Id:" AssociatedControlID="dataCategoryId" /></td>
        <td>
					<data:EntityDropDownList runat="server" ID="dataCategoryId" DataSourceID="CategoryIdCategoryDataSource" DataTextField="CategoryName" DataValueField="CategoryId" SelectedValue='<%# Bind("CategoryId") %>' AppendNullItem="true" Required="true" NullItemText="< Please Choose ...>" ErrorText="Required" />
					<data:CategoryDataSource ID="CategoryIdCategoryDataSource" runat="server" SelectMethod="GetAll"  />
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>



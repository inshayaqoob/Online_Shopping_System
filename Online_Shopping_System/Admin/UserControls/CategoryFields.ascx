<%@ Control Language="C#" ClassName="CategoryFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataCategoryName" runat="server" Text="Category Name:" AssociatedControlID="dataCategoryName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCategoryName" Text='<%# Bind("CategoryName") %>' MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataCategoryName" runat="server" Display="Dynamic" ControlToValidate="dataCategoryName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>



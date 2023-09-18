<%@ Control Language="C#" ClassName="CartDetailFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataCartName" runat="server" Text="Cart Name:" AssociatedControlID="dataCartName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCartName" Text='<%# Bind("CartName") %>' MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataCartName" runat="server" Display="Dynamic" ControlToValidate="dataCartName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>



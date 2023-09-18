<%@ Control Language="C#" ClassName="CustomerFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataCustomerName" runat="server" Text="Customer Name:" AssociatedControlID="dataCustomerName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCustomerName" Text='<%# Bind("CustomerName") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataCustomerName" runat="server" Display="Dynamic" ControlToValidate="dataCustomerName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataEmailAddress" runat="server" Text="Email Address:" AssociatedControlID="dataEmailAddress" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataEmailAddress" Text='<%# Bind("EmailAddress") %>' MaxLength="100"></asp:TextBox>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCustomerAddress" runat="server" Text="Customer Address:" AssociatedControlID="dataCustomerAddress" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCustomerAddress" Text='<%# Bind("CustomerAddress") %>'  TextMode="MultiLine"  Width="250px" Rows="5"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataCustomerAddress" runat="server" Display="Dynamic" ControlToValidate="dataCustomerAddress" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCustomerPhone" runat="server" Text="Customer Phone:" AssociatedControlID="dataCustomerPhone" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCustomerPhone" Text='<%# Bind("CustomerPhone") %>' MaxLength="80"></asp:TextBox>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataGender" runat="server" Text="Gender:" AssociatedControlID="dataGender" /></td>
        <td>
					<asp:RadioButtonList runat="server" ID="dataGender" SelectedValue='<%# Bind("Gender") %>' RepeatDirection="Horizontal"><asp:ListItem Value="True" Text="Yes" Selected="True"></asp:ListItem><asp:ListItem Value="False" Text="No"></asp:ListItem></asp:RadioButtonList>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataCustomerPassword" runat="server" Text="Customer Password:" AssociatedControlID="dataCustomerPassword" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCustomerPassword" Text='<%# Bind("CustomerPassword") %>' MaxLength="70"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataCustomerPassword" runat="server" Display="Dynamic" ControlToValidate="dataCustomerPassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>



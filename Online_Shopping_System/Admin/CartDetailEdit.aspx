<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="CartDetailEdit.aspx.cs" Inherits="CartDetailEdit" Title="CartDetail Edit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Cart Detail - Add/Edit</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:MultiFormView ID="FormView1" DataKeyNames="CartDetailId" runat="server" DataSourceID="CartDetailDataSource">
		
			<EditItemTemplatePaths>
				<data:TemplatePath Path="~/Admin/UserControls/CartDetailFields.ascx" />
			</EditItemTemplatePaths>
		
			<InsertItemTemplatePaths>
				<data:TemplatePath Path="~/Admin/UserControls/CartDetailFields.ascx" />
			</InsertItemTemplatePaths>
		
			<EmptyDataTemplate>
				<b>CartDetail not found!</b>
			</EmptyDataTemplate>
			
			<FooterTemplate>
				<asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
				<asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
				<asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
			</FooterTemplate>

		</data:MultiFormView>
		
		<data:CartDetailDataSource ID="CartDetailDataSource" runat="server"
			SelectMethod="GetByCartDetailId"
		>
			<Parameters>
				<asp:QueryStringParameter Name="CartDetailId" QueryStringField="CartDetailId" Type="String" />

			</Parameters>
		</data:CartDetailDataSource>
		
		<br />

		<data:EntityGridView ID="GridViewCart1" runat="server"
			AutoGenerateColumns="False"	
			OnSelectedIndexChanged="GridViewCart1_SelectedIndexChanged"			 			 
			DataSourceID="CartDataSource1"
			DataKeyNames="CartId"
			AllowMultiColumnSorting="false"
			DefaultSortColumnName="" 
			DefaultSortDirection="Ascending"	
			ExcelExportFileName="Export_Cart.xls"  		
			Visible='<%# (FormView1.DefaultMode == FormViewMode.Insert) ? false : true %>'	
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<asp:BoundField DataField="CartList" HeaderText="Cart List" SortExpression="[Cart_List]" />				
				<data:HyperLinkField HeaderText="Customer Id" DataNavigateUrlFormatString="CustomerEdit.aspx?CustomerId={0}" DataNavigateUrlFields="CustomerId" DataContainer="CustomerIdSource" DataTextField="CustomerName" />
				<data:HyperLinkField HeaderText="Cart Detail Id" DataNavigateUrlFormatString="CartDetailEdit.aspx?CartDetailId={0}" DataNavigateUrlFields="CartDetailId" DataContainer="CartDetailIdSource" DataTextField="CartName" />
			</Columns>
			<EmptyDataTemplate>
				<b>No Cart Found! </b>
				<asp:HyperLink runat="server" ID="hypCart" NavigateUrl="~/admin/CartEdit.aspx">Add New</asp:HyperLink>
			</EmptyDataTemplate>
		</data:EntityGridView>					
		
		<data:CartDataSource ID="CartDataSource1" runat="server" SelectMethod="Find"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:CartProperty Name="CartDetail"/> 
					<data:CartProperty Name="Customer"/> 
				</Types>
			</DeepLoadProperties>
			
		    <Parameters>
				<data:SqlParameter Name="Parameters">
					<Filters>
						<data:CartFilter  Column="CartDetailId" QueryStringField="CartDetailId" /> 
					</Filters>
				</data:SqlParameter>
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" /> 
		    </Parameters>
		</data:CartDataSource>		
		
		<br />
		

</asp:Content>


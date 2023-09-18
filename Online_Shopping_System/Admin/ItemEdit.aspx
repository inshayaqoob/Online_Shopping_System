<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="ItemEdit.aspx.cs" Inherits="ItemEdit" Title="Item Edit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Item - Add/Edit</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:MultiFormView ID="FormView1" DataKeyNames="ItemId" runat="server" DataSourceID="ItemDataSource">
		
			<EditItemTemplatePaths>
				<data:TemplatePath Path="~/Admin/UserControls/ItemFields.ascx" />
			</EditItemTemplatePaths>
		
			<InsertItemTemplatePaths>
				<data:TemplatePath Path="~/Admin/UserControls/ItemFields.ascx" />
			</InsertItemTemplatePaths>
		
			<EmptyDataTemplate>
				<b>Item not found!</b>
			</EmptyDataTemplate>
			
			<FooterTemplate>
				<asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
				<asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
				<asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
			</FooterTemplate>

		</data:MultiFormView>
		
		<data:ItemDataSource ID="ItemDataSource" runat="server"
			SelectMethod="GetByItemId"
		>
			<Parameters>
				<asp:QueryStringParameter Name="ItemId" QueryStringField="ItemId" Type="String" />

			</Parameters>
		</data:ItemDataSource>
		
		<br />

		<data:EntityGridView ID="GridViewCartDetail1" runat="server"
			AutoGenerateColumns="False"	
			OnSelectedIndexChanged="GridViewCartDetail1_SelectedIndexChanged"			 			 
			DataSourceID="CartDetailDataSource1"
			DataKeyNames="CartDetailId"
			AllowMultiColumnSorting="false"
			DefaultSortColumnName="" 
			DefaultSortDirection="Ascending"	
			ExcelExportFileName="Export_CartDetail.xls"  		
			Visible='<%# (FormView1.DefaultMode == FormViewMode.Insert) ? false : true %>'	
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<asp:BoundField DataField="CartName" HeaderText="Cart Name" SortExpression="[Cart_Name]" />				
				<data:HyperLinkField HeaderText="Item Id" DataNavigateUrlFormatString="ItemEdit.aspx?ItemId={0}" DataNavigateUrlFields="ItemId" DataContainer="ItemIdSource" DataTextField="ItemName" />
			</Columns>
			<EmptyDataTemplate>
				<b>No Cart Detail Found! </b>
				<asp:HyperLink runat="server" ID="hypCartDetail" NavigateUrl="~/admin/CartDetailEdit.aspx">Add New</asp:HyperLink>
			</EmptyDataTemplate>
		</data:EntityGridView>					
		
		<data:CartDetailDataSource ID="CartDetailDataSource1" runat="server" SelectMethod="Find"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:CartDetailProperty Name="CartCollection"/> 
					<%--<data:CartDetailProperty Name="CartCollection" />--%>
				</Types>
			</DeepLoadProperties>
			
		    <Parameters>
				<data:SqlParameter Name="Parameters">
					<Filters>
						<data:CartDetailFilter  Column="CartDetailId" QueryStringField="ItemId" /> 
					</Filters>
				</data:SqlParameter>
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" /> 
		    </Parameters>
		</data:CartDetailDataSource>		
		
		<br />
		<data:EntityGridView ID="GridViewCategory2" runat="server"
			AutoGenerateColumns="False"	
			OnSelectedIndexChanged="GridViewCategory2_SelectedIndexChanged"			 			 
			DataSourceID="CategoryDataSource2"
			DataKeyNames="CategoryId"
			AllowMultiColumnSorting="false"
			DefaultSortColumnName="" 
			DefaultSortDirection="Ascending"	
			ExcelExportFileName="Export_Category.xls"  		
			Visible='<%# (FormView1.DefaultMode == FormViewMode.Insert) ? false : true %>'	
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<asp:BoundField DataField="CategoryName" HeaderText="Category Name" SortExpression="[Category_Name]" />				
				<data:HyperLinkField HeaderText="Item Id" DataNavigateUrlFormatString="ItemEdit.aspx?ItemId={0}" DataNavigateUrlFields="ItemId" DataContainer="ItemIdSource" DataTextField="ItemName" />
			</Columns>
			<EmptyDataTemplate>
				<b>No Category Found! </b>
				<asp:HyperLink runat="server" ID="hypCategory" NavigateUrl="~/admin/CategoryEdit.aspx">Add New</asp:HyperLink>
			</EmptyDataTemplate>
		</data:EntityGridView>					
		
		<data:CategoryDataSource ID="CategoryDataSource2" runat="server" SelectMethod="Find"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:CategoryProperty Name="ItemCollection"/> 
				</Types>
			</DeepLoadProperties>
			
		    <Parameters>
				<data:SqlParameter Name="Parameters">
					<Filters>
						<data:CategoryFilter  Column="CategoryId" QueryStringField="ItemId" /> 
					</Filters>
				</data:SqlParameter>
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" /> 
		    </Parameters>
		</data:CategoryDataSource>		
		
		<br />
		<data:EntityGridView ID="GridViewSupplier3" runat="server"
			AutoGenerateColumns="False"	
			OnSelectedIndexChanged="GridViewSupplier3_SelectedIndexChanged"			 			 
			DataSourceID="SupplierDataSource3"
			DataKeyNames="SupplierId"
			AllowMultiColumnSorting="false"
			DefaultSortColumnName="" 
			DefaultSortDirection="Ascending"	
			ExcelExportFileName="Export_Supplier.xls"  		
			Visible='<%# (FormView1.DefaultMode == FormViewMode.Insert) ? false : true %>'	
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<asp:BoundField DataField="SupplierName" HeaderText="Supplier Name" SortExpression="[Supplier_Name]" />				
				<data:HyperLinkField HeaderText="Item Id" DataNavigateUrlFormatString="ItemEdit.aspx?ItemId={0}" DataNavigateUrlFields="ItemId" DataContainer="ItemIdSource" DataTextField="ItemName" />
			</Columns>
			<EmptyDataTemplate>
				<b>No Supplier Found! </b>
				<asp:HyperLink runat="server" ID="hypSupplier" NavigateUrl="~/admin/SupplierEdit.aspx">Add New</asp:HyperLink>
			</EmptyDataTemplate>
		</data:EntityGridView>					
		
		<data:SupplierDataSource ID="SupplierDataSource3" runat="server" SelectMethod="Find"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:SupplierProperty Name="Item"/> 
				</Types>
			</DeepLoadProperties>
			
		    <Parameters>
				<data:SqlParameter Name="Parameters">
					<Filters>
						<data:SupplierFilter  Column="ItemId" QueryStringField="ItemId" /> 
					</Filters>
				</data:SqlParameter>
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" /> 
		    </Parameters>
		</data:SupplierDataSource>		
		
		<br />
		

</asp:Content>


<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="Cart.aspx.cs" Inherits="Cart" Title="Cart List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Cart List</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:GridViewSearchPanel ID="GridViewSearchPanel1" runat="server" GridViewControlID="GridView1" PersistenceMethod="Session" />
		<br />
		<data:EntityGridView ID="GridView1" runat="server"			
				AutoGenerateColumns="False"					
				OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
				DataSourceID="CartDataSource"
				DataKeyNames="CartId"
				AllowMultiColumnSorting="false"
				DefaultSortColumnName="" 
				DefaultSortDirection="Ascending"	
				ExcelExportFileName="Export_Cart.xls"  		
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" ShowEditButton="True" />				
				<asp:BoundField DataField="CartList" HeaderText="Cart List" SortExpression="[Cart_List]"  />
				<data:HyperLinkField HeaderText="Customer Id" DataNavigateUrlFormatString="CustomerEdit.aspx?CustomerId={0}" DataNavigateUrlFields="CustomerId" DataContainer="CustomerIdSource" DataTextField="CustomerName" />
				<data:HyperLinkField HeaderText="Cart Detail Id" DataNavigateUrlFormatString="CartDetailEdit.aspx?CartDetailId={0}" DataNavigateUrlFields="CartDetailId" DataContainer="CartDetailIdSource" DataTextField="CartName" />
			</Columns>
			<EmptyDataTemplate>
				<b>No Cart Found!</b>
			</EmptyDataTemplate>
		</data:EntityGridView>
		<br />
		<asp:Button runat="server" ID="btnCart" OnClientClick="javascript:location.href='CartEdit.aspx'; return false;" Text="Add New"></asp:Button>
		<data:CartDataSource ID="CartDataSource" runat="server"
			SelectMethod="GetPaged"
			EnablePaging="True"
			EnableSorting="True"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:CartProperty Name="CartDetail"/> 
					<data:CartProperty Name="Customer"/> 
				</Types>
			</DeepLoadProperties>
			<Parameters>
				<data:CustomParameter Name="WhereClause" Value="" ConvertEmptyStringToNull="false" />
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" />
				<asp:ControlParameter Name="PageIndex" ControlID="GridView1" PropertyName="PageIndex" Type="Int32" />
				<asp:ControlParameter Name="PageSize" ControlID="GridView1" PropertyName="PageSize" Type="Int32" />
				<data:CustomParameter Name="RecordCount" Value="0" Type="Int32" />
			</Parameters>
		</data:CartDataSource>
	    		
</asp:Content>




<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="Customer.aspx.cs" Inherits="Customer" Title="Customer List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Customer List</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:GridViewSearchPanel ID="GridViewSearchPanel1" runat="server" GridViewControlID="GridView1" PersistenceMethod="Session" />
		<br />
		<data:EntityGridView ID="GridView1" runat="server"			
				AutoGenerateColumns="False"					
				OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
				DataSourceID="CustomerDataSource"
				DataKeyNames="CustomerId"
				AllowMultiColumnSorting="false"
				DefaultSortColumnName="" 
				DefaultSortDirection="Ascending"	
				ExcelExportFileName="Export_Customer.xls"  		
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" ShowEditButton="True" />				
				<asp:BoundField DataField="CustomerName" HeaderText="Customer Name" SortExpression="[Customer_Name]"  />
				<asp:BoundField DataField="EmailAddress" HeaderText="Email Address" SortExpression="[Email_Address]"  />
				<asp:BoundField DataField="CustomerAddress" HeaderText="Customer Address" SortExpression="[Customer_Address]"  />
				<asp:BoundField DataField="CustomerPhone" HeaderText="Customer Phone" SortExpression="[Customer_Phone]"  />
				<data:BoundRadioButtonField DataField="Gender" HeaderText="Gender" SortExpression="[Gender]"  />
				<asp:BoundField DataField="CustomerPassword" HeaderText="Customer Password" SortExpression="[Customer_Password]"  />
			</Columns>
			<EmptyDataTemplate>
				<b>No Customer Found!</b>
			</EmptyDataTemplate>
		</data:EntityGridView>
		<br />
		<asp:Button runat="server" ID="btnCustomer" OnClientClick="javascript:location.href='CustomerEdit.aspx'; return false;" Text="Add New"></asp:Button>
		<data:CustomerDataSource ID="CustomerDataSource" runat="server"
			SelectMethod="GetPaged"
			EnablePaging="True"
			EnableSorting="True"
		>
			<Parameters>
				<data:CustomParameter Name="WhereClause" Value="" ConvertEmptyStringToNull="false" />
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" />
				<asp:ControlParameter Name="PageIndex" ControlID="GridView1" PropertyName="PageIndex" Type="Int32" />
				<asp:ControlParameter Name="PageSize" ControlID="GridView1" PropertyName="PageSize" Type="Int32" />
				<data:CustomParameter Name="RecordCount" Value="0" Type="Int32" />
			</Parameters>
		</data:CustomerDataSource>
	    		
</asp:Content>




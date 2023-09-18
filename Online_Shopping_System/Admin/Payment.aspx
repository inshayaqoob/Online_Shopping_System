<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="Payment.aspx.cs" Inherits="Payment" Title="Payment List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Payment List</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:GridViewSearchPanel ID="GridViewSearchPanel1" runat="server" GridViewControlID="GridView1" PersistenceMethod="Session" />
		<br />
		<data:EntityGridView ID="GridView1" runat="server"			
				AutoGenerateColumns="False"					
				OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
				DataSourceID="PaymentDataSource"
				DataKeyNames="PaymentId"
				AllowMultiColumnSorting="false"
				DefaultSortColumnName="" 
				DefaultSortDirection="Ascending"	
				ExcelExportFileName="Export_Payment.xls"  		
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" ShowEditButton="True" />				
				<asp:BoundField DataField="PaymentPrice" HeaderText="Payment Price" SortExpression="[Payment_Price]"  />
				<asp:BoundField DataField="PaymentQuantity" HeaderText="Payment Quantity" SortExpression="[Payment_Quantity]"  />
				<data:HyperLinkField HeaderText="Customer Id" DataNavigateUrlFormatString="CustomerEdit.aspx?CustomerId={0}" DataNavigateUrlFields="CustomerId" DataContainer="CustomerIdSource" DataTextField="CustomerName" />
			</Columns>
			<EmptyDataTemplate>
				<b>No Payment Found!</b>
			</EmptyDataTemplate>
		</data:EntityGridView>
		<br />
		<asp:Button runat="server" ID="btnPayment" OnClientClick="javascript:location.href='PaymentEdit.aspx'; return false;" Text="Add New"></asp:Button>
		<data:PaymentDataSource ID="PaymentDataSource" runat="server"
			SelectMethod="GetPaged"
			EnablePaging="True"
			EnableSorting="True"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:PaymentProperty Name="Customer"/> 
					<%--<data:PaymentProperty Name="InvoiceCollection" />--%>
				</Types>
			</DeepLoadProperties>
			<Parameters>
				<data:CustomParameter Name="WhereClause" Value="" ConvertEmptyStringToNull="false" />
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" />
				<asp:ControlParameter Name="PageIndex" ControlID="GridView1" PropertyName="PageIndex" Type="Int32" />
				<asp:ControlParameter Name="PageSize" ControlID="GridView1" PropertyName="PageSize" Type="Int32" />
				<data:CustomParameter Name="RecordCount" Value="0" Type="Int32" />
			</Parameters>
		</data:PaymentDataSource>
	    		
</asp:Content>




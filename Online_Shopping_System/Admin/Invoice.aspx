<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="Invoice.aspx.cs" Inherits="Invoice" Title="Invoice List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Invoice List</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:GridViewSearchPanel ID="GridViewSearchPanel1" runat="server" GridViewControlID="GridView1" PersistenceMethod="Session" />
		<br />
		<data:EntityGridView ID="GridView1" runat="server"			
				AutoGenerateColumns="False"					
				OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
				DataSourceID="InvoiceDataSource"
				DataKeyNames="InvoiceId"
				AllowMultiColumnSorting="false"
				DefaultSortColumnName="" 
				DefaultSortDirection="Ascending"	
				ExcelExportFileName="Export_Invoice.xls"  		
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" ShowEditButton="True" />				
				<asp:BoundField DataField="InvoiceDate" DataFormatString="{0:d}" HtmlEncode="False" HeaderText="Invoice Date" SortExpression="[Invoice_Date]"  />
				<asp:BoundField DataField="InoiceAmount" HeaderText="Inoice Amount" SortExpression="[Inoice_Amount]"  />
				<data:HyperLinkField HeaderText="Payment Id" DataNavigateUrlFormatString="PaymentEdit.aspx?PaymentId={0}" DataNavigateUrlFields="PaymentId" DataContainer="PaymentIdSource" DataTextField="PaymentPrice" />
			</Columns>
			<EmptyDataTemplate>
				<b>No Invoice Found!</b>
			</EmptyDataTemplate>
		</data:EntityGridView>
		<br />
		<asp:Button runat="server" ID="btnInvoice" OnClientClick="javascript:location.href='InvoiceEdit.aspx'; return false;" Text="Add New"></asp:Button>
		<data:InvoiceDataSource ID="InvoiceDataSource" runat="server"
			SelectMethod="GetPaged"
			EnablePaging="True"
			EnableSorting="True"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:InvoiceProperty Name="Payment"/> 
				</Types>
			</DeepLoadProperties>
			<Parameters>
				<data:CustomParameter Name="WhereClause" Value="" ConvertEmptyStringToNull="false" />
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" />
				<asp:ControlParameter Name="PageIndex" ControlID="GridView1" PropertyName="PageIndex" Type="Int32" />
				<asp:ControlParameter Name="PageSize" ControlID="GridView1" PropertyName="PageSize" Type="Int32" />
				<data:CustomParameter Name="RecordCount" Value="0" Type="Int32" />
			</Parameters>
		</data:InvoiceDataSource>
	    		
</asp:Content>




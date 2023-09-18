<%@ Page Language="C#" Theme="Default" MasterPageFile="~/MasterPages/admin.master" AutoEventWireup="true"  CodeFile="PaymentEdit.aspx.cs" Inherits="PaymentEdit" Title="Payment Edit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">Payment - Add/Edit</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<data:MultiFormView ID="FormView1" DataKeyNames="PaymentId" runat="server" DataSourceID="PaymentDataSource">
		
			<EditItemTemplatePaths>
				<data:TemplatePath Path="~/Admin/UserControls/PaymentFields.ascx" />
			</EditItemTemplatePaths>
		
			<InsertItemTemplatePaths>
				<data:TemplatePath Path="~/Admin/UserControls/PaymentFields.ascx" />
			</InsertItemTemplatePaths>
		
			<EmptyDataTemplate>
				<b>Payment not found!</b>
			</EmptyDataTemplate>
			
			<FooterTemplate>
				<asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
				<asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
				<asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
			</FooterTemplate>

		</data:MultiFormView>
		
		<data:PaymentDataSource ID="PaymentDataSource" runat="server"
			SelectMethod="GetByPaymentId"
		>
			<Parameters>
				<asp:QueryStringParameter Name="PaymentId" QueryStringField="PaymentId" Type="String" />

			</Parameters>
		</data:PaymentDataSource>
		
		<br />

		<data:EntityGridView ID="GridViewInvoice1" runat="server"
			AutoGenerateColumns="False"	
			OnSelectedIndexChanged="GridViewInvoice1_SelectedIndexChanged"			 			 
			DataSourceID="InvoiceDataSource1"
			DataKeyNames="InvoiceId"
			AllowMultiColumnSorting="false"
			DefaultSortColumnName="" 
			DefaultSortDirection="Ascending"	
			ExcelExportFileName="Export_Invoice.xls"  		
			Visible='<%# (FormView1.DefaultMode == FormViewMode.Insert) ? false : true %>'	
			>
			<Columns>
				<asp:CommandField ShowSelectButton="True" />
				<asp:BoundField DataField="InvoiceDate" HeaderText="Invoice Date" SortExpression="[Invoice_Date]" />				
				<asp:BoundField DataField="InoiceAmount" HeaderText="Inoice Amount" SortExpression="[Inoice_Amount]" />				
				<data:HyperLinkField HeaderText="Payment Id" DataNavigateUrlFormatString="PaymentEdit.aspx?PaymentId={0}" DataNavigateUrlFields="PaymentId" DataContainer="PaymentIdSource" DataTextField="PaymentPrice" />
			</Columns>
			<EmptyDataTemplate>
				<b>No Invoice Found! </b>
				<asp:HyperLink runat="server" ID="hypInvoice" NavigateUrl="~/admin/InvoiceEdit.aspx">Add New</asp:HyperLink>
			</EmptyDataTemplate>
		</data:EntityGridView>					
		
		<data:InvoiceDataSource ID="InvoiceDataSource1" runat="server" SelectMethod="Find"
			EnableDeepLoad="True"
			>
			<DeepLoadProperties Method="IncludeChildren" Recursive="False">
	            <Types>
					<data:InvoiceProperty Name="Payment"/> 
				</Types>
			</DeepLoadProperties>
			
		    <Parameters>
				<data:SqlParameter Name="Parameters">
					<Filters>
						<data:InvoiceFilter  Column="PaymentId" QueryStringField="PaymentId" /> 
					</Filters>
				</data:SqlParameter>
				<data:CustomParameter Name="OrderByClause" Value="" ConvertEmptyStringToNull="false" /> 
		    </Parameters>
		</data:InvoiceDataSource>		
		
		<br />
		

</asp:Content>


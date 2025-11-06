<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calcular.aspx.cs" Inherits="Bhaskara.Calcular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="row g-3 align-items-center">
		<div class="col-auto">
			<label class="col-form-label">Digite o valor para A:</label>
		</div>
		<div class="col-auto">
			<asp:TextBox ID="TxtA" runat="server" CssClass="form-control" />
		</div>
	</div>
	<br />
	<div class="row g-3 align-items-center">
		<div class="col-auto">
			<label class="col-form-label">Digite o valor de B:</label>
		</div>
		<div class="col-auto">
			<asp:TextBox ID="TxtB" runat="server" CssClass="form-control" />
		</div>
	</div>
	<br />
	<div class="row g-3 align-items-center">
		<div class="col-auto">
			<label class="col-form-label">Digite o valor de C:</label>
		</div>
		<div class="col-auto">
			<asp:TextBox ID="TxtC" runat="server" CssClass="form-control" />
		</div>
		<div class="col-auto">
			<asp:Button ID="btnCalcular" runat="server" CssClass="btn btn-primary" Text="Resposta" OnClick="btnCalcular_Click" />
		</div>
	</div>

	<asp:Label ID="lblResultado" runat="server" Text="RESPOSTA" CssClass="mt-3 d-block"></asp:Label>
</asp:Content>

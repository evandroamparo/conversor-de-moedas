<%@ Page Title="Sobre | Conversor de moedas" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
   CodeBehind="About.aspx.cs" Inherits="ConversorDeMoedas.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   <h2>
      Sobre
   </h2>
   <p>
      Sistema de conversão de moedas.
   </p>
   <h3>
      Aviso</h3>
   <p>
      <span class="bold">Este sistema tem caráter didático e realiza conversões entre diferentes
         moedas utilizando o serviço em <a href="http://www.webservicex.net/CurrencyConvertor.asmx"
            target="_blank">http://www.webservicex.net/CurrencyConvertor.asmx</a>. Os resultados
         podem não estar corretos e/ou atualizados.</span>
   </p>
</asp:Content>

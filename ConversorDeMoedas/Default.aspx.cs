using System;
using System.Globalization;
using ConversorDeMoedas.ServicoConversao;

namespace ConversorDeMoedas
{
   public partial class _Default : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {

      }

      protected void btnConverter_Click(object sender, EventArgs e)
      {
         if (Page.IsPostBack && !Page.IsValid)
            return;

         try
         {
            string valorOrigem = txtValor.Text.Replace(",", CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator);
            Currency moedaOrigem = (Currency)Enum.Parse(typeof(Currency), ddlOrigem.SelectedValue);
            Currency moedaDestino = (Currency)Enum.Parse(typeof(Currency), ddlDestino.SelectedValue);

            CurrencyConvertor proxy = new CurrencyConvertor();
            double taxaDeCambio = proxy.ConversionRate(moedaOrigem, moedaDestino);
            double resultado = ConversorMoeda.Converter(Convert.ToDouble(valorOrigem), taxaDeCambio);

            lblResultado.Text = string.Format("{0:n2} {1} = {2:n2} {3}", 
                                              txtValor.Text, ddlOrigem.Text, resultado, ddlDestino.Text);
            lblResultado.Visible = true;
         }
         catch (Exception)
         {
            lblResultado.Text = "Erro ao realizar a conversão.";
         }
      }
   }
}

using System;
using System.Globalization;
using ConversorDeMoedas.ServicoConversao;

namespace ConversorDeMoedas
{
   public partial class _Default : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {
         rvValor.MinimumValue = (0.01).ToString();
      }

      protected void btnConverter_Click(object sender, EventArgs e)
      {
         try
         {
            var moedaOrigem = (Currency)Enum.Parse(typeof(Currency), ddlOrigem.SelectedValue);
            var moedaDestino = (Currency)Enum.Parse(typeof(Currency), ddlDestino.SelectedValue);

            CurrencyConvertor proxy = new CurrencyConvertor();
            var taxaDeCambio = proxy.ConversionRate(moedaOrigem, moedaDestino);
            var resultado = ConversorMoeda.Converter(Convert.ToDouble(txtValor.Text), taxaDeCambio);
            lblResultado.Text = string.Format("{0:n2} {1}", resultado, moedaDestino);
            lblResultado.Visible = true;
         }
         catch (Exception)
         {
            lblResultado.Text = "Erro ao realizar a conversão.";
         }
      }
   }
}

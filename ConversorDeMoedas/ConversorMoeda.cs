namespace ConversorDeMoedas
{
   public class ConversorMoeda
   {
      public static double Converter(double valor, double taxaDeCambio)
      {
         return valor * taxaDeCambio;
      }
   }
}
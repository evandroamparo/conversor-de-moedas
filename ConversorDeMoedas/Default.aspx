<%@ Page Title="Início | Conversor de moedas" Language="C#" MasterPageFile="~/Site.master"
   AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConversorDeMoedas._Default"
   EnableViewState="False" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
   <script src="Scripts/utils.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   <h2>
      Converta entre moedas de dezenas de paízes
   </h2>
   <br />
   <label for="txtValor">
      Eu quero converter o valor:</label>
   <br />
   <asp:TextBox runat="server" ID="txtValor" MaxLength="10" onkeypress="return(MascaraMoeda(this,'',',',event))" />
   <asp:RequiredFieldValidator ID="rfvValor" runat="server" 
      ErrorMessage="Campo obrigatório." Display="Dynamic"
      ControlToValidate="txtValor" Font-Bold="False" ForeColor="Red" 
   SetFocusOnError="True"></asp:RequiredFieldValidator>
   <asp:CompareValidator ID="cvValor" runat="server" 
   ControlToValidate="txtValor" Display="Dynamic"
      ErrorMessage="Deve ser um número real." Operator="DataTypeCheck" 
      Type="Double" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
   <asp:RangeValidator ID="rvValor" runat="server" 
   ErrorMessage="Deve ser um número positivo." ControlToValidate="txtValor" 
   ForeColor="Red" MaximumValue="10000000000" SetFocusOnError="True" 
   Type="Double" MinimumValue="0" Display="Dynamic"></asp:RangeValidator>
   <br />
   <label>
      Da moeda:</label>
   <br />
   <asp:DropDownList runat="server" ID="ddlOrigem">
      <asp:ListItem Text="AFA-Afghanistan Afghani" Value="AFA" />
      <asp:ListItem Text="ALL-Albanian Lek" Value="ALL" />
      <asp:ListItem Text="DZD-Algerian Dinar" Value="DZD" />
      <asp:ListItem Text="ARS-Argentine Peso" Value="ARS" />
      <asp:ListItem Text="AWG-Aruba Florin" Value="AWG" />
      <asp:ListItem Text="AUD-Australian Dollar" Value="AUD" />
      <asp:ListItem Text="BSD-Bahamian Dollar" Value="BSD" />
      <asp:ListItem Text="BHD-Bahraini Dinar" Value="BHD" />
      <asp:ListItem Text="BDT-Bangladesh Taka" Value="BDT" />
      <asp:ListItem Text="BBD-Barbados Dollar" Value="BBD" />
      <asp:ListItem Text="BZD-Belize Dollar" Value="BZD" />
      <asp:ListItem Text="BMD-Bermuda Dollar" Value="BMD" />
      <asp:ListItem Text="BTN-Bhutan Ngultrum" Value="BTN" />
      <asp:ListItem Text="BOB-Bolivian Boliviano" Value="BOB" />
      <asp:ListItem Text="BWP-Botswana Pula" Value="BWP" />
      <asp:ListItem Text="BRL-Brazilian Real" Value="BRL" />
      <asp:ListItem Text="GBP-British Pound" Value="GBP" />
      <asp:ListItem Text="BND-Brunei Dollar" Value="BND" />
      <asp:ListItem Text="BIF-Burundi Franc" Value="BIF" />
      <asp:ListItem Text="XOF-CFA Franc (BCEAO)" Value="XOF" />
      <asp:ListItem Text="XAF-CFA Franc (BEAC)" Value="XAF" />
      <asp:ListItem Text="KHR-Cambodia Riel" Value="KHR" />
      <asp:ListItem Text="CAD-Canadian Dollar" Value="CAD" />
      <asp:ListItem Text="CVE-Cape Verde Escudo" Value="CVE" />
      <asp:ListItem Text="KYD-Cayman Islands Dollar" Value="KYD" />
      <asp:ListItem Text="CLP-Chilean Peso" Value="CLP" />
      <asp:ListItem Text="CNY-Chinese Yuan" Value="CNY" />
      <asp:ListItem Text="COP-Colombian Peso" Value="COP" />
      <asp:ListItem Text="KMF-Comoros Franc" Value="KMF" />
      <asp:ListItem Text="CRC-Costa Rica Colon" Value="CRC" />
      <asp:ListItem Text="HRK-Croatian Kuna" Value="HRK" />
      <asp:ListItem Text="CUP-Cuban Peso" Value="CUP" />
      <asp:ListItem Text="CYP-Cyprus Pound" Value="CYP" />
      <asp:ListItem Text="CZK-Czech Koruna" Value="CZK" />
      <asp:ListItem Text="DKK-Danish Krone" Value="DKK" />
      <asp:ListItem Text="DJF-Dijibouti Franc" Value="DJF" />
      <asp:ListItem Text="DOP-Dominican Peso" Value="DOP" />
      <asp:ListItem Text="XCD-East Caribbean Dollar" Value="XCD" />
      <asp:ListItem Text="EGP-Egyptian Pound" Value="EGP" />
      <asp:ListItem Text="SVC-El Salvador Colon" Value="SVC" />
      <asp:ListItem Text="EEK-Estonian Kroon" Value="EEK" />
      <asp:ListItem Text="ETB-Ethiopian Birr" Value="ETB" />
      <asp:ListItem Text="EUR-Euro" Value="EUR" />
      <asp:ListItem Text="FKP-Falkland Islands Pound" Value="FKP" />
      <asp:ListItem Text="GMD-Gambian Dalasi" Value="GMD" />
      <asp:ListItem Text="GHC-Ghanian Cedi" Value="GHC" />
      <asp:ListItem Text="GIP-Gibraltar Pound" Value="GIP" />
      <asp:ListItem Text="XAU-Gold Ounces" Value="XAU" />
      <asp:ListItem Text="GTQ-Guatemala Quetzal" Value="GTQ" />
      <asp:ListItem Text="GNF-Guinea Franc" Value="GNF" />
      <asp:ListItem Text="GYD-Guyana Dollar" Value="GYD" />
      <asp:ListItem Text="HTG-Haiti Gourde" Value="HTG" />
      <asp:ListItem Text="HNL-Honduras Lempira" Value="HNL" />
      <asp:ListItem Text="HKD-Hong Kong Dollar" Value="HKD" />
      <asp:ListItem Text="HUF-Hungarian Forint" Value="HUF" />
      <asp:ListItem Text="ISK-Iceland Krona" Value="ISK" />
      <asp:ListItem Text="INR-Indian Rupee" Value="INR" />
      <asp:ListItem Text="IDR-Indonesian Rupiah" Value="IDR" />
      <asp:ListItem Text="IQD-Iraqi Dinar" Value="IQD" />
      <asp:ListItem Text="ILS-Israeli Shekel" Value="ILS" />
      <asp:ListItem Text="JMD-Jamaican Dollar" Value="JMD" />
      <asp:ListItem Text="JPY-Japanese Yen" Value="JPY" />
      <asp:ListItem Text="JOD-Jordanian Dinar" Value="JOD" />
      <asp:ListItem Text="KZT-Kazakhstan Tenge" Value="KZT" />
      <asp:ListItem Text="KES-Kenyan Shilling" Value="KES" />
      <asp:ListItem Text="KRW-Korean Won" Value="KRW" />
      <asp:ListItem Text="KWD-Kuwaiti Dinar" Value="KWD" />
      <asp:ListItem Text="LAK-Lao Kip" Value="LAK" />
      <asp:ListItem Text="LVL-Latvian Lat" Value="LVL" />
      <asp:ListItem Text="LBP-Lebanese Pound" Value="LBP" />
      <asp:ListItem Text="LSL-Lesotho Loti" Value="LSL" />
      <asp:ListItem Text="LRD-Liberian Dollar" Value="LRD" />
      <asp:ListItem Text="LYD-Libyan Dinar" Value="LYD" />
      <asp:ListItem Text="LTL-Lithuanian Lita" Value="LTL" />
      <asp:ListItem Text="MOP-Macau Pataca" Value="MOP" />
      <asp:ListItem Text="MKD-Macedonian Denar" Value="MKD" />
      <asp:ListItem Text="MGF-Malagasy Franc" Value="MGF" />
      <asp:ListItem Text="MWK-Malawi Kwacha" Value="MWK" />
      <asp:ListItem Text="MYR-Malaysian Ringgit" Value="MYR" />
      <asp:ListItem Text="MVR-Maldives Rufiyaa" Value="MVR" />
      <asp:ListItem Text="MTL-Maltese Lira" Value="MTL" />
      <asp:ListItem Text="MRO-Mauritania Ougulya" Value="MRO" />
      <asp:ListItem Text="MUR-Mauritius Rupee" Value="MUR" />
      <asp:ListItem Text="MXN-Mexican Peso" Value="MXN" />
      <asp:ListItem Text="MDL-Moldovan Leu" Value="MDL" />
      <asp:ListItem Text="MNT-Mongolian Tugrik" Value="MNT" />
      <asp:ListItem Text="MAD-Moroccan Dirham" Value="MAD" />
      <asp:ListItem Text="MZM-Mozambique Metical" Value="MZM" />
      <asp:ListItem Text="MMK-Myanmar Kyat" Value="MMK" />
      <asp:ListItem Text="NAD-Namibian Dollar" Value="NAD" />
      <asp:ListItem Text="NPR-Nepalese Rupee" Value="NPR" />
      <asp:ListItem Text="ANG-Neth Antilles Guilder" Value="ANG" />
      <asp:ListItem Text="NZD-New Zealand Dollar" Value="NZD" />
      <asp:ListItem Text="NIO-Nicaragua Cordoba" Value="NIO" />
      <asp:ListItem Text="NGN-Nigerian Naira" Value="NGN" />
      <asp:ListItem Text="KPW-North Korean Won" Value="KPW" />
      <asp:ListItem Text="NOK-Norwegian Krone" Value="NOK" />
      <asp:ListItem Text="OMR-Omani Rial" Value="OMR" />
      <asp:ListItem Text="XPF-Pacific Franc" Value="XPF" />
      <asp:ListItem Text="PKR-Pakistani Rupee" Value="PKR" />
      <asp:ListItem Text="XPD-Palladium Ounces" Value="XPD" />
      <asp:ListItem Text="PAB-Panama Balboa" Value="PAB" />
      <asp:ListItem Text="PGK-Papua New Guinea Kina" Value="PGK" />
      <asp:ListItem Text="PYG-Paraguayan Guarani" Value="PYG" />
      <asp:ListItem Text="PEN-Peruvian Nuevo Sol" Value="PEN" />
      <asp:ListItem Text="PHP-Philippine Peso" Value="PHP" />
      <asp:ListItem Text="XPT-Platinum Ounces" Value="XPT" />
      <asp:ListItem Text="PLN-Polish Zloty" Value="PLN" />
      <asp:ListItem Text="QAR-Qatar Rial" Value="QAR" />
      <asp:ListItem Text="ROL-Romanian Leu" Value="ROL" />
      <asp:ListItem Text="RUB-Russian Rouble" Value="RUB" />
      <asp:ListItem Text="WST-Samoa Tala" Value="WST" />
      <asp:ListItem Text="STD-Sao Tome Dobra" Value="STD" />
      <asp:ListItem Text="SAR-Saudi Arabian Riyal" Value="SAR" />
      <asp:ListItem Text="SCR-Seychelles Rupee" Value="SCR" />
      <asp:ListItem Text="SLL-Sierra Leone Leone" Value="SLL" />
      <asp:ListItem Text="XAG-Silver Ounces" Value="XAG" />
      <asp:ListItem Text="SGD-Singapore Dollar" Value="SGD" />
      <asp:ListItem Text="SKK-Slovak Koruna" Value="SKK" />
      <asp:ListItem Text="SIT-Slovenian Tolar" Value="SIT" />
      <asp:ListItem Text="SBD-Solomon Islands Dollar" Value="SBD" />
      <asp:ListItem Text="SOS-Somali Shilling" Value="SOS" />
      <asp:ListItem Text="ZAR-South African Rand" Value="ZAR" />
      <asp:ListItem Text="LKR-Sri Lanka Rupee" Value="LKR" />
      <asp:ListItem Text="SHP-St Helena Pound" Value="SHP" />
      <asp:ListItem Text="SDD-Sudanese Dinar" Value="SDD" />
      <asp:ListItem Text="SRG-Surinam Guilder" Value="SRG" />
      <asp:ListItem Text="SZL-Swaziland Lilageni" Value="SZL" />
      <asp:ListItem Text="SEK-Swedish Krona" Value="SEK" />
      <asp:ListItem Text="TRY-Turkey Lira" Value="TRY" />
      <asp:ListItem Text="CHF-Swiss Franc" Value="CHF" />
      <asp:ListItem Text="SYP-Syrian Pound" Value="SYP" />
      <asp:ListItem Text="TWD-Taiwan Dollar" Value="TWD" />
      <asp:ListItem Text="TZS-Tanzanian Shilling" Value="TZS" />
      <asp:ListItem Text="THB-Thai Baht" Value="THB" />
      <asp:ListItem Text="TOP-Tonga Pa'anga" Value="TOP" />
      <asp:ListItem Text="TTD-Trinidad&amp;Tobago Dollar" Value="TTD" />
      <asp:ListItem Text="TND-Tunisian Dinar" Value="TND" />
      <asp:ListItem Text="TRL-Turkish Lira" Value="TRL" />
      <asp:ListItem Text="USD-U.S. Dollar" Value="USD" Selected="True" />
      <asp:ListItem Text="AED-UAE Dirham" Value="AED" />
      <asp:ListItem Text="UGX-Ugandan Shilling" Value="UGX" />
      <asp:ListItem Text="UAH-Ukraine Hryvnia" Value="UAH" />
      <asp:ListItem Text="UYU-Uruguayan New Peso" Value="UYU" />
      <asp:ListItem Text="VUV-Vanuatu Vatu" Value="VUV" />
      <asp:ListItem Text="VEB-Venezuelan Bolivar" Value="VEB" />
      <asp:ListItem Text="VND-Vietnam Dong" Value="VND" />
      <asp:ListItem Text="YER-Yemen Riyal" Value="YER" />
      <asp:ListItem Text="YUM-Yugoslav Dinar" Value="YUM" />
      <asp:ListItem Text="ZMK-Zambian Kwacha" Value="ZMK" />
      <asp:ListItem Text="ZWD-Zimbabwe Dollar" Value="ZWD" />
   </asp:DropDownList>
   <asp:CompareValidator ID="cvMoedas" runat="server" 
      ErrorMessage="Selecione moedas diferentes para conversão." 
      ControlToCompare="ddlDestino" ControlToValidate="ddlOrigem" ForeColor="Red" 
      Operator="NotEqual"></asp:CompareValidator>
   <br />
   <label>
      Para a moeda:</label>
   <br />
   <asp:DropDownList runat="server" ID="ddlDestino">
      <asp:ListItem Text="AFA-Afghanistan Afghani" Value="AFA" />
      <asp:ListItem Text="ALL-Albanian Lek" Value="ALL" />
      <asp:ListItem Text="DZD-Algerian Dinar" Value="DZD" />
      <asp:ListItem Text="ARS-Argentine Peso" Value="ARS" />
      <asp:ListItem Text="AWG-Aruba Florin" Value="AWG" />
      <asp:ListItem Text="AUD-Australian Dollar" Value="AUD" />
      <asp:ListItem Text="BSD-Bahamian Dollar" Value="BSD" />
      <asp:ListItem Text="BHD-Bahraini Dinar" Value="BHD" />
      <asp:ListItem Text="BDT-Bangladesh Taka" Value="BDT" />
      <asp:ListItem Text="BBD-Barbados Dollar" Value="BBD" />
      <asp:ListItem Text="BZD-Belize Dollar" Value="BZD" />
      <asp:ListItem Text="BMD-Bermuda Dollar" Value="BMD" />
      <asp:ListItem Text="BTN-Bhutan Ngultrum" Value="BTN" />
      <asp:ListItem Text="BOB-Bolivian Boliviano" Value="BOB" />
      <asp:ListItem Text="BWP-Botswana Pula" Value="BWP" />
      <asp:ListItem Text="BRL-Brazilian Real" Value="BRL" Selected="True" />
      <asp:ListItem Text="GBP-British Pound" Value="GBP" />
      <asp:ListItem Text="BND-Brunei Dollar" Value="BND" />
      <asp:ListItem Text="BIF-Burundi Franc" Value="BIF" />
      <asp:ListItem Text="XOF-CFA Franc (BCEAO)" Value="XOF" />
      <asp:ListItem Text="XAF-CFA Franc (BEAC)" Value="XAF" />
      <asp:ListItem Text="KHR-Cambodia Riel" Value="KHR" />
      <asp:ListItem Text="CAD-Canadian Dollar" Value="CAD" />
      <asp:ListItem Text="CVE-Cape Verde Escudo" Value="CVE" />
      <asp:ListItem Text="KYD-Cayman Islands Dollar" Value="KYD" />
      <asp:ListItem Text="CLP-Chilean Peso" Value="CLP" />
      <asp:ListItem Text="CNY-Chinese Yuan" Value="CNY" />
      <asp:ListItem Text="COP-Colombian Peso" Value="COP" />
      <asp:ListItem Text="KMF-Comoros Franc" Value="KMF" />
      <asp:ListItem Text="CRC-Costa Rica Colon" Value="CRC" />
      <asp:ListItem Text="HRK-Croatian Kuna" Value="HRK" />
      <asp:ListItem Text="CUP-Cuban Peso" Value="CUP" />
      <asp:ListItem Text="CYP-Cyprus Pound" Value="CYP" />
      <asp:ListItem Text="CZK-Czech Koruna" Value="CZK" />
      <asp:ListItem Text="DKK-Danish Krone" Value="DKK" />
      <asp:ListItem Text="DJF-Dijibouti Franc" Value="DJF" />
      <asp:ListItem Text="DOP-Dominican Peso" Value="DOP" />
      <asp:ListItem Text="XCD-East Caribbean Dollar" Value="XCD" />
      <asp:ListItem Text="EGP-Egyptian Pound" Value="EGP" />
      <asp:ListItem Text="SVC-El Salvador Colon" Value="SVC" />
      <asp:ListItem Text="EEK-Estonian Kroon" Value="EEK" />
      <asp:ListItem Text="ETB-Ethiopian Birr" Value="ETB" />
      <asp:ListItem Text="EUR-Euro" Value="EUR" />
      <asp:ListItem Text="FKP-Falkland Islands Pound" Value="FKP" />
      <asp:ListItem Text="GMD-Gambian Dalasi" Value="GMD" />
      <asp:ListItem Text="GHC-Ghanian Cedi" Value="GHC" />
      <asp:ListItem Text="GIP-Gibraltar Pound" Value="GIP" />
      <asp:ListItem Text="XAU-Gold Ounces" Value="XAU" />
      <asp:ListItem Text="GTQ-Guatemala Quetzal" Value="GTQ" />
      <asp:ListItem Text="GNF-Guinea Franc" Value="GNF" />
      <asp:ListItem Text="GYD-Guyana Dollar" Value="GYD" />
      <asp:ListItem Text="HTG-Haiti Gourde" Value="HTG" />
      <asp:ListItem Text="HNL-Honduras Lempira" Value="HNL" />
      <asp:ListItem Text="HKD-Hong Kong Dollar" Value="HKD" />
      <asp:ListItem Text="HUF-Hungarian Forint" Value="HUF" />
      <asp:ListItem Text="ISK-Iceland Krona" Value="ISK" />
      <asp:ListItem Text="INR-Indian Rupee" Value="INR" />
      <asp:ListItem Text="IDR-Indonesian Rupiah" Value="IDR" />
      <asp:ListItem Text="IQD-Iraqi Dinar" Value="IQD" />
      <asp:ListItem Text="ILS-Israeli Shekel" Value="ILS" />
      <asp:ListItem Text="JMD-Jamaican Dollar" Value="JMD" />
      <asp:ListItem Text="JPY-Japanese Yen" Value="JPY" />
      <asp:ListItem Text="JOD-Jordanian Dinar" Value="JOD" />
      <asp:ListItem Text="KZT-Kazakhstan Tenge" Value="KZT" />
      <asp:ListItem Text="KES-Kenyan Shilling" Value="KES" />
      <asp:ListItem Text="KRW-Korean Won" Value="KRW" />
      <asp:ListItem Text="KWD-Kuwaiti Dinar" Value="KWD" />
      <asp:ListItem Text="LAK-Lao Kip" Value="LAK" />
      <asp:ListItem Text="LVL-Latvian Lat" Value="LVL" />
      <asp:ListItem Text="LBP-Lebanese Pound" Value="LBP" />
      <asp:ListItem Text="LSL-Lesotho Loti" Value="LSL" />
      <asp:ListItem Text="LRD-Liberian Dollar" Value="LRD" />
      <asp:ListItem Text="LYD-Libyan Dinar" Value="LYD" />
      <asp:ListItem Text="LTL-Lithuanian Lita" Value="LTL" />
      <asp:ListItem Text="MOP-Macau Pataca" Value="MOP" />
      <asp:ListItem Text="MKD-Macedonian Denar" Value="MKD" />
      <asp:ListItem Text="MGF-Malagasy Franc" Value="MGF" />
      <asp:ListItem Text="MWK-Malawi Kwacha" Value="MWK" />
      <asp:ListItem Text="MYR-Malaysian Ringgit" Value="MYR" />
      <asp:ListItem Text="MVR-Maldives Rufiyaa" Value="MVR" />
      <asp:ListItem Text="MTL-Maltese Lira" Value="MTL" />
      <asp:ListItem Text="MRO-Mauritania Ougulya" Value="MRO" />
      <asp:ListItem Text="MUR-Mauritius Rupee" Value="MUR" />
      <asp:ListItem Text="MXN-Mexican Peso" Value="MXN" />
      <asp:ListItem Text="MDL-Moldovan Leu" Value="MDL" />
      <asp:ListItem Text="MNT-Mongolian Tugrik" Value="MNT" />
      <asp:ListItem Text="MAD-Moroccan Dirham" Value="MAD" />
      <asp:ListItem Text="MZM-Mozambique Metical" Value="MZM" />
      <asp:ListItem Text="MMK-Myanmar Kyat" Value="MMK" />
      <asp:ListItem Text="NAD-Namibian Dollar" Value="NAD" />
      <asp:ListItem Text="NPR-Nepalese Rupee" Value="NPR" />
      <asp:ListItem Text="ANG-Neth Antilles Guilder" Value="ANG" />
      <asp:ListItem Text="NZD-New Zealand Dollar" Value="NZD" />
      <asp:ListItem Text="NIO-Nicaragua Cordoba" Value="NIO" />
      <asp:ListItem Text="NGN-Nigerian Naira" Value="NGN" />
      <asp:ListItem Text="KPW-North Korean Won" Value="KPW" />
      <asp:ListItem Text="NOK-Norwegian Krone" Value="NOK" />
      <asp:ListItem Text="OMR-Omani Rial" Value="OMR" />
      <asp:ListItem Text="XPF-Pacific Franc" Value="XPF" />
      <asp:ListItem Text="PKR-Pakistani Rupee" Value="PKR" />
      <asp:ListItem Text="XPD-Palladium Ounces" Value="XPD" />
      <asp:ListItem Text="PAB-Panama Balboa" Value="PAB" />
      <asp:ListItem Text="PGK-Papua New Guinea Kina" Value="PGK" />
      <asp:ListItem Text="PYG-Paraguayan Guarani" Value="PYG" />
      <asp:ListItem Text="PEN-Peruvian Nuevo Sol" Value="PEN" />
      <asp:ListItem Text="PHP-Philippine Peso" Value="PHP" />
      <asp:ListItem Text="XPT-Platinum Ounces" Value="XPT" />
      <asp:ListItem Text="PLN-Polish Zloty" Value="PLN" />
      <asp:ListItem Text="QAR-Qatar Rial" Value="QAR" />
      <asp:ListItem Text="ROL-Romanian Leu" Value="ROL" />
      <asp:ListItem Text="RUB-Russian Rouble" Value="RUB" />
      <asp:ListItem Text="WST-Samoa Tala" Value="WST" />
      <asp:ListItem Text="STD-Sao Tome Dobra" Value="STD" />
      <asp:ListItem Text="SAR-Saudi Arabian Riyal" Value="SAR" />
      <asp:ListItem Text="SCR-Seychelles Rupee" Value="SCR" />
      <asp:ListItem Text="SLL-Sierra Leone Leone" Value="SLL" />
      <asp:ListItem Text="XAG-Silver Ounces" Value="XAG" />
      <asp:ListItem Text="SGD-Singapore Dollar" Value="SGD" />
      <asp:ListItem Text="SKK-Slovak Koruna" Value="SKK" />
      <asp:ListItem Text="SIT-Slovenian Tolar" Value="SIT" />
      <asp:ListItem Text="SBD-Solomon Islands Dollar" Value="SBD" />
      <asp:ListItem Text="SOS-Somali Shilling" Value="SOS" />
      <asp:ListItem Text="ZAR-South African Rand" Value="ZAR" />
      <asp:ListItem Text="LKR-Sri Lanka Rupee" Value="LKR" />
      <asp:ListItem Text="SHP-St Helena Pound" Value="SHP" />
      <asp:ListItem Text="SDD-Sudanese Dinar" Value="SDD" />
      <asp:ListItem Text="SRG-Surinam Guilder" Value="SRG" />
      <asp:ListItem Text="SZL-Swaziland Lilageni" Value="SZL" />
      <asp:ListItem Text="SEK-Swedish Krona" Value="SEK" />
      <asp:ListItem Text="TRY-Turkey Lira" Value="TRY" />
      <asp:ListItem Text="CHF-Swiss Franc" Value="CHF" />
      <asp:ListItem Text="SYP-Syrian Pound" Value="SYP" />
      <asp:ListItem Text="TWD-Taiwan Dollar" Value="TWD" />
      <asp:ListItem Text="TZS-Tanzanian Shilling" Value="TZS" />
      <asp:ListItem Text="THB-Thai Baht" Value="THB" />
      <asp:ListItem Text="TOP-Tonga Pa'anga" Value="TOP" />
      <asp:ListItem Text="TTD-Trinidad&amp;Tobago Dollar" Value="TTD" />
      <asp:ListItem Text="TND-Tunisian Dinar" Value="TND" />
      <asp:ListItem Text="TRL-Turkish Lira" Value="TRL" />
      <asp:ListItem Text="USD-U.S. Dollar" Value="USD" />
      <asp:ListItem Text="AED-UAE Dirham" Value="AED" />
      <asp:ListItem Text="UGX-Ugandan Shilling" Value="UGX" />
      <asp:ListItem Text="UAH-Ukraine Hryvnia" Value="UAH" />
      <asp:ListItem Text="UYU-Uruguayan New Peso" Value="UYU" />
      <asp:ListItem Text="VUV-Vanuatu Vatu" Value="VUV" />
      <asp:ListItem Text="VEB-Venezuelan Bolivar" Value="VEB" />
      <asp:ListItem Text="VND-Vietnam Dong" Value="VND" />
      <asp:ListItem Text="YER-Yemen Riyal" Value="YER" />
      <asp:ListItem Text="YUM-Yugoslav Dinar" Value="YUM" />
      <asp:ListItem Text="ZMK-Zambian Kwacha" Value="ZMK" />
      <asp:ListItem Text="ZWD-Zimbabwe Dollar" Value="ZWD" />
   </asp:DropDownList>
   <br />
   <br />
   <asp:Button Text="Realizar conversão" runat="server" 
   onclick="btnConverter_Click" ID="btnConverter" CssClass="submitButton" /> 
   <br />
   <fieldset>
      <legend>Resultado da conversão</legend>
      <asp:Label ID="lblResultado" runat="server" />
   </fieldset>
</asp:Content>

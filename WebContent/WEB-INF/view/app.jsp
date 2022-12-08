<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8">
</head>

<style>
  :host {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    font-size: 15px;
    color: #353;
    box-sizing: border-box;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }

  h1 
  h2,
  h3,
  h4,
  h5,
  h6 {
    margin: 30px 0;
  }
  
  .error {color: red;
  }

  p {
    margin: 0;
    
  }

  .toolbar {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 70px;
    display: flex;
    align-items: center;
    background-color: #1976d2;
    color: #c8c8c8;
    font-weight: 600;
    padding: 0 16px;
    background-image: url('https://t4.ftcdn.net/jpg/01/98/24/71/360_F_198247162_JwrVkhqowZb4NJC24156nV6QYRhsV8Qf.jpg');
    background-size: cover;
  }

  .content {
    display: flex;
    margin: 102px auto 32px;
    padding: 0 16px;
    max-width: 960px;
    flex-direction: column;
    align-items: center;
    
    position: center;
  }

  footer {
    margin-top: 8px;
    display: flex;
    align-items: center;
    line-height: 20px;
  }

  svg#clouds {
    position: fixed;
    bottom: -160px;
    left: -230px;
    z-index: -10;
    width: 1920px;
  }

  @media screen and (max-width: 767px) {
    .card-container > *:not(.circle-link),
    .terminal {
      width: 100%;
    }

    .card:not(.highlight-card) {
      height: 16px;
      margin: 8px 0;
    }

    .card.highlight-card span {
      margin-left: 72px;
    }

    svg#rocket-smoke {
      right: 120px;
      transform: rotate(-5deg);
    }
  }

  @media screen and (max-width: 575px) {
    svg#rocket-smoke {
      display: none;
      visibility: hidden;
    }
  }
  
</style>

  <div class="toolbar" role="banner">

    <h2> Welcome on our car comparision engine</h2>

    <div class="spacer"></div>


  </div>

  <div class="content" role="main">


    <h2>Check how we calculate value of your car</h2>

    <p>Insert your car's data:</p>
    <h2></h2>

    <form:form class="car-evaluator-form" action="processForm" modelAttribute="car" style="border:solid 6px #AAA;padding:40px;">
      <!--Tutaj dodaÄ stronkÄ co siÄ stanie po obliczeniu -->
      <input type="hidden" name="csrfmiddlewaretoken" value="5bnSgcPACPxpHqmuaTmRHkM13ZrPxkE1">


      <div class="w3-col l8 m10 s12 w3-padding-large">



        <div class="w3-row w3-border-left w3-border-right w3-border-black" style="padding-left: 26px; padding-right: 26px;">

          <div class="w3-col l3 m6 s6 w3-padding-small" style="margin-top: 0px;">
            <!--Tabelka wyÅwietlajÄca markÄ samochodu-->
            <p align="center">
              <label class="w3-small">Brand</label>
            <p align="center">
              <form:select class="w3-select w3-small" style="font-weight: normal;" id="makes" name="make" path="vehicleBrand">
                
                <option value="Acura">Abarth</option>
                <option value="Acura">Acura</option>
                <option value="Aixam">Aixam</option>
                <option value="Alfa Romeo">Alfa Romeo</option>
                <option value="Alpine">Alpine</option>
                <option value="Aston Martin">Aston Martin</option>
                <option value="Audi">Audi</option>
                <option value="Austin">Austin</option>
                <option value="Autobianchi">Autobianchi</option>
                <option value="BMW">BMW</option>
                <option value="Baic">Baic</option>
                <option value="Bentley">Bentley</option>
                <option value="Buick">Buick</option>
                <option value="Cadillac">Cadillac</option>
                <option value="Casalini">Casalini</option>
                <option value="Chatenet">Chatenet</option>
                <option value="Chevrolet">Chevrolet</option>
                <option value="Chrysler">Chrysler</option>
                <option value="CitroÃ«n">CitroÃ«n</option>
                <option value="Cupra">Cupra</option>
                <option value="DFSK">DFSK</option>
                <option value="DKW">DKW</option>
                <option value="DS Automobiles">DS Automobiles</option>
                <option value="Dacia">Dacia</option>
                <option value="Daewoo">Daewoo</option>
                <option value="Daihatsu">Daihatsu</option>
                <option value="Dodge">Dodge</option>
                <option value="Ferrari">Ferrari</option>
                <option value="Fiat">Fiat</option>
                <option value="Ford">Ford</option>
                <option value="GMC">GMC</option>
                <option value="Gaz">Gaz</option>
                <option value="Grecav">Grecav</option>
                <option value="Honda">Honda</option>
                <option value="Hummer">Hummer</option>
                <option value="Hyundai">Hyundai</option>
                <option value="Infiniti">Infiniti</option>
                <option value="Inny">Inny</option>
                <option value="Isuzu">Isuzu</option>
                <option value="Iveco">Iveco</option>
                <option value="Jaguar">Jaguar</option>
                <option value="Jeep">Jeep</option>
                <option value="Kia">Kia</option>
                <option value="Lada">Lada</option>
                <option value="Lamborghini">Lamborghini</option>
                <option value="Lancia">Lancia</option>
                <option value="Land Rover">Land Rover</option>
                <option value="Lexus">Lexus</option>
                <option value="Ligier">Ligier</option>
                <option value="Lincoln">Lincoln</option>
                <option value="Lotus">Lotus</option>
                <option value="MAN">MAN</option>
                <option value="MG">MG</option>
                <option value="MINI">MINI</option>
                <option value="Maserati">Maserati</option>
                <option value="Maybach">Maybach</option>
                <option value="Mazda">Mazda</option>
                <option value="McLaren">McLaren</option>
                <option value="Mercedes-Benz">Mercedes-Benz</option>
                <option value="Mercury">Mercury</option>
                <option value="Microcar">Microcar</option>
                <option value="Mitsubishi">Mitsubishi</option>
                <option value="Moskwicz">Moskwicz</option>
                <option value="NSU">NSU</option>
                <option value="Nissan">Nissan</option>
                <option value="Nysa">Nysa</option>
                <option value="Oldsmobile">Oldsmobile</option>
                <option value="Opel">Opel</option>
                <option value="Peugeot">Peugeot</option>
                <option value="Plymouth">Plymouth</option>
                <option value="Polonez">Polonez</option>
                <option value="Pontiac">Pontiac</option>
                <option value="Porsche">Porsche</option>
                <option value="RAM">RAM</option>
                <option value="Renault">Renault</option>
                <option value="Rolls-Royce">Rolls-Royce</option>
                <option value="Rover">Rover</option>
                <option value="Saab">Saab</option>
                <option value="Santana">Santana</option>
                <option value="Saturn">Saturn</option>
                <option value="Scion">Scion</option>
                <option value="Seat">Seat</option>
                <option value="Smart">Smart</option>
                <option value="SsangYong">SsangYong</option>
                <option value="Subaru">Subaru</option>
                <option value="Suzuki">Suzuki</option>
                <option value="Syrena">Syrena</option>
                <option value="Talbot">Talbot</option>
                <option value="Tarpan">Tarpan</option>
                <option value="Tata">Tata</option>
                <option value="Tavria">Tavria</option>
                <option value="Tesla">Tesla</option>
                <option value="Toyota">Toyota</option>
                <option value="Trabant">Trabant</option>
                <option value="Triumph">Triumph</option>
                <option value="Uaz">Uaz</option>
                <option value="Vanderhall">Vanderhall</option>
                <option value="Vauxhall">Vauxhall</option>
                <option value="Volkswagen">Volkswagen</option>
                <option value="Volvo">Volvo</option>
                <option value="Warszawa">Warszawa</option>
                <option value="Wartburg">Wartburg</option>
                <option value="WoÅga">WoÅga</option>
                <option value="ZaporoÅ¼ec">ZaporoÅ¼ec</option>
                <option value="Zastava">Zastava</option>
                <option value="Å koda">Å koda</option>
                <option value="Å»uk">Å»uk</option>

              </form:select>
          </div>



          <div>

            <p align="center">
              <label class="w3-small">Model</label>
            <p align="center">
              <form:select class="w3-select w3-small" style="font-weight: normal;" id="makes" name="make" path="vehicleModel">
                <option selected="" value="124 Spider">124 Spider</option>
                <option value="1.3">1.3</option>
                <option value="1.5">1.5</option>
                <option value="1.6">1.6</option>
                <option value="10">10</option>
                <option value="100">100</option>
                <option value="100 NX">100 NX</option>
                <option value="1000">1000</option>
                <option value="1007">1007</option>
                <option value="104">104</option>
                <option value="105">105</option>
                <option value="106">106</option>
                <option value="107">107</option>
                <option value="108">108</option>
                <option value="1100">1100</option>
                <option value="1117">1117</option>
                <option value="1118">1118</option>
                <option value="121">121</option>
                <option value="124">124</option>
                <option value="125p">125p</option>
                <option value="126">126</option>
                <option value="127">127</option>
                <option value="128">128</option>
                <option value="130">130</option>
                <option value="1300">1300</option>
                <option value="131">131</option>
                <option value="145">145</option>
                <option value="146">146</option>
                <option value="147">147</option>
                <option value="1500">1500</option>
                <option value="155">155</option>
                <option value="156">156</option>
                <option value="159">159</option>
                <option value="164">164</option>
                <option value="166">166</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="1M">1M</option>
                <option value="2">2</option>
                <option value="2 CV">2 CV</option>
                <option value="200">200</option>
                <option value="200 SX">200 SX</option>
                <option value="2008">2008</option>
                <option value="203">203</option>
                <option value="204">204</option>
                <option value="205">205</option>
                <option value="206">206</option>
                <option value="206 CC">206 CC</option>
                <option value="206 plus">206 plus</option>
                <option value="207">207</option>
                <option value="207 CC">207 CC</option>
                <option value="208">208</option>
                <option value="2101">2101</option>
                <option value="2108">2108</option>
                <option value="214">214</option>
                <option value="2141">2141</option>
                <option value="220">220</option>
                <option value="224">224</option>
                <option value="233">233</option>
                <option value="237">237</option>
                <option value="2410">2410</option>
                <option value="25">25</option>
                <option value="262">262</option>
                <option value="280">280</option>
                <option value="280 ZX">280 ZX</option>
                <option value="3">3</option>
                <option value="300">300</option>
                <option value="300 ZX">300 ZX</option>
                <option value="3000GT">3000GT</option>
                <option value="3008">3008</option>
                <option value="300C">300C</option>
                <option value="300M">300M</option>
                <option value="300s">300s</option>
                <option value="301">301</option>
                <option value="304">304</option>
                <option value="306">306</option>
                <option value="307">307</option>
                <option value="307 CC">307 CC</option>
                <option value="308">308</option>
                <option value="308 CC">308 CC</option>
                <option value="309">309</option>
                <option value="311.0">311.0</option>
                <option value="3200">3200</option>
                <option value="323">323</option>
                <option value="323F">323F</option>
                <option value="340">340</option>
                <option value="348">348</option>
                <option value="350 Z">350 Z</option>
                <option value="3500">3500</option>
                <option value="353.0">353.0</option>
                <option value="356">356</option>
                <option value="360">360</option>
                <option value="370 Z">370 Z</option>
                <option value="3GT">3GT</option>
                <option value="4">4</option>
                <option value="4-Runner">4-Runner</option>
                <option value="400">400</option>
                <option value="4007">4007</option>
                <option value="4008">4008</option>
                <option value="402">402</option>
                <option value="403">403</option>
                <option value="405">405</option>
                <option value="406">406</option>
                <option value="407">407</option>
                <option value="408">408</option>
                <option value="416">416</option>
                <option value="4200">4200</option>
                <option value="45">45</option>
                <option value="452">452</option>
                <option value="458 Italia">458 Italia</option>
                <option value="488">488</option>
                <option value="4C">4C</option>
                <option value="5">5</option>
                <option value="500">500</option>
                <option value="5008">5008</option>
                <option value="500L">500L</option>
                <option value="500X">500X</option>
                <option value="508">508</option>
                <option value="57">57</option>
                <option value="570 GT">570 GT</option>
                <option value="570S Coupe">570S Coupe</option>
                <option value="570S Spider">570S Spider</option>
                <option value="575">575</option>
                <option value="595">595</option>
                <option value="599GTB">599GTB</option>
                <option value="5GT">5GT</option>
                <option value="6">6</option>
                <option value="600">600</option>
                <option value="600LT Spider">600LT Spider</option>
                <option value="601">601</option>
                <option value="605">605</option>
                <option value="607">607</option>
                <option value="620">620</option>
                <option value="626">626</option>
                <option value="69">69</option>
                <option value="6GT">6GT</option>
                <option value="718 Boxster">718 Boxster</option>
                <option value="718 Cayman">718 Cayman</option>
                <option value="720S Coupe">720S Coupe</option>
                <option value="720S Spider">720S Spider</option>
                <option value="744">744</option>
                <option value="75">75</option>
                <option value="750">750</option>
                <option value="80">80</option>
                <option value="807">807</option>
                <option value="812 Superfast">812 Superfast</option>
                <option value="827">827</option>
                <option value="850">850</option>
                <option value="9">9</option>
                <option value="9-2X">9-2X</option>
                <option value="9-3">9-3</option>
                <option value="9-3X">9-3X</option>
                <option value="9-5">9-5</option>
                <option value="9-7X">9-7X</option>
                <option value="90">90</option>
                <option value="900">900</option>
                <option value="9000">9000</option>
                <option value="911">911</option>
                <option value="914">914</option>
                <option value="924">924</option>
                <option value="928">928</option>
                <option value="929">929</option>
                <option value="944">944</option>
                <option value="945">945</option>
                <option value="96">96</option>
                <option value="965">965</option>
                <option value="968">968</option>
                <option value="A1">A1</option>
                <option value="A110">A110</option>
                <option value="A2">A2</option>
                <option value="A3">A3</option>
                <option value="A4">A4</option>
                <option value="A4 Allroad">A4 Allroad</option>
                <option value="A5">A5</option>
                <option value="A6">A6</option>
                <option value="A6 Allroad">A6 Allroad</option>
                <option value="A7">A7</option>
                <option value="A721">A721</option>
                <option value="A741">A741</option>
                <option value="A751">A751</option>
                <option value="A8">A8</option>
                <option value="AMG GT">AMG GT</option>
                <option value="ASX">ASX</option>
                <option value="ATS">ATS</option>
                <option value="AX">AX</option>
                <option value="Accent">Accent</option>
                <option value="Accord">Accord</option>
                <option value="Across">Across</option>
                <option value="Actyon">Actyon</option>
                <option value="Adam">Adam</option>
                <option value="Agila">Agila</option>
                <option value="Alaskan">Alaskan</option>
                <option value="Albea">Albea</option>
                <option value="Alero">Alero</option>
                <option value="Alhambra">Alhambra</option>
                <option value="Allegro">Allegro</option>
                <option value="Almera">Almera</option>
                <option value="Almera Tino">Almera Tino</option>
                <option value="Altea">Altea</option>
                <option value="Altea XL">Altea XL</option>
                <option value="Altima">Altima</option>
                <option value="Alto">Alto</option>
                <option value="Amarok">Amarok</option>
                <option value="Ambra">Ambra</option>
                <option value="Ampera">Ampera</option>
                <option value="Antara">Antara</option>
                <option value="Apache">Apache</option>
                <option value="Arnage">Arnage</option>
                <option value="Arona">Arona</option>
                <option value="Arosa">Arosa</option>
                <option value="Arteon">Arteon</option>
                <option value="Ascona">Ascona</option>
                <option value="Aspen">Aspen</option>
                <option value="Astra">Astra</option>
                <option value="Astro">Astro</option>
                <option value="Ateca">Ateca</option>
                <option value="Atlas">Atlas</option>
                <option value="Atos">Atos</option>
                <option value="Atu">Atu</option>
                <option value="Auris">Auris</option>
                <option value="Aurora">Aurora</option>
                <option value="Avalanche">Avalanche</option>
                <option value="Avalon">Avalon</option>
                <option value="Avantime">Avantime</option>
                <option value="Avenger">Avenger</option>
                <option value="Avensis">Avensis</option>
                <option value="Avensis Verso">Avensis Verso</option>
                <option value="Aventador">Aventador</option>
                <option value="Aveo">Aveo</option>
                <option value="Aviator">Aviator</option>
                <option value="Aygo">Aygo</option>
                <option value="Azera">Azera</option>
                <option value="B-MAX">B-MAX</option>
                <option value="B9 Tribeca">B9 Tribeca</option>
                <option value="BLS">BLS</option>
                <option value="BRZ">BRZ</option>
                <option value="BT-50">BT-50</option>
                <option value="BX">BX</option>
                <option value="Baja">Baja</option>
                <option value="Baleno">Baleno</option>
                <option value="Barchetta">Barchetta</option>
                <option value="Beetle">Beetle</option>
                <option value="Bentayga">Bentayga</option>
                <option value="Berlingo">Berlingo</option>
                <option value="Bianchina">Bianchina</option>
                <option value="Bipper">Bipper</option>
                <option value="Biturbo">Biturbo</option>
                <option value="Blazer">Blazer</option>
                <option value="Bluebird">Bluebird</option>
                <option value="Bolt">Bolt</option>
                <option value="Bonneville">Bonneville</option>
                <option value="Bora">Bora</option>
                <option value="Bosto">Bosto</option>
                <option value="Boxer">Boxer</option>
                <option value="Boxster">Boxster</option>
                <option value="Brava">Brava</option>
                <option value="Bravada">Bravada</option>
                <option value="Bravo">Bravo</option>
                <option value="Brera">Brera</option>
                <option value="Brougham">Brougham</option>
                <option value="C-10">C-10</option>
                <option value="C-Crosser">C-Crosser</option>
                <option value="C-ElysÃ©e">C-ElysÃ©e</option>
                <option value="C-HR">C-HR</option>
                <option value="C-MAX">C-MAX</option>
                <option value="C1">C1</option>
                <option value="C2">C2</option>
                <option value="C3">C3</option>
                <option value="C3 Aircross">C3 Aircross</option>
                <option value="C3 Picasso">C3 Picasso</option>
                <option value="C3 Pluriel">C3 Pluriel</option>
                <option value="C30">C30</option>
                <option value="C4">C4</option>
                <option value="C4 Aircross">C4 Aircross</option>
                <option value="C4 Cactus">C4 Cactus</option>
                <option value="C4 Grand Picasso">C4 Grand Picasso</option>
                <option value="C4 Picasso">C4 Picasso</option>
                <option value="C4 SpaceTourer">C4 SpaceTourer</option>
                <option value="C5">C5</option>
                <option value="C5 Aircross">C5 Aircross</option>
                <option value="C6">C6</option>
                <option value="C70">C70</option>
                <option value="C8">C8</option>
                <option value="CC">CC</option>
                <option value="CH22 Barooder">CH22 Barooder</option>
                <option value="CH26">CH26</option>
                <option value="CH32">CH32</option>
                <option value="CJ">CJ</option>
                <option value="CL">CL</option>
                <option value="CLA">CLA</option>
                <option value="CLC">CLC</option>
                <option value="CLK">CLK</option>
                <option value="CLS">CLS</option>
                <option value="CR-V">CR-V</option>
                <option value="CR-Z">CR-Z</option>
                <option value="CRX">CRX</option>
                <option value="CT">CT</option>
                <option value="CT6">CT6</option>
                <option value="CTS">CTS</option>
                <option value="CX-3">CX-3</option>
                <option value="CX-30">CX-30</option>
                <option value="CX-5">CX-5</option>
                <option value="CX-7">CX-7</option>
                <option value="CX-9">CX-9</option>
                <option value="Cabriolet">Cabriolet</option>
                <option value="Caddy">Caddy</option>
                <option value="Caliber">Caliber</option>
                <option value="Calibra">Calibra</option>
                <option value="California">California</option>
                <option value="Camaro">Camaro</option>
                <option value="Campo">Campo</option>
                <option value="Camry">Camry</option>
                <option value="Camry Solara">Camry Solara</option>
                <option value="Capri">Capri</option>
                <option value="Caprice">Caprice</option>
                <option value="Captiva">Captiva</option>
                <option value="Captur">Captur</option>
                <option value="Caravan">Caravan</option>
                <option value="Caravelle">Caravelle</option>
                <option value="Carens">Carens</option>
                <option value="Carina">Carina</option>
                <option value="Carisma">Carisma</option>
                <option value="Carnival">Carnival</option>
                <option value="Caro">Caro</option>
                <option value="Cascada">Cascada</option>
                <option value="Catalina">Catalina</option>
                <option value="Cayenne">Cayenne</option>
                <option value="Cayman">Cayman</option>
                <option value="Ceed">Ceed</option>
                <option value="Celerio">Celerio</option>
                <option value="Celica">Celica</option>
                <option value="Century">Century</option>
                <option value="Cerato">Cerato</option>
                <option value="Chairman">Chairman</option>
                <option value="Challenger">Challenger</option>
                <option value="Charade">Charade</option>
                <option value="Charger">Charger</option>
                <option value="Cherokee">Cherokee</option>
                <option value="Chevy Van">Chevy Van</option>
                <option value="Chieftain">Chieftain</option>
                <option value="Cinquecento">Cinquecento</option>
                <option value="Citan">Citan</option>
                <option value="Citigo">Citigo</option>
                <option value="City">City</option>
                <option value="Civic">Civic</option>
                <option value="Clarus">Clarus</option>
                <option value="Clio">Clio</option>
                <option value="Clubman">Clubman</option>
                <option value="Colorado">Colorado</option>
                <option value="Colt">Colt</option>
                <option value="Comanche">Comanche</option>
                <option value="Combo">Combo</option>
                <option value="Commander">Commander</option>
                <option value="Commodore">Commodore</option>
                <option value="Compass">Compass</option>
                <option value="Continental">Continental</option>
                <option value="Continental Flying Spur">Continental Flying Spur</option>
                <option value="Continental GT">Continental GT</option>
                <option value="Cooper">Cooper</option>
                <option value="Cooper S">Cooper S</option>
                <option value="Cordoba">Cordoba</option>
                <option value="Corniche">Corniche</option>
                <option value="Corolla">Corolla</option>
                <option value="Corolla Verso">Corolla Verso</option>
                <option value="Corsa">Corsa</option>
                <option value="Corvette">Corvette</option>
                <option value="Cougar">Cougar</option>
                <option value="Countach">Countach</option>
                <option value="Countryman">Countryman</option>
                <option value="Coupe">Coupe</option>
                <option value="Courier">Courier</option>
                <option value="Crafter">Crafter</option>
                <option value="Cressida">Cressida</option>
                <option value="Croma">Croma</option>
                <option value="Crossfire">Crossfire</option>
                <option value="Crossland X">Crossland X</option>
                <option value="Crossline">Crossline</option>
                <option value="Crossover">Crossover</option>
                <option value="Crosswagon">Crosswagon</option>
                <option value="Crown">Crown</option>
                <option value="Cruze">Cruze</option>
                <option value="Cube">Cube</option>
                <option value="Cullinan">Cullinan</option>
                <option value="Cuore">Cuore</option>
                <option value="Cutlass">Cutlass</option>
                <option value="D-Max">D-Max</option>
                <option value="DB11">DB11</option>
                <option value="DB7">DB7</option>
                <option value="DB9">DB9</option>
                <option value="DBX">DBX</option>
                <option value="DS">DS</option>
                <option value="DS 3">DS 3</option>
                <option value="DS 3 Crossback">DS 3 Crossback</option>
                <option value="DS 4">DS 4</option>
                <option value="DS 4 Crossback">DS 4 Crossback</option>
                <option value="DS 5">DS 5</option>
                <option value="DS 7 Crossback">DS 7 Crossback</option>
                <option value="DS3">DS3</option>
                <option value="DS4">DS4</option>
                <option value="DS5">DS5</option>
                <option value="DTS">DTS</option>
                <option value="DUE">DUE</option>
                <option value="DUE First">DUE First</option>
                <option value="Daimler">Daimler</option>
                <option value="Dakota">Dakota</option>
                <option value="Dart">Dart</option>
                <option value="Defender">Defender</option>
                <option value="Delta">Delta</option>
                <option value="Delta 88">Delta 88</option>
                <option value="Demio">Demio</option>
                <option value="Deville">Deville</option>
                <option value="Diablo">Diablo</option>
                <option value="Discovery">Discovery</option>
                <option value="Discovery Sport">Discovery Sport</option>
                <option value="Doblo">Doblo</option>
                <option value="Dokker">Dokker</option>
                <option value="Dokker Van">Dokker Van</option>
                <option value="Ducato">Ducato</option>
                <option value="Durango">Durango</option>
                <option value="Duster">Duster</option>
                <option value="E-Pace">E-Pace</option>
                <option value="E-Type">E-Type</option>
                <option value="EDGE">EDGE</option>
                <option value="EQA">EQA</option>
                <option value="EQC">EQC</option>
                <option value="EQV">EQV</option>
                <option value="ES">ES</option>
                <option value="EX">EX</option>
                <option value="Eclipse">Eclipse</option>
                <option value="Eclipse Cross">Eclipse Cross</option>
                <option value="EcoSport">EcoSport</option>
                <option value="Econoline">Econoline</option>
                <option value="Eighty - Eight">Eighty - Eight</option>
                <option value="El Camino">El Camino</option>
                <option value="Elantra">Elantra</option>
                <option value="Eldorado">Eldorado</option>
                <option value="Electra">Electra</option>
                <option value="Enclave">Enclave</option>
                <option value="Endeavor">Endeavor</option>
                <option value="Envoy">Envoy</option>
                <option value="Enyaq">Enyaq</option>
                <option value="Eos">Eos</option>
                <option value="Epica">Epica</option>
                <option value="Equinox">Equinox</option>
                <option value="Escalade">Escalade</option>
                <option value="Escape">Escape</option>
                <option value="Escort">Escort</option>
                <option value="Espace">Espace</option>
                <option value="Espero">Espero</option>
                <option value="Evanda">Evanda</option>
                <option value="Evasion">Evasion</option>
                <option value="Evora">Evora</option>
                <option value="Excursion">Excursion</option>
                <option value="Exeo">Exeo</option>
                <option value="Expedition">Expedition</option>
                <option value="Expert">Expert</option>
                <option value="Explorer">Explorer</option>
                <option value="Express">Express</option>
                <option value="F-Pace">F-Pace</option>
                <option value="F-Type">F-Type</option>
                <option value="F12berlinetta">F12berlinetta</option>
                <option value="F150">F150</option>
                <option value="F250">F250</option>
                <option value="F350">F350</option>
                <option value="F355">F355</option>
                <option value="F360">F360</option>
                <option value="F430">F430</option>
                <option value="F8 Tributo">F8 Tributo</option>
                <option value="FF">FF</option>
                <option value="FJ">FJ</option>
                <option value="FR-V">FR-V</option>
                <option value="FX">FX</option>
                <option value="Fabia">Fabia</option>
                <option value="Fairlane">Fairlane</option>
                <option value="Favorit">Favorit</option>
                <option value="Felicia">Felicia</option>
                <option value="Fengon 5">Fengon 5</option>
                <option value="Feroza">Feroza</option>
                <option value="Fiero">Fiero</option>
                <option value="Fiesta">Fiesta</option>
                <option value="Fiorino">Fiorino</option>
                <option value="Firebird">Firebird</option>
                <option value="Fleetwood">Fleetwood</option>
                <option value="Flex">Flex</option>
                <option value="Fluence">Fluence</option>
                <option value="Focus">Focus</option>
                <option value="Focus C-Max">Focus C-Max</option>
                <option value="Forester">Forester</option>
                <option value="Forfour">Forfour</option>
                <option value="Forman">Forman</option>
                <option value="Formentor">Formentor</option>
                <option value="Fortwo">Fortwo</option>
                <option value="Fox">Fox</option>
                <option value="Freelander">Freelander</option>
                <option value="Freemont">Freemont</option>
                <option value="Freestar">Freestar</option>
                <option value="Frontera">Frontera</option>
                <option value="Frontier">Frontier</option>
                <option value="Fuego">Fuego</option>
                <option value="Fullback">Fullback</option>
                <option value="Fulvia">Fulvia</option>
                <option value="Fury">Fury</option>
                <option value="Fusion">Fusion</option>
                <option value="G">G</option>
                <option value="G3X Justy">G3X Justy</option>
                <option value="GAZ-21">GAZ-21</option>
                <option value="GAZ-24">GAZ-24</option>
                <option value="GL">GL</option>
                <option value="GLA">GLA</option>
                <option value="GLB">GLB</option>
                <option value="GLC">GLC</option>
                <option value="GLE">GLE</option>
                <option value="GLK">GLK</option>
                <option value="GLS">GLS</option>
                <option value="GS">GS</option>
                <option value="GT">GT</option>
                <option value="GT-R">GT-R</option>
                <option value="GT86">GT86</option>
                <option value="GTC4Lusso">GTC4Lusso</option>
                <option value="GTO">GTO</option>
                <option value="GTV">GTV</option>
                <option value="GX">GX</option>
                <option value="Galant">Galant</option>
                <option value="Galaxy">Galaxy</option>
                <option value="Gallardo">Gallardo</option>
                <option value="Galloper">Galloper</option>
                <option value="Gamma">Gamma</option>
                <option value="Garbus">Garbus</option>
                <option value="Genesis">Genesis</option>
                <option value="Genesis Coupe">Genesis Coupe</option>
                <option value="Getz">Getz</option>
                <option value="Ghibli">Ghibli</option>
                <option value="Ghost">Ghost</option>
                <option value="Giulia">Giulia</option>
                <option value="Giulietta">Giulietta</option>
                <option value="Gladiator">Gladiator</option>
                <option value="Glory 580">Glory 580</option>
                <option value="Golf">Golf</option>
                <option value="Golf Plus">Golf Plus</option>
                <option value="Golf Sportsvan">Golf Sportsvan</option>
                <option value="GranCabrio">GranCabrio</option>
                <option value="GranTurismo">GranTurismo</option>
                <option value="Granada">Granada</option>
                <option value="Grand C-MAX">Grand C-MAX</option>
                <option value="Grand Caravan">Grand Caravan</option>
                <option value="Grand Cherokee">Grand Cherokee</option>
                <option value="Grand Espace">Grand Espace</option>
                <option value="Grand Santa Fe">Grand Santa Fe</option>
                <option value="Grand Scenic">Grand Scenic</option>
                <option value="Grand Vitara">Grand Vitara</option>
                <option value="Grand Voyager">Grand Voyager</option>
                <option value="Grand-Am">Grand-Am</option>
                <option value="Grand-Prix">Grand-Prix</option>
                <option value="Grande Punto">Grande Punto</option>
                <option value="Grandeur">Grandeur</option>
                <option value="Grandis">Grandis</option>
                <option value="Grandland X">Grandland X</option>
                <option value="H-1">H-1</option>
                <option value="H-1 Starex">H-1 Starex</option>
                <option value="H1">H1</option>
                <option value="H2">H2</option>
                <option value="H3">H3</option>
                <option value="HHR">HHR</option>
                <option value="HR-V">HR-V</option>
                <option value="HS 250h">HS 250h</option>
                <option value="Hiace">Hiace</option>
                <option value="Highland X">Highland X</option>
                <option value="Highlander">Highlander</option>
                <option value="Hilux">Hilux</option>
                <option value="Honker">Honker</option>
                <option value="Horizon">Horizon</option>
                <option value="Huracan">Huracan</option>
                <option value="I-Pace">I-Pace</option>
                <option value="I30">I30</option>
                <option value="ID.3">ID.3</option>
                <option value="ID.4">ID.4</option>
                <option value="IONIQ">IONIQ</option>
                <option value="IS">IS</option>
                <option value="IXO">IXO</option>
                <option value="Ibiza">Ibiza</option>
                <option value="Idea">Idea</option>
                <option value="Ignis">Ignis</option>
                <option value="Impala">Impala</option>
                <option value="Impreza">Impreza</option>
                <option value="Indica">Indica</option>
                <option value="Insight">Insight</option>
                <option value="Insignia">Insignia</option>
                <option value="Integra">Integra</option>
                <option value="Interstar">Interstar</option>
                <option value="JS RC">JS RC</option>
                <option value="JS50">JS50</option>
                <option value="JS50L">JS50L</option>
                <option value="Jazz">Jazz</option>
                <option value="Jetta">Jetta</option>
                <option value="Jimny">Jimny</option>
                <option value="Joice">Joice</option>
                <option value="Journey">Journey</option>
                <option value="Juke">Juke</option>
                <option value="Jumper">Jumper</option>
                <option value="Jumpy Combi">Jumpy Combi</option>
                <option value="Justy">Justy</option>
                <option value="K1500">K1500</option>
                <option value="KA">KA</option>
                <option value="Ka+">Ka+</option>
                <option value="Kadett">Kadett</option>
                <option value="Kadjar">Kadjar</option>
                <option value="Kafer">Kafer</option>
                <option value="Kalina">Kalina</option>
                <option value="Kalos">Kalos</option>
                <option value="Kamiq">Kamiq</option>
                <option value="Kangoo">Kangoo</option>
                <option value="Kappa">Kappa</option>
                <option value="Karl">Karl</option>
                <option value="Karmann Ghia">Karmann Ghia</option>
                <option value="Karoq">Karoq</option>
                <option value="King Cab">King Cab</option>
                <option value="Kizashi">Kizashi</option>
                <option value="Klasa A">Klasa A</option>
                <option value="Klasa B">Klasa B</option>
                <option value="Klasa C">Klasa C</option>
                <option value="Klasa E">Klasa E</option>
                <option value="Klasa G">Klasa G</option>
                <option value="Klasa R">Klasa R</option>
                <option value="Klasa S">Klasa S</option>
                <option value="Klasa V">Klasa V</option>
                <option value="Klasa X">Klasa X</option>
                <option value="Kodiaq">Kodiaq</option>
                <option value="Koleos">Koleos</option>
                <option value="Kona">Kona</option>
                <option value="Korando">Korando</option>
                <option value="Kubistar">Kubistar</option>
                <option value="Kuga">Kuga</option>
                <option value="Kyron">Kyron</option>
                <option value="L200">L200</option>
                <option value="L300">L300</option>
                <option value="L400">L400</option>
                <option value="LC">LC</option>
                <option value="LJ">LJ</option>
                <option value="LS">LS</option>
                <option value="LT">LT</option>
                <option value="LX">LX</option>
                <option value="Lacetti">Lacetti</option>
                <option value="Lacrosse">Lacrosse</option>
                <option value="Laguna">Laguna</option>
                <option value="Lancer">Lancer</option>
                <option value="Lancer Evolution">Lancer Evolution</option>
                <option value="Land Cruiser">Land Cruiser</option>
                <option value="Lanos">Lanos</option>
                <option value="Latitude">Latitude</option>
                <option value="Laurel">Laurel</option>
                <option value="Le Baron">Le Baron</option>
                <option value="Le Sabre">Le Sabre</option>
                <option value="Leaf">Leaf</option>
                <option value="Legacy">Legacy</option>
                <option value="Leganza">Leganza</option>
                <option value="Legend">Legend</option>
                <option value="Leon">Leon</option>
                <option value="Leon Sportstourer">Leon Sportstourer</option>
                <option value="Levante">Levante</option>
                <option value="Levorg">Levorg</option>
                <option value="Liana">Liana</option>
                <option value="Liberty">Liberty</option>
                <option value="Ligier">Ligier</option>
                <option value="Linea">Linea</option>
                <option value="Lodgy">Lodgy</option>
                <option value="Logan">Logan</option>
                <option value="Logan Van">Logan Van</option>
                <option value="Lupo">Lupo</option>
                <option value="Lybra">Lybra</option>
                <option value="M">M</option>
                <option value="M-20">M-20</option>
                <option value="M.GO">M.GO</option>
                <option value="M14">M14</option>
                <option value="M2">M2</option>
                <option value="M3">M3</option>
                <option value="M4">M4</option>
                <option value="M5">M5</option>
                <option value="M6">M6</option>
                <option value="M8">M8</option>
                <option value="MC">MC</option>
                <option value="MDX">MDX</option>
                <option value="MG">MG</option>
                <option value="MGA">MGA</option>
                <option value="MGB">MGB</option>
                <option value="MGF">MGF</option>
                <option value="MK II">MK II</option>
                <option value="MKX">MKX</option>
                <option value="MKZ">MKZ</option>
                <option value="ML">ML</option>
                <option value="MP4-12C">MP4-12C</option>
                <option value="MPV">MPV</option>
                <option value="MR2">MR2</option>
                <option value="MUSSO">MUSSO</option>
                <option value="MX-3">MX-3</option>
                <option value="MX-30">MX-30</option>
                <option value="MX-5">MX-5</option>
                <option value="Macan">Macan</option>
                <option value="Magentis">Magentis</option>
                <option value="Magnum">Magnum</option>
                <option value="Malibu">Malibu</option>
                <option value="Manta">Manta</option>
                <option value="Marbella">Marbella</option>
                <option value="Marea">Marea</option>
                <option value="Mark">Mark</option>
                <option value="Mark LT">Mark LT</option>
                <option value="Marquis">Marquis</option>
                <option value="Massif">Massif</option>
                <option value="Master">Master</option>
                <option value="Materia">Materia</option>
                <option value="Matiz">Matiz</option>
                <option value="Matrix">Matrix</option>
                <option value="Maverick">Maverick</option>
                <option value="Maxima">Maxima</option>
                <option value="Media">Media</option>
                <option value="Megane">Megane</option>
                <option value="Mercury">Mercury</option>
                <option value="Meriva">Meriva</option>
                <option value="Micra">Micra</option>
                <option value="Midget">Midget</option>
                <option value="Mii">Mii</option>
                <option value="Millenia">Millenia</option>
                <option value="Mini">Mini</option>
                <option value="Mito">Mito</option>
                <option value="Model 3">Model 3</option>
                <option value="Model S">Model S</option>
                <option value="Model X">Model X</option>
                <option value="Modus">Modus</option>
                <option value="Mokka">Mokka</option>
                <option value="Mondeo">Mondeo</option>
                <option value="Mondial">Mondial</option>
                <option value="Monte Carlo">Monte Carlo</option>
                <option value="Monterey">Monterey</option>
                <option value="Montero">Montero</option>
                <option value="Monza">Monza</option>
                <option value="Movano">Movano</option>
                <option value="Mulsanne">Mulsanne</option>
                <option value="Multipla">Multipla</option>
                <option value="Multivan">Multivan</option>
                <option value="Murano">Murano</option>
                <option value="Murcielago">Murcielago</option>
                <option value="Musa">Musa</option>
                <option value="Mustang">Mustang</option>
                <option value="Mustang Mach-E">Mustang Mach-E</option>
                <option value="NP300 Pickup">NP300 Pickup</option>
                <option value="NV200">NV200</option>
                <option value="NV300">NV300</option>
                <option value="NX">NX</option>
                <option value="Navara">Navara</option>
                <option value="Navigator">Navigator</option>
                <option value="Nemo">Nemo</option>
                <option value="Neon">Neon</option>
                <option value="New Beetle">New Beetle</option>
                <option value="New Yorker">New Yorker</option>
                <option value="Niro">Niro</option>
                <option value="Nitro">Nitro</option>
                <option value="Niva">Niva</option>
                <option value="Note">Note</option>
                <option value="Nova">Nova</option>
                <option value="Nubira">Nubira</option>
                <option value="ONE">ONE</option>
                <option value="OUTBACK">OUTBACK</option>
                <option value="Octavia">Octavia</option>
                <option value="Odyssey">Odyssey</option>
                <option value="Omega">Omega</option>
                <option value="Opirus">Opirus</option>
                <option value="Optima">Optima</option>
                <option value="Orion">Orion</option>
                <option value="Orlando">Orlando</option>
                <option value="Other">Other</option>
                <option value="Outlander">Outlander</option>
                <option value="Outlook">Outlook</option>
                <option value="P 50">P 50</option>
                <option value="PS-10">PS-10</option>
                <option value="PT Cruiser">PT Cruiser</option>
                <option value="Paceman">Paceman</option>
                <option value="Pacifica">Pacifica</option>
                <option value="Pajero">Pajero</option>
                <option value="Pajero Pinin">Pajero Pinin</option>
                <option value="Palio">Palio</option>
                <option value="Panamera">Panamera</option>
                <option value="Panda">Panda</option>
                <option value="Park Avenue">Park Avenue</option>
                <option value="Park Ward">Park Ward</option>
                <option value="Partner">Partner</option>
                <option value="Paseo">Paseo</option>
                <option value="Passat">Passat</option>
                <option value="Passat CC">Passat CC</option>
                <option value="Pathfinder">Pathfinder</option>
                <option value="Patriot">Patriot</option>
                <option value="Patrol">Patrol</option>
                <option value="Phaeton">Phaeton</option>
                <option value="Phantom">Phantom</option>
                <option value="Phedra">Phedra</option>
                <option value="Picanto">Picanto</option>
                <option value="Pickup">Pickup</option>
                <option value="Pilot">Pilot</option>
                <option value="Pixo">Pixo</option>
                <option value="Polo">Polo</option>
                <option value="Pony">Pony</option>
                <option value="Portofino">Portofino</option>
                <option value="Praktik">Praktik</option>
                <option value="Prelude">Prelude</option>
                <option value="Premacy">Premacy</option>
                <option value="Previa">Previa</option>
                <option value="Primastar">Primastar</option>
                <option value="Primera">Primera</option>
                <option value="Prius">Prius</option>
                <option value="Prius+">Prius+</option>
                <option value="ProAce">ProAce</option>
                <option value="Pro_cee'd">Pro_cee'd</option>
                <option value="Proace City">Proace City</option>
                <option value="Proace City Verso">Proace City Verso</option>
                <option value="Proace Verso">Proace Verso</option>
                <option value="Probe">Probe</option>
                <option value="Protege">Protege</option>
                <option value="Prowler">Prowler</option>
                <option value="Pulsar">Pulsar</option>
                <option value="Puma">Puma</option>
                <option value="Punto">Punto</option>
                <option value="Punto 2012">Punto 2012</option>
                <option value="Punto Evo">Punto Evo</option>
                <option value="Q2">Q2</option>
                <option value="Q3">Q3</option>
                <option value="Q30">Q30</option>
                <option value="Q5">Q5</option>
                <option value="Q50">Q50</option>
                <option value="Q60">Q60</option>
                <option value="Q7">Q7</option>
                <option value="Q70">Q70</option>
                <option value="Q8">Q8</option>
                <option value="QX">QX</option>
                <option value="QX30">QX30</option>
                <option value="QX50">QX50</option>
                <option value="QX60">QX60</option>
                <option value="QX70">QX70</option>
                <option value="QX80">QX80</option>
                <option value="Qashqai">Qashqai</option>
                <option value="Qashqai+2">Qashqai+2</option>
                <option value="Quattroporte">Quattroporte</option>
                <option value="Qubo">Qubo</option>
                <option value="Quest">Quest</option>
                <option value="R-20">R-20</option>
                <option value="R8">R8</option>
                <option value="RAM">RAM</option>
                <option value="RAPID">RAPID</option>
                <option value="RAV4">RAV4</option>
                <option value="RC">RC</option>
                <option value="RCZ">RCZ</option>
                <option value="RDX">RDX</option>
                <option value="REXTON">REXTON</option>
                <option value="RL">RL</option>
                <option value="RS Q3">RS Q3</option>
                <option value="RS Q8">RS Q8</option>
                <option value="RS3">RS3</option>
                <option value="RS4">RS4</option>
                <option value="RS5">RS5</option>
                <option value="RS6">RS6</option>
                <option value="RS7">RS7</option>
                <option value="RX">RX</option>
                <option value="RX-7">RX-7</option>
                <option value="RX-8">RX-8</option>
                <option value="Ranchero">Ranchero</option>
                <option value="Range Rover">Range Rover</option>
                <option value="Range Rover Evoque">Range Rover Evoque</option>
                <option value="Range Rover Sport">Range Rover Sport</option>
                <option value="Range Rover Velar">Range Rover Velar</option>
                <option value="Ranger">Ranger</option>
                <option value="Ranger Raptor">Ranger Raptor</option>
                <option value="Rapide">Rapide</option>
                <option value="Reatta">Reatta</option>
                <option value="Regal">Regal</option>
                <option value="Regency">Regency</option>
                <option value="Rekord">Rekord</option>
                <option value="Rendezvous">Rendezvous</option>
                <option value="Renegade">Renegade</option>
                <option value="Rezzo">Rezzo</option>
                <option value="Ridgeline">Ridgeline</option>
                <option value="Rifter">Rifter</option>
                <option value="Rio">Rio</option>
                <option value="Riviera">Riviera</option>
                <option value="Road Runner">Road Runner</option>
                <option value="Roadline">Roadline</option>
                <option value="Roadmaster">Roadmaster</option>
                <option value="Roadster">Roadster</option>
                <option value="Rocky">Rocky</option>
                <option value="Rodius">Rodius</option>
                <option value="Rogue">Rogue</option>
                <option value="Ronda">Ronda</option>
                <option value="Roomster">Roomster</option>
                <option value="Routan">Routan</option>
                <option value="S 2000">S 2000</option>
                <option value="S-10">S-10</option>
                <option value="S-Max">S-Max</option>
                <option value="S-Type">S-Type</option>
                <option value="S-Type R">S-Type R</option>
                <option value="S1">S1</option>
                <option value="S3">S3</option>
                <option value="S4">S4</option>
                <option value="S40">S40</option>
                <option value="S5">S5</option>
                <option value="S6">S6</option>
                <option value="S60">S60</option>
                <option value="S7">S7</option>
                <option value="S70">S70</option>
                <option value="S8">S8</option>
                <option value="S80">S80</option>
                <option value="S90">S90</option>
                <option value="SC">SC</option>
                <option value="SJ">SJ</option>
                <option value="SL">SL</option>
                <option value="SLC">SLC</option>
                <option value="SLK">SLK</option>
                <option value="SLS">SLS</option>
                <option value="SQ5">SQ5</option>
                <option value="SQ7">SQ7</option>
                <option value="SQ8">SQ8</option>
                <option value="SRX">SRX</option>
                <option value="STS">STS</option>
                <option value="SVX">SVX</option>
                <option value="SX4">SX4</option>
                <option value="SX4 S-Cross">SX4 S-Cross</option>
                <option value="Safari">Safari</option>
                <option value="Safrane">Safrane</option>
                <option value="Samara">Samara</option>
                <option value="Samurai">Samurai</option>
                <option value="Sandero">Sandero</option>
                <option value="Sandero Stepway">Sandero Stepway</option>
                <option value="Santa Fe">Santa Fe</option>
                <option value="Santana">Santana</option>
                <option value="Savana">Savana</option>
                <option value="Saxo">Saxo</option>
                <option value="Scala">Scala</option>
                <option value="Scenic">Scenic</option>
                <option value="Scenic Conquest">Scenic Conquest</option>
                <option value="Scenic RX4">Scenic RX4</option>
                <option value="Scirocco">Scirocco</option>
                <option value="Scorpio">Scorpio</option>
                <option value="Scouty">Scouty</option>
                <option value="Scouty R">Scouty R</option>
                <option value="Scudo">Scudo</option>
                <option value="Sebring">Sebring</option>
                <option value="Sedici">Sedici</option>
                <option value="Sedona">Sedona</option>
                <option value="Seicento">Seicento</option>
                <option value="Senova X25">Senova X25</option>
                <option value="Senova X35">Senova X35</option>
                <option value="Senova X55">Senova X55</option>
                <option value="Sentra">Sentra</option>
                <option value="Sequoia">Sequoia</option>
                <option value="Seria 1">Seria 1</option>
                <option value="Seria 2">Seria 2</option>
                <option value="Seria 200">Seria 200</option>
                <option value="Seria 3">Seria 3</option>
                <option value="Seria 4">Seria 4</option>
                <option value="Seria 400">Seria 400</option>
                <option value="Seria 5">Seria 5</option>
                <option value="Seria 500">Seria 500</option>
                <option value="Seria 6">Seria 6</option>
                <option value="Seria 7">Seria 7</option>
                <option value="Seria 700">Seria 700</option>
                <option value="Seria 8">Seria 8</option>
                <option value="Seria 900">Seria 900</option>
                <option value="Seville">Seville</option>
                <option value="Sharan">Sharan</option>
                <option value="Shuma">Shuma</option>
                <option value="Siena">Siena</option>
                <option value="Sienna">Sienna</option>
                <option value="Sierra">Sierra</option>
                <option value="Sigma">Sigma</option>
                <option value="Signum">Signum</option>
                <option value="Silver Shadow">Silver Shadow</option>
                <option value="Silver Spirit">Silver Spirit</option>
                <option value="Silver Spur">Silver Spur</option>
                <option value="Silverado">Silverado</option>
                <option value="Sintra">Sintra</option>
                <option value="Sirion">Sirion</option>
                <option value="Skyline">Skyline</option>
                <option value="Sonata">Sonata</option>
                <option value="Sonica">Sonica</option>
                <option value="Sorento">Sorento</option>
                <option value="Soul">Soul</option>
                <option value="Space Gear">Space Gear</option>
                <option value="Space Runner">Space Runner</option>
                <option value="Space Star">Space Star</option>
                <option value="Space Wagon">Space Wagon</option>
                <option value="SpaceTourer">SpaceTourer</option>
                <option value="Spark">Spark</option>
                <option value="Speedster">Speedster</option>
                <option value="Spider">Spider</option>
                <option value="Spitfire">Spitfire</option>
                <option value="Splash">Splash</option>
                <option value="Sportage">Sportage</option>
                <option value="Sportwagon">Sportwagon</option>
                <option value="Sprinter">Sprinter</option>
                <option value="Starlet">Starlet</option>
                <option value="Stelvio">Stelvio</option>
                <option value="Stilo">Stilo</option>
                <option value="Stinger">Stinger</option>
                <option value="Stonic">Stonic</option>
                <option value="Strada">Strada</option>
                <option value="Stratus">Stratus</option>
                <option value="Stream">Stream</option>
                <option value="Streetka">Streetka</option>
                <option value="Streetwise">Streetwise</option>
                <option value="Suburban">Suburban</option>
                <option value="Sulky">Sulky</option>
                <option value="Sunny">Sunny</option>
                <option value="Super Seven">Super Seven</option>
                <option value="Superb">Superb</option>
                <option value="Supra">Supra</option>
                <option value="Swace">Swace</option>
                <option value="Swift">Swift</option>
                <option value="T-Cross">T-Cross</option>
                <option value="T-Roc">T-Roc</option>
                <option value="TD">TD</option>
                <option value="TF">TF</option>
                <option value="TGE">TGE</option>
                <option value="TL">TL</option>
                <option value="TR3">TR3</option>
                <option value="TR4">TR4</option>
                <option value="TR7">TR7</option>
                <option value="TSX">TSX</option>
                <option value="TT">TT</option>
                <option value="TT RS">TT RS</option>
                <option value="TT S">TT S</option>
                <option value="Tacoma">Tacoma</option>
                <option value="Tacuma">Tacuma</option>
                <option value="Tahoe">Tahoe</option>
                <option value="Talento">Talento</option>
                <option value="Talisman">Talisman</option>
                <option value="Tarraco">Tarraco</option>
                <option value="Taunus">Taunus</option>
                <option value="Taurus">Taurus</option>
                <option value="Taycan">Taycan</option>
                <option value="Tempra">Tempra</option>
                <option value="Teramont">Teramont</option>
                <option value="Tercel">Tercel</option>
                <option value="Terios">Terios</option>
                <option value="Terracan">Terracan</option>
                <option value="Terrain">Terrain</option>
                <option value="Terrano">Terrano</option>
                <option value="Testarossa">Testarossa</option>
                <option value="Thalia">Thalia</option>
                <option value="Thema">Thema</option>
                <option value="Thesis">Thesis</option>
                <option value="Thunderbird">Thunderbird</option>
                <option value="Tico">Tico</option>
                <option value="Tigra">Tigra</option>
                <option value="Tiguan">Tiguan</option>
                <option value="Tiguan Allspace">Tiguan Allspace</option>
                <option value="Tiida">Tiida</option>
                <option value="Tipo">Tipo</option>
                <option value="Titan">Titan</option>
                <option value="Tivoli">Tivoli</option>
                <option value="Toledo">Toledo</option>
                <option value="Toronado">Toronado</option>
                <option value="Touareg">Touareg</option>
                <option value="Touran">Touran</option>
                <option value="Tourneo Connect">Tourneo Connect</option>
                <option value="Tourneo Courier">Tourneo Courier</option>
                <option value="Tourneo Custom">Tourneo Custom</option>
                <option value="Town & Country">Town & Country</option>
                <option value="Town Car">Town Car</option>
                <option value="Trafic">Trafic</option>
                <option value="Trailblazer">Trailblazer</option>
                <option value="Trajet">Trajet</option>
                <option value="Trans Am">Trans Am</option>
                <option value="Trans Sport">Trans Sport</option>
                <option value="Transit">Transit</option>
                <option value="Transit Connect">Transit Connect</option>
                <option value="Transit Courier">Transit Courier</option>
                <option value="Transit Custom">Transit Custom</option>
                <option value="Transporter">Transporter</option>
                <option value="Traveller">Traveller</option>
                <option value="Traverse">Traverse</option>
                <option value="Trax">Trax</option>
                <option value="Trevis">Trevis</option>
                <option value="Trezia">Trezia</option>
                <option value="Tribeca">Tribeca</option>
                <option value="Tribute">Tribute</option>
                <option value="Tucson">Tucson</option>
                <option value="Tundra">Tundra</option>
                <option value="Twingo">Twingo</option>
                <option value="Twizy">Twizy</option>
                <option value="UX">UX</option>
                <option value="Ulysse">Ulysse</option>
                <option value="Uno">Uno</option>
                <option value="Urban Cruiser">Urban Cruiser</option>
                <option value="Urus">Urus</option>
                <option value="V40">V40</option>
                <option value="V50">V50</option>
                <option value="V60">V60</option>
                <option value="V70">V70</option>
                <option value="V8 Vantage">V8 Vantage</option>
                <option value="V90">V90</option>
                <option value="Vaneo">Vaneo</option>
                <option value="Vantage">Vantage</option>
                <option value="Vectra">Vectra</option>
                <option value="Vel Satis">Vel Satis</option>
                <option value="Veloster">Veloster</option>
                <option value="Venga">Venga</option>
                <option value="Vento">Vento</option>
                <option value="Venture">Venture</option>
                <option value="Venza">Venza</option>
                <option value="Verso">Verso</option>
                <option value="Verso S">Verso S</option>
                <option value="Viano">Viano</option>
                <option value="Viper">Viper</option>
                <option value="Virgo">Virgo</option>
                <option value="Vision">Vision</option>
                <option value="Vitara">Vitara</option>
                <option value="Vito">Vito</option>
                <option value="Vivaro">Vivaro</option>
                <option value="Volt">Volt</option>
                <option value="Voyager">Voyager</option>
                <option value="W123">W123</option>
                <option value="W124 (1984-1993)">W124 (1984-1993)</option>
                <option value="W201 (190)">W201 (190)</option>
                <option value="WRX">WRX</option>
                <option value="Wagon R+">Wagon R+</option>
                <option value="Wagoneer">Wagoneer</option>
                <option value="Willys">Willys</option>
                <option value="Wind">Wind</option>
                <option value="Windstar">Windstar</option>
                <option value="Wraith">Wraith</option>
                <option value="Wrangler">Wrangler</option>
                <option value="X 1">X 1</option>
                <option value="X-90">X-90</option>
                <option value="X-Too">X-Too</option>
                <option value="X-Too Max">X-Too Max</option>
                <option value="X-Trail">X-Trail</option>
                <option value="X-Type">X-Type</option>
                <option value="X1">X1</option>
                <option value="X2">X2</option>
                <option value="X3">X3</option>
                <option value="X3 M">X3 M</option>
                <option value="X4">X4</option>
                <option value="X5">X5</option>
                <option value="X5 M">X5 M</option>
                <option value="X6">X6</option>
                <option value="X6 M">X6 M</option>
                <option value="X7">X7</option>
                <option value="XC 40">XC 40</option>
                <option value="XC 60">XC 60</option>
                <option value="XC 70">XC 70</option>
                <option value="XC 90">XC 90</option>
                <option value="XCeed">XCeed</option>
                <option value="XE">XE</option>
                <option value="XF">XF</option>
                <option value="XG 30">XG 30</option>
                <option value="XJ">XJ</option>
                <option value="XJS">XJS</option>
                <option value="XJSC">XJSC</option>
                <option value="XK">XK</option>
                <option value="XK8">XK8</option>
                <option value="XL7">XL7</option>
                <option value="XLR">XLR</option>
                <option value="XLV">XLV</option>
                <option value="XM">XM</option>
                <option value="XT5">XT5</option>
                <option value="XTS">XTS</option>
                <option value="XV">XV</option>
                <option value="Xantia">Xantia</option>
                <option value="Xedos">Xedos</option>
                <option value="Xenon">Xenon</option>
                <option value="Xsara">Xsara</option>
                <option value="Xsara Picasso">Xsara Picasso</option>
                <option value="YRV">YRV</option>
                <option value="Yaris">Yaris</option>
                <option value="Yaris Verso">Yaris Verso</option>
                <option value="Yeti">Yeti</option>
                <option value="Ypsilon">Ypsilon</option>
                <option value="Yukon">Yukon</option>
                <option value="Z3">Z3</option>
                <option value="Z4">Z4</option>
                <option value="ZAZ 1102">ZAZ 1102</option>
                <option value="ZR">ZR</option>
                <option value="ZS">ZS</option>
                <option value="ZT">ZT</option>
                <option value="ZX">ZX</option>
                <option value="Zafira">Zafira</option>
                <option value="Zoe">Zoe</option>
                <option value="altul">altul</option>
                <option value="e-tron">e-tron</option>
                <option value="i-MiEV">i-MiEV</option>
                <option value="i10">i10</option>
                <option value="i20">i20</option>
                <option value="i25">i25</option>
                <option value="i3">i3</option>
                <option value="i30 N">i30 N</option>
                <option value="i40">i40</option>
                <option value="i8">i8</option>
                <option value="iOn">iOn</option>
                <option value="iQ">iQ</option>
                <option value="ix20">ix20</option>
                <option value="ix35">ix35</option>
                <option value="ix55">ix55</option>
                <option value="up!">up!</option>
                <option value="xA">xA</option>

              </form:select>
          </div>

          <div>

            <p align="center">
              <label class="w3-small">Type</label>
            <p align="center">
              <form:select class="w3-select w3-small" style="font-weight: normal;" id="makes" name="make" path="carType">
                <option selected="" value="convertible">Convertible</option>
                <option value="SUV">SUV</option>
                <option value="city_cars">City cars</option>
                <option value="compact">Compact</option>
                <option value="coupe">Coupe</option>
                <option value="minivan">Minivan</option>
                <option value="sedan">Sedan</option>
                <option value="small_cars">Small cars</option>
                <option value="station_wagon">Station wagon</option>


              </form:select>
          </div>

          <div>
            <!--stan samochodu-->
            <p align="center">
              <label class="w3-small">Vehicle Condition</label>
            <p align="center">
              <form:select class="w3-select w3-small" style="font-weight: normal;" id="makes" name="make" path="carCondition">
                <option selected="" value="Used">Used</option>
                <option value="New">New</option>


              </form:select>
          </div>

          <div class="w3-col l3 m6 s6 w3-padding-small" style="margin-top: 0px;">
            <p align="center">
              <label class="w3-small">Production Year </label>
            <p align="center">
              <form:input class="w3-input w3-small" id="milage_from" type="text" name="milage_from" autocomplete="off" path="productionYear" />
          	  
          	  <form:errors path="productionYear" cssClass="error" />
          	  
          </div>

          <div class="w3-col l3 m6 s6 w3-padding-small" style="margin-top: 0px;">
            <p align="center">
              <label class="w3-small">Engine power (HP) </label>
            <p align="center">
              <form:input class="w3-input w3-small" id="milage_from" type="text" name="milage_from" autocomplete="off" path="horsePower" />
          	  
          	  <form:errors path="horsePower" cssClass="error" />
          	  
          </div>

          <div class="w3-col l3 m6 s6 w3-padding-small" style="margin-top: 0px;">
            <p align="center">
              <label class="w3-small">Capacity (cm3)</label>
            <p align="center">
              <form:input class="w3-input w3-small" id="milage_from" type="text" name="milage_from" autocomplete="off" path="displacementSize" />
          
          	  <form:errors path="displacementSize" cssClass="error" />
          	  
          </div>

          <div class="w3-col l3 m6 s6 w3-padding-small" style="margin-top: 0px;">
            <p align="center">
              <label class="w3-small"> Mileage(km) </label>
            <p align="center">
              <form:input class="w3-input w3-small" id="milage_from" type="text" name="milage_from" autocomplete="off" path="mileage" />
              
              <form:errors path="mileage" cssClass="error" />
          </div>

          <div class="w3-row w3-border-left w3-border-right w3-border-black" style="padding-left: 16px; padding-right: 16px;">

          </div>


          <div>

            <p align="center">
              <label class="w3-small">Transmission</label>
            <p align="center">
              <form:select class="w3-select w3-small" style="font-weight: normal;" id="makes" name="make" path="transmission">
                <option selected="" value="Rear wheels">Rear wheels</option>
                <option value="4x4 (attached automatically)">4x4 (attached automatically)</option>
                <option value="4x4 (attached manually)">4x4 (attached manually)</option>
                <option value="4x4 (permanent)">4x4 (permanent)</option>
                <option value="Front wheels">Front wheels</option>

              </form:select>
          </div>

          <div>

            <p align="center">
              <label class="w3-small">Drive</label>
            <p align="center">
              <form:select class="w3-select w3-small" style="font-weight: normal;" id="makes" name="make" path="driveType">
                <option selected="" value="Automatic">Automatic</option>

                <option value="Manual">Manual</option>
              </form:select>
          </div>

          <div>

            <p align="center">
              <label class="w3-small">Colour</label>
            <p align="center">
              <form:select class="w3-select w3-small" style="font-weight: normal;" id="makes" name="make" path="color">
                <option selected="" value="red">Red</option>
                <option value="beige">Beige</option>
                <option value="black">Black</option>
                <option value="blue">Blue</option>
                <option value="brown">Brown</option>
                <option value="burgundy">Burgundy</option>
                <option value="golden">Golden</option>
                <option value="gray">Gray</option>
                <option value="green">Green</option>
                <option value="other">Other</option>
                <option value="silver">Silver</option>
                <option value="violet">Violet</option>
                <option value="white">White</option>
                <option value="yellow">Yellow</option>
              </form:select>
          </div>


        </div>

        <div class="w3-row w3-border-bottom w3-border-left w3-border-right w3-border-black" style="padding-left: 16px; padding-right: 16px; padding-bottom: 16px;">
          <div class="w3-col l3 m6 s6 w3-padding-small" style="margin-top: 0px;">
            <p align="center">
              <label class="w3-small">Fuel Type</label>
            <p align="center">
              <form:select class="w3-select w3-small" id="fuel" name="fuel" value="" style="border: none;" path="fuelType">
                <option value="Gasoline">Gasoline</option>
                <option value="Diesel">Diesel</option>
                <option value="Electric">Electric</option>
                <option value="Ethanol">Ethanol</option>
                <option value="Gasoline + CNG">Gasoline + CNG</option>
                <option value="Gasoline + LPG">Gasoline + LPG</option>
                <option value="Hybrid">Hybrid</option>
                <option value="Hydrogen">Hydrogen</option>
              </form:select>
          </div>

          <div class="w3-col l3 m6 s6 w3-padding-small" style="margin-top: 0px;">
            <li class="button">
              <div class="medium default btn"><input type="submit" value="Calculate" style="margin-left: 50px;"></div>
            </li>

          </div>

        </div>

      </div>
    </form:form>



    <footer>
    </footer>

    <svg id="clouds"
         xmlns="http://www.w3.org/2000/svg"
         width="2611.084"
         height="485.677"
         viewBox="0 0 2611.084 485.678">
      <title>Gray Clouds Background</title>
      <path id="Path_39" data-name="Path 39" d="M2379.709,863.793c10-93-77-171-168-149-52-114-225-105-264,15-75,3-140,59-152,133-30,2.83-66.725,9.829-93.5,26.25-26.771-16.421-63.5-23.42-93.5-26.25-12-74-77-130-152-133-39-120-212-129-264-15-54.084-13.075-106.753,9.173-138.488,48.9-31.734-39.726-84.4-61.974-138.487-48.9-52-114-225-105-264,15a162.027,162.027,0,0,0-103.147,43.044c-30.633-45.365-87.1-72.091-145.206-58.044-52-114-225-105-264,15-75,3-140,59-152,133-53,5-127,23-130,83-2,42,35,72,70,86,49,20,106,18,157,5a165.625,165.625,0,0,0,120,0c47,94,178,113,251,33,61.112,8.015,113.854-5.72,150.492-29.764a165.62,165.62,0,0,0,110.861-3.236c47,94,178,113,251,33,31.385,4.116,60.563,2.495,86.487-3.311,25.924,5.806,55.1,7.427,86.488,3.311,73,80,204,61,251-33a165.625,165.625,0,0,0,120,0c51,13,108,15,157-5a147.188,147.188,0,0,0,33.5-18.694,147.217,147.217,0,0,0,33.5,18.694c49,20,106,18,157,5a165.625,165.625,0,0,0,120,0c47,94,178,113,251,33C2446.709,1093.793,2554.709,922.793,2379.709,863.793Z" transform="translate(142.69 -634.312)" fill="#eee" />
    </svg>

  </div>

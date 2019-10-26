<div style="display: none" id="dialog">
    <span id="span_close"></span>    
    <div id="contenu_div"></div>
  </div>
 <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
{include file="$tpl_dir./errors.tpl"}
	{if !isset($priceDisplayPrecision)}
		{assign var='priceDisplayPrecision' value=2}
	{/if}
	{if !$priceDisplay || $priceDisplay == 2}
		{assign var='productPrice' value=$product->getPrice(true, $smarty.const.NULL, $priceDisplayPrecision)}
		{assign var='productPriceWithoutReduction' value=$product->getPriceWithoutReduct(false, $smarty.const.NULL)}
	{elseif $priceDisplay == 1}
		{assign var='productPrice' value=$product->getPrice(false, $smarty.const.NULL, $priceDisplayPrecision)}
		{assign var='productPriceWithoutReduction' value=$product->getPriceWithoutReduct(true, $smarty.const.NULL)}
	{/if}

<div itemscope itemtype="http://schema.org/Product"> 
</div>
  
    
    <body>
    
    <div class="container">
      <div class="row">
        <div class="col-md-1">
        </div>  
        <main class="col-md-7">
            <div class="row">
              <h2>Choix des verres <p></p></h2>
            </div>
            <!-- etape 1  -->
            <div class="row">
              <h4>1. Type des verres <p></p></h4>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="etape-style choix-e1 choisi" value="Verres simple" prix=35.00>
                  <br style="display:none">
                  <img class='tick-e1' style="display:inline-block;" src='{$base_dir}themes/theme_1413/img/verre/ok.png'>
                  <p class="text-center">
                    <img class="img-responsive centre" src="{$base_dir}themes/theme_1413/img/verre/10.png">
                    <br>Verres simples <font color=#e91e63>(35,00€)</font>
                  </p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="etape-style choix-e1 " value="Verres progressifs" prix=80.00 >
                  <br>
                  <img class='tick-e1' style="display: none;" src='{$base_dir}themes/theme_1413/img/verre/ok.png'>
                  <p class="text-center">
                    <img class="img-responsive centre" src="{$base_dir}themes/theme_1413/img/verre/9.png">
                    <br>Verres progressifs <font color=#e91e63>(80,00€)</font>
                  </p>
                </div>
              </div>
            </div>
           
            <p><hr></p>
            

            <!-- etape 2 -->
            <div class="row">
              <h4>2. Teintes des verres<p></p></h4>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="etape-style choix-e2 choisi" value="Verres transparents" prix=0 combination=0 >
                  <br style="display:none">
                  <img class='tick-e2' style="display:inline-block;" src='{$base_dir}themes/theme_1413/img/verre/ok.png'>
                  <p class="text-center">
                    <img class="img-responsive centre" src="{$base_dir}themes/theme_1413/img/verre/8.jpg">
                    <br>Verres transparents
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div  class="etape-style choix-e2" id="choix2-e2" value="Verres teintés" prix=20.00>
                  <br>
                  <img class='tick-e2' style="display:none" src='{$base_dir}themes/theme_1413/img/verre/ok.png'>
                  <p class="text-center">
                    <img class="img-responsive centre" src="{$base_dir}themes/theme_1413/img/verre/7.jpg">
                    <br>Verres teintés
                  </p>
                </div>
                <div class="row choix2-extra-e2">
                    <div class="col-md-12">
                      <br> <b>Veuillez choisir la couleur de vos verres</b> 
                      <p></p>
                    </div>
                    <div style="padding-left: 10px; padding-right: 10px;"  class="col-md-4 col-4">
                      <p class="text-center choix-extra etape-style-extra" teinte="Verres teintés" value="Gris" prix=20.00 combination=3>
                        <img class="img-responsive centre float-right" style="width: 100%" src="{$base_dir}themes/theme_1413/img/verre/4.jpg">
                        Gris
                        <br><font color=#e91e63>(20,00€)</font>
                      </p>
                    </div>
                    <div style="padding-left: 10px; padding-right: 10px;"  class="col-md-4 col-4">
                      <p class="text-center choix-extra etape-style-extra" teinte="Verres teintés" value="Brun" prix=20.00 combination=6>
                        <img class="img-responsive centre float-left" style="width: 100%" src="{$base_dir}themes/theme_1413/img/verre/2.jpg">
                         Brun
                         <br><font color=#e91e63>(20,00€)</font>
                      </p>
                    </div>
                    <div style="padding-left: 10px; padding-right: 10px;" class="col-md-4 col-4">
                      <p class="text-center choix-extra etape-style-extra" teinte="Verres teintés" value="Gris Vert " prix=20.00  combination=9>
                        <img class="img-responsive centre float-left" style="width: 100%" src="{$base_dir}themes/theme_1413/img/verre/5.png">
                        Gris Vert
                        <br><font color=#e91e63>(20,00€)</font>
                      </p>
                    </div>
                </div>
              </div>
              <div class="col-md-4">
                <div  class="etape-style choix-e2" id="choix3-e2" value="Verres photocromique" prix=60.00>
                  <br>
                  <img class='tick-e2' style="display:none" src='{$base_dir}themes/theme_1413/img/verre/ok.png'>
                  <p class="text-center">
                    <img class="img-responsive centre" src="{$base_dir}themes/theme_1413/img/verre/6.jpg">
                    <br>Verres photocromique
                  </p>
                </div>
                <div class="row choix3-extra-e2">
                    <div class="col-md-12">
                      <br> <b>Veuillez choisir la couleur de vos verres</b> 
                      <p></p>
                    </div>
                    <div style="padding-left: 10px; padding-right: 10px;"  class="col-md-4 col-4">
                      <p class="text-center choix-extra etape-style-extra" teinte="Verres photocromique" value="Brun" prix=60.00 combination=12>
                        <img class="img-responsive centre float-right" style="width: 100%" src="{$base_dir}themes/theme_1413/img/verre/1.png">
                         Brun
                        <br><font color=#e91e63>(60,00€)</font>
                      </p>
                    </div>
                    
                    <div style="padding-left: 10px; padding-right: 10px;"  class="col-md-4 col-4">
                      <p class="text-center choix-extra etape-style-extra" teinte="Verres photocromique" value="Gris" prix=60.00 combination=15>
                        <img class="img-responsive centre float-left" style="width: 100%" src="{$base_dir}themes/theme_1413/img/verre/3.png">
                        Gris
                        <br><font color=#e91e63>(60,00€)</font>
                      </p>
                    </div>
                    <div  class="col-md-4 col-4"></div>    
                </div>
              </div>
            </div>
            <p><hr></p>

            <!-- etape 3  -->
            <div class="row">
              <h4> 3. Amincissement des verres<p></p></h4>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="etape-style choix-e3 choisi" value="Indice 1.50" prix=20.00 combination=0 >
                  <br style="display:none">
                  <img class='tick-e3' style="display:inline-block;" src='{$base_dir}themes/theme_1413/img/verre/ok.png'>
                  <p class="text-center">
                    <img class="img-responsive centre" src="{$base_dir}themes/theme_1413/img/verre/14.png">
                    <br><font color=#e91e63><b>Indice 1,50</b></font>
                    <p class="text-center">Verres standards <font color=#e91e63>(20,00€)</font></p>
                    <p class="text-center"><i>Cela correspond au niveau d'aminci standard.<br><br>Options includes: Anti-reflets, Anti-rayures</i></p>
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="etape-style choix-e3" value="Indice 1.60" prix=55.00 combination=1 >
                  <br>
                  <img class='tick-e3' style="display:none" src='{$base_dir}themes/theme_1413/img/verre/ok.png'>
                  <p class="text-center">
                    <img class="img-responsive centre" src="{$base_dir}themes/theme_1413/img/verre/15.png">
                    <br><font color=#e91e63><b>Indice 1,60</b></font>
                    <p class="text-center">Verres standards <font color=#e91e63>(55,00€)</font></p>
                    <p class="text-center"><i>Cela correspond au niveau d'aminci 20% plus fin qu'un verre standard.<br>Options includes: Anti-reflets, Anti-rayures</i></p>
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="etape-style choix-e3 " value="Indice 1.67" prix=75.00 combination=2>
                  <br>
                  <img class='tick-e3' style="display:none" src='{$base_dir}themes/theme_1413/img/verre/ok.png'>
                  <p class="text-center">
                    <img class="img-responsive centre" src="{$base_dir}themes/theme_1413/img/verre/16.png">
                    <br><font color=#e91e63><b>Indice 1,67</b></font>
                    <p class="text-center">Verres standards <font color=#e91e63>(75,00€)</font></p>
                    <p class="text-center"><i>Cela correspond au niveau d'aminci 35% plus fin qu'un verre standard.<br>Options includes: Anti-reflets, Anti-rayures</i></p>
                  </p>
                </div>
              </div>
            </div>
            <p><hr></p>
            <!-- etape 4  -->
            <div class='row'>
              <h4> 4. Mes informations de correction<p></p></h4>
 
              <h5>Un compte ne peut archiver que la dernière correction renseignée. Nous recommandons par conséquent de créer un compte par personne</h5>
    
              <ul class='test_check_box'>
                  <li class='choix_correction ticked' val='Utiliser mes corrections'><img style='width:30px;height:25px;margin-left:-5px;margin-bottom:5px' src='{$base_dir}themes/theme_1413/css/box_nocheck.png' />Utiliser mes correction pour cette monture: <a  target="_blank" href="{$link->getModuleLink('corrections', 'account')|escape:'html':'UTF-8'}">Retrouvez-les ici</a></li>
                  <li class='choix_correction' val='Je télécharge mes corrections'><img style='width:30px;height:25px;margin-left:-5px;margin-bottom:5px' src='{$base_dir}themes/theme_1413/css/box_nocheck.png' />Je télécharge mes corrections (en pdf)</li>
                  <input type='file' name='userfile' id='file' />
             
                      </br>
                  <li class='choix_correction' val='Je les saisis manuellement'><img style='width:30px;height:25px;margin-left:-5px;margin-bottom:5px' src='{$base_dir}themes/theme_1413/css/box_nocheck.png' />Je saisis mes corrections manuellement</li>
              </ul>

            </div>
            <div class="row" >
              <div class="text-center col-md-2"></div>
              <div class="text-center col-md-10">
                  <div class="row" >
                      <div class="text-center col-md-3">SPHÈRE</div>
                      <div class="text-center col-md-3">CYLINDRE</div>
                      <div class="text-center col-md-3">AXE</div>
                      <div class="text-center col-md-3">ADDITTION</div>
                  </div>
              </div>
            </div>
            <hr class="etape4">
            
            <div class="row">
              <div class="col-md-2">
                OEIL GAUCHE
              </div>
              <div class="col-md-10">
                  
                  <div class="text-center align-items-center col-md-3" style="z-index: 999999 ">
                    <div  class="choix-e4-input choix-e4">0.00<span style="float:right">▼</span></div>
                    <div class=" text-center choix-e4-list row" style="display: none;z-index: 999999">
                        <div class="text-center col-md-12">OEIL GAUCHE | SPHERE</div>
                        <li val=0.00 class="col-md-12 choix-e4-oeil-gauche-sphere"> 0.00</li>
                        <div class="col-md-6">Negatif</div>
                        <div class="col-md-6">Positif</div>
                        <div class="col-md-6">
                          <ul class="text-center">
                            <script type="text/javascript">
                              for (i=-0.25;i>=-7.50;i=i-0.25){
                                if (i>-1) {
                                  var text="<li class='choix-e4-oeil-gauche-sphere' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                  document.write(text);
                                } else{
                                  var text="<li class='choix-e4-oeil-gauche-sphere' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                  document.write(text);
                                }
                              }
                            </script>
                          </ul>
                        </div>
                        <div class="col-md-6">
                          <ul class="text-center">
                            <script type="text/javascript">
                              for (i=0.25;i<=7.50;i=i+0.25){
                                if (i<1) {
                                  var text="<li class='choix-e4-oeil-gauche-sphere' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                  document.write(text);
                                } else{
                                  var text="<li class='choix-e4-oeil-gauche-sphere' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                  document.write(text);
                                }
                              }
                            </script>
                          </ul>
                        </div>
                    </div>
                  </div>

                  <div class="text-center align-items-center col-md-3">
                    <div  class="choix-e4-input choix-e4">0.00  <span style="float:right">▼</span></div>
                    <div class=" text-center choix-e4-list row" style="display: none;">
                        <div class="text-center col-md-12">OEIL GAUCHE | CYLINDRE</div>
                        <li val=0.00 class="col-md-12 choix-e4-oeil-gauche-cylindre"> 0.00 </li>
                        <div class="col-md-6">Negatif</div>
                        <div class="col-md-6">Positif</div>
                        <div class="col-md-6">
                          <ul class="text-center">
                            <script type="text/javascript">
                              for (i=-0.25;i>=-3.25;i=i-0.25){
                                if (i>-1) {
                                  var text="<li class='choix-e4-oeil-gauche-cylindre' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                  document.write(text);
                                } else{
                                  var text="<li  class='choix-e4-oeil-gauche-cylindre' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                  document.write(text);
                                }
                              }
                            </script>
                          </ul>
                        </div>
                        <div class="col-md-6">
                          <ul class="text-center">
                            <script type="text/javascript">
                              for (i=0.25;i<=3.25;i=i+0.25){
                                if (i<1) {
                                  var text="<li class='choix-e4-oeil-gauche-cylindre' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                  document.write(text);
                                } else{
                                  var text="<li class='choix-e4-oeil-gauche-cylindre' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                  document.write(text);
                                }
                              }
                            </script>
                          </ul>
                        </div>
                    </div>
                  </div>

                  <div class="text-center col-md-3">
                    <div class=" choix-e4-input choix-e4 ">0°  <span style="float:right">▼</span></div>
                    <div class=" text-center choix-e4-list row " style="display: none;">
                        <div class="text-center col-md-12">OEIL GAUCHE | AXE </div>
                        <div class="col-md-12">
                          <ul class="text-center">
                            <script type="text/javascript">
                              for (i=1;i<181;i++){
                                text="<li class='choix-e4-oeil-gauche-axe' val="+i+"°>"+i+"°</li>";
                                document.write(text);
                              }
                            </script>
                          </ul>
                        </div>
                    </div>
                  </div>
                  <div class="text-center col-md-3">
                    <div class=" choix-e4-input choix-e4 ">0 <span style="float:right">▼</span></div>
                    <div class=" text-center choix-e4-list row " style="display: none;">
                        <div class="text-center col-md-12">OEIL GAUCHE | ADD </div>
                        <div class="col-md-12">
                          <ul class="text-center">
                            <script type="text/javascript">
                              for (i=0.00;i<4;i=i+0.25){
                                var text="<li class='choix-e4-oeil-gauche-add' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                document.write(text);
                              }
                            </script>
                          </ul>
                        </div>
                    </div>
                  </div>
            </div>    
            </div>

            <hr class="etape4">

            <div class="row">
              <div class="col-md-2">
                OEIL DROIT
              </div>
              <div class="col-md-10">
                 
                      <div class="text-center align-items-center col-md-3">
                        <div  class="choix-e4-input choix-e4">0.00<span style="float:right">▼</span></div>
                        <div class=" text-center choix-e4-list row" style="display: none;">
                            <div class="text-center col-md-12">OEIL DROIT | SPHERE</div>
                            <li val=0.00 class="choix-e4-oeil-droit-sphere col-md-12"> 0.00 </li>
                            <div class="col-md-6">Negatif</div>
                            <div class="col-md-6">Positif</div>
                            <div class="col-md-6">
                              <ul class="text-center">
                                <script type="text/javascript">
                                  for (i=-0.25;i>=-7.50;i=i-0.25){
                                    if (i>-1) {
                                      var text="<li class='choix-e4-oeil-droit-sphere' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                      document.write(text);
                                    } else{
                                      var text="<li class='choix-e4-oeil-droit-sphere' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                      document.write(text);
                                    }
                                  }
                                </script>
                              </ul>
                            </div>
                            <div class="col-md-6">
                              <ul class="text-center">
                                <script type="text/javascript">
                                  for (i=0.25;i<=7.50;i=i+0.25){
                                    if (i<1) {
                                      var text="<li class='choix-e4-oeil-droit-sphere' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                      document.write(text);
                                    } else{
                                      var text="<li class='choix-e4-oeil-droit-sphere' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                      document.write(text);
                                    }
                                  }
                                </script>
                              </ul>
                            </div>
                        </div>
                      </div>

                      <div class="text-center align-items-center col-md-3">
                        <div  class="choix-e4-input choix-e4">0.00  <span style="float:right">▼</span></div>
                        <div class=" text-center choix-e4-list row" style="display: none;">
                            <div class="text-center col-md-12">OEIL DROIT | CYLINDRE</div>
                            <li val=0.00 class="choix-e4-oeil-droit-cylindre col-md-12"> 0.00</li>
                            <div class="col-md-6">Negatif</div>
                            <div class="col-md-6">Positif</div>
                            <div class="col-md-6">
                              <ul class="text-center">
                                <script type="text/javascript">
                                  for (i=-0.25;i>=-3.25;i=i-0.25){
                                    if (i>-1) {
                                      var text="<li class='choix-e4-oeil-droit-cylindre' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                      document.write(text);
                                    } else{
                                      var text="<li class='choix-e4-oeil-droit-cylindre' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                      document.write(text);
                                    }
                                  }
                                </script>
                              </ul>
                            </div>
                            <div class="col-md-6">
                              <ul class="text-center">
                                <script type="text/javascript">
                                  for (i=0.25;i<=3.25;i=i+0.25){
                                    if (i<1) {
                                      var text="<li class='choix-e4-oeil-droit-cylindre' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                      document.write(text);
                                    } else{
                                      var text="<li class='choix-e4-oeil-droit-cylindre' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                      document.write(text);
                                    }
                                  }
                                </script>
                              </ul>
                            </div>
                        </div>
                      </div>

                      <div class="text-center col-md-3">
                        <div class=" choix-e4-input choix-e4 ">0°  <span style="float:right">▼</span></div>
                        <div class=" text-center choix-e4-list row " style="display: none;">
                            <div class="text-center col-md-12">OEIL DROIT | AXE </div>
                            <div class="col-md-12">
                              <ul class="text-center">
                                <script type="text/javascript">
                                  for (i=1;i<181;i++){
                                    text="<li class='choix-e4-oeil-droit-axe' val="+i+"°>"+i+"°</li>";
                                    document.write(text);
                                  }
                                </script>
                              </ul>
                            </div>
                        </div>
                      </div>
                      
                      <div class="text-center col-md-3">
                        <div class=" choix-e4-input choix-e4 ">0  <span style="float:right">▼</span></div>
                        <div class=" text-center choix-e4-list row " style="display: none;">
                            <div class="text-center col-md-12">OEIL DROIT | ADD </div>
                            <div class="col-md-12">
                              <ul class="text-center">
                                <script type="text/javascript">
                                  for (i=0;i<4;i=i+0.25){
                                    var text="<li class='choix-e4-oeil-droit-add' val="+i.toFixed(2)+">"+i.toFixed(2)+"</li>"  ;
                                    document.write(text);
                                  }
                                </script>
                              </ul>
                            </div>
                        </div>
                      </div>
              
              </div> 
             
                   
            </div>
            <hr>
              <div class="row">
              <h4>5. Mes ecarts pupillaires<p></p></h4>
              <ul class='test_check_box'>
                  <li class='choix_ecart ticked' val='Je saisis mes écarts manuellement'><img style='width:30px;height:25px;margin-left:-5px;margin-bottom:5px' src='{$base_dir}themes/theme_1413/css/box_nocheck.png' />Vous connaissez vos écarts pupillaires</li>
                  <span style='margin-right:10px'>Oeil gauche:</span>
                  <select class='select_ecarts' id='ecart_gauche' style='width:50px'>
                      <script type="text/javascript">
                                  for (i=26;i<36;i=i+0.5){
                                    var text="<option class='option_ecarts' val="+i.toFixed(1)+">"+i.toFixed(1)+"</option>"  ;
                                    document.write(text);
                                  }
                      </script>
                  </select>
                  <span style='margin-right:10px;margin-left:10px'>Oeil droit:</span>
                  <select class='select_ecarts' id='ecart_droit' style='width:50px'>
                      <script type="text/javascript">
                                  for (i=26;i<36;i=i+0.5){
                                    var text="<option class='option_ecarts' val="+i.toFixed(1)+">"+i.toFixed(1)+"</option>"  ;
                                    document.write(text);
                                  }
                      </script>
                  </select> 
                  <li class='choix_ecart' val='Je télécharge mes écarts pupilaires'><img style='width:30px;height:25px;margin-left:-5px;margin-bottom:5px' src='{$base_dir}themes/theme_1413/css/box_nocheck.png' />Vous ne connaissez pas votre écart pupillaire, vous pouvez envoyer une photo de face</li>
                  <input type='file' name='photo' id='photo' />
             
                      </br>
                  <li class='choix_ecart' val='Je rappele plus tard'><img style='width:30px;height:25px;margin-left:-5px;margin-bottom:5px' src='{$base_dir}themes/theme_1413/css/box_nocheck.png' /> Vous ne connaissez pas cette mesure, poursuivez votre commande et faites vous rappeler</li>
              </ul>
              </div>
        </main>
       <!--  thanh info -->
       
        <div class="col-md-2">
            </br>
            </br>
            </br>
            </br>
            </br>
            </br>
          <div class="info-container">
            <div class="info-title">
                <h3>Récapitulatif de votre monture</h3>
                <p>{$product->name}</p>
            </div>
            
            <img itemprop="image" class="img-responsive" src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'tm_category_default')|escape:'html':'UTF-8'}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}"/>
            </br>
            <hr>
            <p><b>TYPE DE VERRES</b>
            <div class="row">
              <div class="col-md-9 info-type-des-verres">Verres-simple</div> 
              <div class="col-md-3 prix-type-des-verres" value=35.00>35.00€</div> 
            </div>
            </p>
            <hr>
            <p><b>TEINTES DES VERRES</b>
              <div class="row">
                <div class="col-md-9 info-teintes-des-verres">Verres-simple</div> 
                <div class="col-md-3 text-right prix-teintes-des-verres" value=0.00>0.00€</div> 
                <div class="col-md-12 info-couleur-e2"></div>
              </div>
            </p>
            <hr>
            <p><b>AMINCISSEMENT DES VERRES</b>
              <div class="row">
                <div class="col-md-9 info-amincissement-des-verres">Indice 1,50</div> 
                <div class="col-md-3 text-right prix-amincissement-des-verres" value=20.00>20.00€</div> 
              </div>
            </p>
            <hr>
            <p><b>CORRECTION</b>
              <div class="row">
                <div id='action_correction' class="col-md-12">
                    Utiliser mes corrections
                </div>    
                <div class="col-md-12 correction_yeux">
                  Oeil Gauche: 
                  <span class="info-oeil-gauche-sphere">0.00</span>|
                  <span class="info-oeil-gauche-cylindre">0.00</span>|
                  <span class="info-oeil-gauche-axe">0°</span>|
                  <span class="info-oeil-gauche-add">0.00</span>
                </div>
                <div class="col-md-12 correction_yeux">
                  Oeil Droit: 
                  <span class="info-oeil-droit-sphere">0.00</span>|
                  <span class="info-oeil-droit-cylindre">0.00</span>|
                  <span class="info-oeil-droit-axe">0°</span>|
                  <span class="info-oeil-droit-add">0.00</span>
                </div>
              </div>
            </p>
            <hr>
            <p><b>Ecart pupillaire</b>
                <div class="row">
                    <div id='action_ecart' class="col-md-12">
                        Je saisis mes écarts manuellement
                    </div>
                </div>    
            </p>    
            <p><b>TOTAL: </b><span class="somme"></span></p>
            <button type="submit" name="Submit" id="add_to_cart" onclick="ajouter()" class="btn btn-default ajax_add_to_cart_product_button">
                          <span>{l s='Add to cart'}</span>
            </button>
            
          </div>
        </div>
        <div class="col-md-2">
        </div>    
      </div>
      
      
    </div>  
           
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    </p>
    <form>
        <input type="hidden" name="verre" id="verre_choisi" value="57"></input>
        <input type="hidden" name="teinte" id="teinte_choisi" value="0"></input>
        <input type="hidden" name="amin" id="amin_choisi" value="0"></input>
        <input type="hidden" name="id_product" id="id_verre" value="37"></input>
        <input type="hidden" name="add" id="quantity" value="1"></input>
        <input type="hidden" name="id_product_attribute" id="id_product_attribute" value="57"></input>
        <input type="hidden" name="token" value="{$static_token}" id="token"/>
        <input type="hidden" name="action_verre" id="action_verre" value="{$link->getProductLink(37)}"></input>
        <input type="hidden" name="textField4" id="text_verre" value="{$product->name}"/>
        <input type="hidden" name="quantityBackup" id="quantityBackup" value=""/>
        <input type="hidden" name="submitCustomizedDatas" value="1"/>
        <input type="hidden" name="submitCustomizedDatas" id="value_text" value="textField1"/>
        <input type="hidden" name="correctionnnn" id="correction" value="Utiliser mes corrections"/>
    </form>  
    
    </div>
    <script language="javascript" type="text/javascript">
        function SaveVerre() {
            var formData1 = new FormData();
            formData1.append("id_product",$("#id_verre").val());
            formData1.append("token","{$static_token}");
            formData1.append("add",1);
            formData1.append("id_product_attribute",$("#id_product_attribute").val());
              $.ajax({
                    url: "{$link->getPageLink('cart')|escape:'html':'UTF-8'}",
                    type: 'POST',
                    data: formData1,
                    async: false,
                    success: function (data) {
                        window.location.replace("{$link->getPageLink('order')|escape:'html':'UTF-8'}");
                    },
                    cache: false,
                    contentType: false,
                    processData: false
            });

            return false;
        };
        function SaveCorrections() {
            var formData = new FormData();
            formData.append("sr",$(".info-oeil-gauche-sphere").text());
            formData.append("cr",$(".info-oeil-gauche-cylindre").text());
            formData.append("ar",$(".info-oeil-gauche-axe").text());
            formData.append("addr",$(".info-oeil-gauche-add").text());
            formData.append("sl",$(".info-oeil-droit-sphere").text());
            formData.append("cl",$(".info-oeil-droit-cylindre").text());
            formData.append("al",$(".info-oeil-droit-axe").text());
            formData.append("addl",$(".info-oeil-droit-add").text());
            $.ajax({
                    url: "{$link->getModuleLink('corrections', 'account')|escape:'html':'UTF-8'}",
                    type: 'POST',
                    data: formData,
                    async: false,
                    success: function (data) {
                            
                    },
                    cache: false,
                    contentType: false,
                    processData: false
            });
            return false;
        }; 
        function SaveCustom() {
            var formData = new FormData();
            if($("#action_correction").text()=="Je les saisis manuellement"){
                var text="{$product->name}"+"\n"+$("#action_correction").text()+"\n"+"Oeil gauche:"+$(".info-oeil-gauche-sphere").text()+"|"+$(".info-oeil-gauche-cylindre").text()+"|"+$(".info-oeil-gauche-axe").text()+"|"+$(".info-oeil-gauche-add").text()+"\n";
                text=text+"\n"+"Oeil droit:"+$(".info-oeil-droit-sphere").text()+"|"+$(".info-oeil-droit-cylindre").text()+"|"+$(".info-oeil-droit-axe").text()+"|"+$(".info-oeil-droit-add").text()+"\n"+$("#action_ecart").text();
            }
            else if($("#action_correction").text()=="Je télécharge mes corrections"){
                var text="{$product->name}"+"\n"+$("#action_correction").text()+":"+"\n"+$("#action_ecart").text();
                ajax_upload_correction();
            }else{
                var text="{$product->name}"+"\n"+$("#action_correction").text()+";"+"\n"+$("#action_ecart").text();
                SaveCorrections();
            }
            if($("#action_ecart").text()=="Je télécharge mes écarts pupilaires"){
                ajax_upload_ecart();
            }else if($("#action_ecart").text()=="Je saisis mes écarts manuellement"){
                SaveEcarts();
            }
            formData.append($("#value_text").val(),text);
            formData.append("quantityBackup","");
            formData.append("submitCustomizedDatas",1);
            url=$("#action_verre").val();
            
              $.ajax({
                    url: url,
                    type: 'POST',
                    data: formData,
                    async: false,
                    success: function (data) {
                    SaveVerre();    
                    },
                    cache: false,
                    contentType: false,
                    processData: false
            });

            return false;
        };
        function SaveEcarts() {
 //alert("save ecarts");
 			var formData = new FormData();
			formData.append("ecart_global","52.0");
                        formData.append("ecart_droite",$("#ecart_droit").val().toString());
                        formData.append("ecart_gauche",$("#ecart_gauche").val().toString());
			$.ajax({
				url: "{$link->getModuleLink('ecarts', 'account')|escape:'html':'UTF-8'}",
				type: 'POST',
				data: formData,
				async: false,
				success: function (data) {
					 //alert("success save ecarts");
				},
				cache: false,
				contentType: false,
				processData: false
			});
		
			return false;
        }; 
        function ajax_upload_correction(){
            var formData = new FormData();
			formData.append("userfile", $("#file")['0'].files['0']);
		
		
			$.ajax({
				url: "{$base_dir}ajaxentre.php",
				type: 'POST',
				data: formData,
				async: false,
				success: function (data) {
					//alert(data)
				},
				cache: false,
				contentType: false,
				processData: false
			});
		
			return false;
        };  
           
        function ajax_upload_ecart(){
            var formData = new FormData();
			formData.append("photo", $("#photo")['0'].files['0']);
		
		
			$.ajax({
				url: "{$base_dir}ajaxentre.php",
				type: 'POST',
				data: formData,
				async: false,
				success: function (data) {
					//alert(data)
				},
				cache: false,
				contentType: false,
				processData: false
			});
		
			return false;
        };
        function ajouter(){
           $("body, html").css("cursor","wait");
            var formData= new FormData();
            formData.append("id_product",{$product->id});
            formData.append("token","{$static_token}");
            formData.append("add",1);
            formData.append("id_product_attribute","");
            $.ajax({
                    url:"{$link->getPageLink('cart')|escape:'html':'UTF-8'}",
                    type: 'POST',
                    data: formData,
                    async: false,
                    success: function (data) {
                    SaveCustom();   
                    },
                    cache: false,
                    contentType: false,
                    processData: false
            });

        }
</script>
    <script>
        function calculer_id_combination(){
            verre_value=$("#verre_choisi").val();
            amin_value=$("#amin_choisi").val();
            teinte_value=$("#teinte_choisi").val();
            $("#id_product_attribute").val(parseInt(verre_value,10)+parseInt(amin_value,10)*1+parseInt(teinte_value,10));
        };
        
        function main(){
  
  /*etape1*/
  somme=($(".prix-type-des-verres").attr("value")*1+$(".prix-teintes-des-verres").attr("value")*1+$(".prix-amincissement-des-verres").attr("value")*1).toFixed(2);
  $(".somme").text(somme+"€");
  
  $(".choix-e1").click(function(){
        $(".tick-e1").hide();
        $(".choix-e1").children("br").show();
        $(this).children(".tick-e1").show();
        $(this).children("br").hide();
        $(".choix-e1").removeClass("choisi");
        $(this).addClass("choisi");
        var choix=$(this).attr("value");
        var prix=$(this).attr("prix");
        $(".info-type-des-verres").text(choix);

        if(choix=="Verres simple"){
            $("#verre_choisi").val("57");
            $("#id_verre").val("37");
            $("#value_text").val("textField1");
            $("#action_verre").val("{$link->getProductLink(37)}");
        }else{
            $("#verre_choisi").val("75");
            $("#id_verre").val("38");
            $("#value_text").val("textField2");
            $("#action_verre").val("{$link->getProductLink(38)}");
        }
        $(".prix-type-des-verres").text(prix+"€");
        $(".prix-type-des-verres").attr("value",prix);
        somme=($(".prix-type-des-verres").attr("value")*1+$(".prix-teintes-des-verres").attr("value")*1+$(".prix-amincissement-des-verres").attr("value")*1).toFixed(2);
        $(".somme").text(somme+"€");
        calculer_id_combination();
    
  });

  /*etape2*/
  $(".choix3-extra-e2").hide();
  $(".choix2-extra-e2").hide();
  $(".choix-e2").click(function(){
        $(".choix3-extra-e2").hide();
        $(".choix2-extra-e2").hide();
        $(".tick-e2").hide();
        $(".choix-e2").children("br").show();
        $(this).children(".tick-e2").show();
        $(this).children("br").hide();
        $(".choix-e2").removeClass("choisi");
        $(this).addClass("choisi");
        var choix=$(this).attr("value");
        var prix=$(this).attr("prix");

            if($(this).attr("value") == "Verres transparents"){
            $(".info-teintes-des-verres").text(choix);
            $(".info-couleur-e2").text("Couleur: transparent");
            $(".prix-teintes-des-verres").text(prix+"€");
            $(".prix-teintes-des-verres").attr("value",prix);
            somme=($(".prix-type-des-verres").attr("value")*1+$(".prix-teintes-des-verres").attr("value")*1+$(".prix-amincissement-des-verres").attr("value")*1).toFixed(2);
            $(".somme").text(somme+"€");
            $("#teinte_choisi").val($(this).attr("combination"));
            calculer_id_combination();
            $(".choix-extra").removeClass("choisi");
        }
    
 });
  $("#choix3-e2").click(function(){
    $(".choix3-extra-e2").show();

  })
  $("#choix2-e2").click(function(){
    $(".choix2-extra-e2").show();
  })
  $(".choix-extra").click(function(){
        $(".choix-extra").removeClass("choisi");
        $(this).addClass("choisi");
        var choix=$(this).attr("teinte");
        var prix=$(this).attr("prix");
        $(".info-teintes-des-verres").text(choix);
        var couleur="Couleur : "+$(this).attr("value");
        $(".info-couleur-e2").text(couleur);
        $("#teinte_choisi").val($(this).attr("combination"));
        $(".prix-teintes-des-verres").text(prix+"€");
        $(".prix-teintes-des-verres").attr("value",prix);
        somme=($(".prix-type-des-verres").attr("value")*1+$(".prix-teintes-des-verres").attr("value")*1+$(".prix-amincissement-des-verres").attr("value")*1).toFixed(2);
        $(".somme").text(somme+"€");
        calculer_id_combination();
  })
  /*etape 3*/
  
  $(".choix-e3").click(function(){
        $(".tick-e3").hide();
        $(".choix-e3").children("br").show();
        $(this).children(".tick-e3").show();
        $(this).children("br").hide();
        $(".choix-e3").removeClass("choisi");
        $(this).addClass("choisi");
        var choix=$(this).attr("value");
        var prix=$(this).attr("prix");
        $(".info-amincissement-des-verres").text(choix);
        $(".prix-amincissement-des-verres").text(prix+"€");
        $(".prix-amincissement-des-verres").attr("value",prix);
        somme=($(".prix-type-des-verres").attr("value")*1+$(".prix-teintes-des-verres").attr("value")*1+$(".prix-amincissement-des-verres").attr("value")*1).toFixed(2);
        $(".somme").text(somme+"€");
        $("#amin_choisi").val($(this).attr("combination"));
        calculer_id_combination();
  });

    /*etape 4*/

  
  /*$(".choix-e4-input").click(function(){
    $(".choix-e4-list").removeClass("VIP");
    $(this).next().addClass("VIP");
    $(".choix-e4-list").not(".VIP").hide();
    $(".VIP").toggle();
    
  })  */
  $(".choix_correction").click(function(){
    $(".choix_correction").removeClass("ticked");  
    $(this).addClass("ticked");
    $("#action_correction").html($(this).attr("val"));
    if($(this).attr("val")=="Je les saisis manuellement"){
        $(".correction_yeux").show();
    }else{
        $(".correction_yeux").hide();
    }
  })
  $(".choix_ecart").click(function(){
    $(".choix_ecart").removeClass("ticked");  
    $(this).addClass("ticked");
    $("#action_ecart").html($(this).attr("val"));
    if($(this).attr("val")=="Je saisis mes écarts manuellement"){
        $(".ecart_yeux").show();
    }else{
        $(".ecart_yeux").hide();
    }
  })
  $(".choix-e4-input").click(function(){
    $(this).next().toggle();
    $(".choix-e4-list").not($(this).next()).hide();
  })

  $("li").click(function(){
    var value=$(this).attr("val"); 
    $(this).closest(".choix-e4-list").prev().html(value+"<span style='float:right'>▼</span>");
    $(this).closest(".choix-e4-list").hide();
  })

  $(".choix-e4-oeil-gauche-sphere").click(function(){
    var choix=$(this).attr("val");
    $(".info-oeil-gauche-sphere").text(choix);
  })
  $(".choix-e4-oeil-gauche-cylindre").click(function(){
    var choix=$(this).attr("val");
    $(".info-oeil-gauche-cylindre").text(choix);
  })
  $(".choix-e4-oeil-gauche-axe").click(function(){
    var choix=$(this).attr("val");
    $(".info-oeil-gauche-axe").text(choix);
  })
  $(".choix-e4-oeil-gauche-add").click(function(){
    var choix=$(this).attr("val");
    $(".info-oeil-gauche-add").text(choix);
  })
  $(".choix-e4-oeil-droit-sphere").click(function(){
    var choix=$(this).attr("val");
    $(".info-oeil-droit-sphere").text(choix);
  })
  $(".choix-e4-oeil-droit-cylindre").click(function(){
    var choix=$(this).attr("val");
    $(".info-oeil-droit-cylindre").text(choix);
  })
  $(".choix-e4-oeil-droit-axe").click(function(){
    var choix=$(this).attr("val");
    $(".info-oeil-droit-axe").text(choix);
  })
   $(".choix-e4-oeil-droit-add").click(function(){
    var choix=$(this).attr("val");
    $(".info-oeil-droit-add").text(choix);
  })
  
}
$(document).ready(main);

    </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  
    </p>

  
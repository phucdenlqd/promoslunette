

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
    
    <div class="container">
      <div class="row">
        <main class="col-md-9">
            <div class="row">
              <h2>Choix des verres <p></p></h2>
            </div>
            <!-- etape 1  -->
            <div class="row">
              <h4>1. Type des verres <p></p></h4>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="etape-style choix-e1 choisi" value="Verres-simple" prix=35.00>
                  <br style="display:none">
                  <img class='tick-e1' style="display:inline-block;" src='img/ok.png'>
                  <p class="text-center">
                    <img class="img-fluid" src="img/10.png">
                    <br>Verres simples <font color=#e91e63>(35,00€)</font>
                  </p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="etape-style choix-e1 " value="Verres-progressifs" prix=80.00 >
                  <br>
                  <img class='tick-e1' style="display: none;" src='img/ok.png'>
                  <p class="text-center">
                    <img class="img-fluid" src="img/9.png">
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
                <div class="etape-style choix-e2 choisi" >
                  <br style="display:none">
                  <img class='tick-e2' style="display:inline-block;" src='img/ok.png'>
                  <p class="text-center">
                    <img class="img-fluid" src="img/8.jpg">
                    <br>Verres transparents
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div  class="etape-style choix-e2">
                  <br>
                  <img class='tick-e2' style="display:none" src='img/ok.png'>
                  <p class="text-center">
                    <img class="img-fluid" src="img/7.jpg">
                    <br>Verres teintés
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div  class="etape-style choix-e2" id="choix3-e2">
                  <br>
                  <img class='tick-e2' style="display:none" src='img/ok.png'>
                  <p class="text-center">
                    <img class="img-fluid" src="img/6.jpg">
                    <br>Verres photocromique
                  </p>
                  <div class="row choix-extra-e2">
                    <div class="col-md-4">
                      <p class="text-center choix-extra">
                        <img class="img-fluid float-right" src="img/1.png">
                        <br> Brun
                      </p>
                    </div>
                    <div class="col-md-4">
                      <p class="text-center choix-extra">
                        <img class="img-fluid" src="img/2.jpg">
                        <br> Brun
                      </p>
                    </div>
                    <div class="col-md-4">
                      <p class="text-center choix-extra">
                        <img class="img-fluid float-left" src="img/3.png">
                        <br> Brun
                      </p>
                    </div>
                    <div class="col-md-4">
                      <p class="text-center choix-extra">
                        <img class="img-fluid float-right" src="img/4.jpg">
                        <br> Brun
                      </p>
                    </div>
                    <div class="col-md-4">
                      <p class="text-center choix-extra">
                        <img class="img-fluid float-left" src="img/5.png">
                        <br> Brun
                      </p>
                    </div>
                  </div>
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
                <div class="etape-style choix-e3 choisi" >
                  <br style="display:none">
                  <img class='tick-e3' style="display:inline-block;" src='img/ok.png'>
                  <p class="text-center">
                    <img class="img-fluid" src="img/8.jpg">
                    <br><font color=#e91e63><b>Indice 1.5</b></font>
                    <p class="text-center">Verres standards <font color=#e91e63>(20,00€)</font></p>
                    <p class="text-center"><i>Cela correspond au niveau d'aminci standard.<br>Options includes: Anti-reflets, Anti-rayures</i></p>
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="etape-style choix-e3" >
                  <br>
                  <img class='tick-e3' style="display:none" src='img/ok.png'>
                  <p class="text-center">
                    <img class="img-fluid" src="img/8.jpg">
                    <br><font color=#e91e63><b>Indice 1.6</b></font>
                    <p class="text-center">Verres standards <font color=#e91e63>(55,00€)</font></p>
                    <p class="text-center"><i>Cela correspond au niveau d'aminci 20% plus fin qu'un verre standard.<br>Options includes: Anti-reflets, Anti-rayures</i></p>
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="etape-style choix-e3 " >
                  <br>
                  <img class='tick-e3' style="display:none" src='img/ok.png'>
                  <p class="text-center">
                    <img class="img-fluid" src="img/8.jpg">
                    <br><font color=#e91e63><b>Indice 1.5</b></font>
                    <p class="text-center">Verres standards <font color=#e91e63>(75,00€)</font></p>
                    <p class="text-center"><i>Cela correspond au niveau d'aminci 35% plus fin qu'un verre standard.<br>Options includes: Anti-reflets, Anti-rayures</i></p>
                  </p>
                </div>
              </div>
            </div>
            <p><hr></p>
            <!-- etape 4  -->
            <div>
              <h4> 4. Mes informations de correction<p></p></h4>
              <p>
                Télécharger mon ordonnance et vos corrections
                <br><button>Choose File</button>
                <br>Saisir ma corection manuellement
              </p>
            </div>
            <div class="row" >
              <div class="text-center col-md-3"></div>
              <div class="text-center col-md-3">SPHÈRE</div>
              <div class="text-center col-md-3">CYLINDRE</div>
              <div class="text-center col-md-3">AXE</div>
            </div>
            <hr class="etape4">
            
            <div class="row">
              <div class="col-md-3">
                OEIL DROIT
              </div>

              <div class="text-center align-items-center col-md-3">
                <div  class="choix-e4-input choix-e4">0.00 (PLan) <span style="float:right">▼</span></div>
                <div class=" text-center choix-e4-list row" style="display: none;">
                    <div class="text-center col-md-12">OEIL GAUCHE | SPHERE</div>
                    <div class="col-md-6">Negatif</div>
                    <div class="col-md-6">Positif</div>
                    <div class="col-md-6">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=-0.25;i>=-7.00;i=i-0.25){
                            if (i>-1) {
                              var text="<li value="+i.toPrecision(2)+">"+i.toPrecision(2)+"</li>"  ;
                              document.write(text);
                            } else{
                              var text="<li value="+i.toPrecision(3)+">"+i.toPrecision(3)+"</li>"  ;
                              document.write(text);
                            }
                          }
                        </script>
                      </ul>
                    </div>
                    <div class="col-md-6">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=0.25;i<=7.00;i=i+0.25){
                            if (i<1) {
                              var text="<li value="+i.toPrecision(2)+">"+i.toPrecision(2)+"</li>"  ;
                              document.write(text);
                            } else{
                              var text="<li value="+i.toPrecision(3)+">"+i.toPrecision(3)+"</li>"  ;
                              document.write(text);
                            }
                          }
                        </script>
                      </ul>
                    </div>
                </div>
              </div>

              <div class="text-center align-items-center col-md-3">
                <div  class="choix-e4-input choix-e4">0.00 (PLan) <span style="float:right">▼</span></div>
                <div class=" text-center choix-e4-list row" style="display: none;">
                    <div class="text-center col-md-12">OEIL GAUCHE | CYLINDRE</div>
                    <div class="col-md-6">Negatif</div>
                    <div class="col-md-6">Positif</div>
                    <div class="col-md-6">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=-0.25;i>=-7.00;i=i-0.25){
                            if (i>-1) {
                              var text="<li value="+i.toPrecision(2)+">"+i.toPrecision(2)+"</li>"  ;
                              document.write(text);
                            } else{
                              var text="<li value="+i.toPrecision(3)+">"+i.toPrecision(3)+"</li>"  ;
                              document.write(text);
                            }
                          }
                        </script>
                      </ul>
                    </div>
                    <div class="col-md-6">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=0.25;i<=7.00;i=i+0.25){
                            if (i<1) {
                              var text="<li value="+i.toPrecision(2)+">"+i.toPrecision(2)+"</li>"  ;
                              document.write(text);
                            } else{
                              var text="<li value="+i.toPrecision(3)+">"+i.toPrecision(3)+"</li>"  ;
                              document.write(text);
                            }
                          }
                        </script>
                      </ul>
                    </div>
                </div>
              </div>

              <div class="text-center col-md-3">
                <div class=" choix-e4-input choix-e4 ">0° (PLan) <span style="float:right">▼</span></div>
                <div class=" text-center choix-e4-list row " style="display: none;">
                    <div class="text-center col-md-12">OEIL GAUCHE | AXE </div>
                    <div class="col-md-12">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=1;i<181;i++){
                            text="<li value="+i+"°>"+i+"°</li>";
                            document.write(text);
                          }
                        </script>
                      </ul>
                    </div>
                </div>
              </div>
            </div>

            <hr class="etape4">

            <div class="row">
              <div class="col-md-3">
                OEIL GAUCHE
              </div>

              <div class="text-center align-items-center col-md-3">
                <div  class="choix-e4-input choix-e4">0.00 (PLan) <span style="float:right">▼</span></div>
                <div class=" text-center choix-e4-list row" style="display: none;">
                    <div class="text-center col-md-12">OEIL GAUCHE | SPHERE</div>
                    <div class="col-md-6">Negatif</div>
                    <div class="col-md-6">Positif</div>
                    <div class="col-md-6">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=-0.25;i>=-7.00;i=i-0.25){
                            if (i>-1) {
                              var text="<li value="+i.toPrecision(2)+">"+i.toPrecision(2)+"</li>"  ;
                              document.write(text);
                            } else{
                              var text="<li value="+i.toPrecision(3)+">"+i.toPrecision(3)+"</li>"  ;
                              document.write(text);
                            }
                          }
                        </script>
                      </ul>
                    </div>
                    <div class="col-md-6">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=0.25;i<=7.00;i=i+0.25){
                            if (i<1) {
                              var text="<li value="+i.toPrecision(2)+">"+i.toPrecision(2)+"</li>"  ;
                              document.write(text);
                            } else{
                              var text="<li value="+i.toPrecision(3)+">"+i.toPrecision(3)+"</li>"  ;
                              document.write(text);
                            }
                          }
                        </script>
                      </ul>
                    </div>
                </div>
              </div>

              <div class="text-center align-items-center col-md-3">
                <div  class="choix-e4-input choix-e4">0.00 (PLan) <span style="float:right">▼</span></div>
                <div class=" text-center choix-e4-list row" style="display: none;">
                    <div class="text-center col-md-12">OEIL GAUCHE | CYLINDRE</div>
                    <div class="col-md-6">Negatif</div>
                    <div class="col-md-6">Positif</div>
                    <div class="col-md-6">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=-0.25;i>=-7.00;i=i-0.25){
                            if (i>-1) {
                              var text="<li value="+i.toPrecision(2)+">"+i.toPrecision(2)+"</li>"  ;
                              document.write(text);
                            } else{
                              var text="<li value="+i.toPrecision(3)+">"+i.toPrecision(3)+"</li>"  ;
                              document.write(text);
                            }
                          }
                        </script>
                      </ul>
                    </div>
                    <div class="col-md-6">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=0.25;i<=7.00;i=i+0.25){
                            if (i<1) {
                              var text="<li value="+i.toPrecision(2)+">"+i.toPrecision(2)+"</li>"  ;
                              document.write(text);
                            } else{
                              var text="<li value="+i.toPrecision(3)+">"+i.toPrecision(3)+"</li>"  ;
                              document.write(text);
                            }
                          }
                        </script>
                      </ul>
                    </div>
                </div>
              </div>

              <div class="text-center col-md-3">
                <div class=" choix-e4-input choix-e4 ">0° (PLan) <span style="float:right">▼</span></div>
                <div class=" text-center choix-e4-list row " style="display: none;">
                    <div class="text-center col-md-12">OEIL GAUCHE | AXE </div>
                    <div class="col-md-12">
                      <ul class="text-center">
                        <script type="text/javascript">
                          for (i=1;i<181;i++){
                            text="<li value="+i+"°>"+i+"°</li>";
                            document.write(text);
                          }
                        </script>
                      </ul>
                    </div>
                </div>
              </div>
            </div>
        </main>
       <!--  thanh info -->
        <div class="col-md-3">
          <div class="container info-container">
            <div class="info-title">
              Récapitulatif de votre 
            </div>
            <p>Votre conture</p>
            <p><b>TYPE DE VERRES</b></p>
            <div class="row">
              <div class="col-md-9 info-type-de-verres">Verres-simple</div> 
              <div class="col-md-3 text-right prix-type-de-verres">35.00€</div> 
            </div>
            </p>
            <p><b>TEINTES DES VERRES</b>
              <p>
                
              </p>
            </p>
            <p><b>AMINCISSEMENT DES VERRES</b>
              <p>
                
              </p>
            </p>
            <p><b>MES INFORMATIONS DE CORRECTION</b>
              <p>
                
              </p>
            </p>
          </div>
        </div>
      </div>
      
      
    </div>  
    <script>
        function main(){
	
	/*etape1*/
	
	
	$(".choix-e1").click(function(){
		$(".tick-e1").hide();
		$(".choix-e1").children("br").show();
		$(this).children(".tick-e1").show();
		$(this).children("br").hide();
		$(".choix-e1").removeClass("choisi");
		$(this).addClass("choisi");
		var choix=$(this).attr("value");
		var prix=$(this).attr("prix");
		$(".info-type-de-verres").text(choix);
		$(".prix-type-de-verres").text(prix+"�");
	});

	/*etape2*/
	$(".choix-extra-e2").hide();
	$(".choix-e2").click(function(){
		$(".choix-extra-e2").hide();
		$(".tick-e2").hide();
		$(".choix-e2").children("br").show();
		$(this).children(".tick-e2").show();
		$(this).children("br").hide();
		$(".choix-e2").removeClass("choisi");
		$(this).addClass("choisi");
	});
	$("#choix3-e2").click(function(){
		$(".choix-extra-e2").show();
	})
	$(".choix-extra").click(function(){
		$(".choix-extra").removeClass("choisi");
		$(this).addClass("choisi");
	})
	/*etape 3*/
	
	$(".choix-e3").click(function(){
		$(".tick-e3").hide();
		$(".choix-e3").children("br").show();
		$(this).children(".tick-e3").show();
		$(this).children("br").hide();
		$(".choix-e3").removeClass("choisi");
		$(this).addClass("choisi");
	});

		/*etape 4*/

	
	/*$(".choix-e4-input").click(function(){
		$(".choix-e4-list").removeClass("VIP");
		$(this).next().addClass("VIP");
		$(".choix-e4-list").not(".VIP").hide();
		$(".VIP").toggle();
		
	})	*/

	$(".choix-e4-input").click(function(){
		$(this).next().toggle();
		$(".choix-e4-list").not($(this).next()).hide();
	})

	$("li").click(function(){
		var value=$(this).attr("value"); 
		$(this).closest(".choix-e4-list").prev().html(value+"<span style='float:right'>?</span>");
		$(this).closest(".choix-e4-list").hide();
	})

        }
        $(document).ready(main);

    </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  
    </p>
  </body>
</html>
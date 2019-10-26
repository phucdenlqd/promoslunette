{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}
  {if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
    <ul id="home-page-tabs" style="justify-content: normal" class="nav nav-tabs clearfix">
      {$HOOK_HOME_TAB}
    </ul>
  {/if}
  <style>
      #etape_commande div div img{
          display:block;
          margin:auto;
          width:48px;
          height:48px;
      }
      #etape_commande div div ul{
          list-style-type: square;
      }
      #etape_commande div div p {
          margin-bottom:0px;
      }
      #etape_commande div div ul li{
          display:inline-block;
          list-style-type: square;
          margin-right: 5px
      }
      @media (max-width:768px){
          #etape_commande div div img{
          display:inline-block !important;
          margin:auto;
          width:48px;
          height:48px;
      }
         #etape_commande div{
             text-align:left;
      }
        #etape_commande div div img:first-child{
            margin-right:40px;
        }
        #etape_commande div div img:last-child{
           display:none !important;
        }
      }
  </style>
  <div class="tab-content">{$HOOK_HOME_TAB_CONTENT}</div>
{*
  <div id="etape_commande" class='row' style="text-align: center;background-color:#f1709f;margin-right: 20px;">
      <h1> 4 ETAPE COMMANDE</h1>
      <div class="col-md-3 col-sm-6 col-xs-12" >
          <div class='col-sm-12 col-xs-4'>
          <img  src="{$base_dir_ssl}img/etapecommande/rechercher.png" />
          <img  src="{$base_dir_ssl}img/etapecommande/1.png" />
          </div>
          <div class='col-sm-12 col-xs-8'>
          <h2>ENVOYEZ-NOUS VOTRE ORDONNANCE</h2>
          <p>Par e-mail ou courrier</p>
          </div>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12" >
          <div class='col-sm-12 col-xs-4'>
          <img src="{$base_dir_ssl}img/etapecommande/Ordonnance.png" />
          <img src="{$base_dir_ssl}img/etapecommande/2.png" />
          </div>
          <div class='col-sm-12 col-xs-8'>
          <h2>TROUVEZ & CHOISISSEZ</h2>
          <p>Une ou plusieurs montures</p>
          <p>Ainsi que des verres</p>
          </div>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12" >
          <div class='col-sm-12 col-xs-4'>
          <img src="{$base_dir_ssl}img/etapecommande/Paiement.png" />
          <img src="{$base_dir_ssl}img/etapecommande/3.png" />
          </div>
          <div class='col-sm-12 col-xs-8'>
          <h2>RECEVEZ VOTRE COMMANDE</h2>
          <p>Directement chez vous!</p>
          </div>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
          <div class='col-sm-12 col-xs-4'>
          <img src="{$base_dir_ssl}img/etapecommande/Recevez-votre-colis.png" />
          <img src="{$base_dir_ssl}img/etapecommande/4.png" />
          </div>
          <div class='col-sm-12 col-xs-8'>
          <h2>PAYEZ VOTRE COMMANDE</h2>
          <p>En toute sécurité à l'aide: </p>
            <ul>
                <li>-Votre CB</li>
                <li>-Paypal</li>
                <li>-Un chèque</li>
            </ul>
          </div>
      </div>
      
  </div>
*}
{addJsDef comparedProductsIds=$compared_products}
{/if}

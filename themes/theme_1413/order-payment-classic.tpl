<div class="paiement_block">
  <div id="HOOK_TOP_PAYMENT">{$HOOK_TOP_PAYMENT}</div>
  {if $HOOK_PAYMENT}
    {if !$opc}
        <div class="row">
            <div class="col-lg-8">
                <span style="font: 1.8em bold">{l s='Choissiez votre méthode de paiement'}</span>
                <div id="HOOK_PAYMENT">
                  {$HOOK_PAYMENT}
                </div>
            </div>
            <div class="col-lg-4">
                <span style="font: 1.8em bold">{l s='Votre panier'}</span>
                <div style="border:solid 1px #ff61ae; padding: 5px 10px 5px 10px;max-width:370px " id="cart_summary_Hung">
                    {foreach from=$products item=product name=productLoop}
                        <div class="row">
                            <div class="col-lg-3">
                                <a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category, null, null, $product.id_shop, $product.id_product_attribute, false, false, true)|escape:'html':'UTF-8'}"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'cart_default')|escape:'html':'UTF-8'}" alt="{$product.name|escape:'html':'UTF-8'}" /></a>
                            </div>
                            <div style="text-align:left" class="col-lg-9">
                                <p class="product-name"><a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category, null, null, $product.id_shop, $product.id_product_attribute, false, false, true)|escape:'html':'UTF-8'}">{$product.name|escape:'html':'UTF-8'}</a></p>
                                {capture name=sep} : {/capture}
                                {capture}{l s=' : '}{/capture}
                                {if isset($product.attributes) && $product.attributes}
                                  <small>
                                    <a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category, null, null, $product.id_shop, $product.id_product_attribute, false, false, true)|escape:'html':'UTF-8'}">
                                      {$product.attributes|@replace: $smarty.capture.sep:$smarty.capture.default|escape:'html':'UTF-8'}
                                    </a>
                                  </small>

                                {/if}
                                <p style="margin-bottom: 0px">{l s='Quantité:' }
                                      <span style="font-size:1.2em;font-weight:bold;color:#ff61ae;">
                                        {if isset($product.attributes) && $product.attributes}
                                          {$product.customizationQuantityTotal}
                                        {else}
                                          {$product.cart_quantity}
                                        {/if}
                                      </span>
                                </p>
                                <p style="margin-bottom: 0px">{l s='Prix'}
                                    <span style="font-size:1.2em;font-weight:bold;color:#ff61ae;">
                                        {if isset($product.attributes) && $product.attributes}
                                          {if !$priceDisplay}{displayPrice price=$product.total_customization_wt}{else}{displayPrice price=$product.total_customization}{/if}
                                        {else}
                                          {if !$priceDisplay}{displayPrice price=$product.total_wt}{else}{displayPrice price=$product.total}{/if}
                                        {/if}
                                    </span>
                                </p>
                            </div>
                        </div>
                                    <hr>
                    {/foreach}
                    <div class="row">
                        <div class="col-sm-3">
                            <p style="font:1.2em bold" >{l s='Frais de port: '}</p>
                        </div>
                        <div class="col-sm-9">
                        {if $total_shipping_tax_exc <= 0 && (!isset($isVirtualCart) || !$isVirtualCart) && $free_ship}
                            <span style="font-size:1.2em;font-weight:bold;color:#ff61ae;">{l s='Free Shipping!'}</span>
                        {else}
                          {if $use_taxes && $total_shipping_tax_exc != $total_shipping}
                            {if $priceDisplay}
                                <span  style="font-size:1.2em;font-weight:bold;color:#ff61ae;">{displayPrice price=$shippingCostTaxExc}</span>
                            {else}
                                <span  style="font-size:1.2em;font-weight:bold;color:#ff61ae;">{displayPrice price=$shippingCost}</span>
                            {/if}
                          {else}
                              <span  style="font-size:1.2em;font-weight:bold;color:#ff61ae;">{displayPrice price=$shippingCostTaxExc}</span>
                          {/if}
                        {/if}

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <p style="font:1.2em bold">{l s='Total: '}</p>
                        </div>
                       <div class="col-sm-9">
                            <span style="font-size:1.2em;font-weight:bold;color:#ff61ae;">
                                {if $use_taxes}
                                  {if $total_tax != 0 && $show_taxes}
                                    {if $priceDisplay != 0}
                                      {displayPrice price=$total_price_without_tax}
                                    {/if}
                                    {displayPrice price=$total_tax}
                                  {/if}
                                     {displayPrice price=$total_price}
                                {else}
                                    {if $voucherAllowed}
                                          {if $voucherAllowed}

                                                {if $displayVouchers}

                                                {/if}
                                          {/if}

                                    {/if}
                                     {displayPrice price=$total_price_without_tax}
                                {/if}
                            </span>
                       </div>
                    </div>
                </div>
            </div>
        </div>

    {/if}
    {if $opc}
      <div id="opc_payment_methods-content">
    {/if}
    <div id="HOOK_PAYMENT" style="height:0px;width:1px;overflow:hidden ">
      <div class="old">
        {$HOOK_PAYMENT}
      </div>

    </div>
    <div class="new">
          <input type="radio" checked="true" id="radiocarte" name="payment" class="payment-radio" value="cartebancaire">
          <label for="cartebancaire" style="font-size:1.2em;color:#404041" onclick="$('#radiocarte').prop('checked', true )"><img style='width:86px'  src="{$base_dir_ssl}img/payment/cards.jpg" /><span style="font-weight:bold"> CB VISA MASTERCARD </span></label>
          </br>
{*
          <input type="radio" style="display:none" checked="true" id="radiocartemulti" name="payment" class="payment-radio" value="cartemulti">
          <label for="cartemulti" style="font-size:1.2em;color:#f1709f" onclick="$('#radiocartemulti').prop('checked', true )"><img style='width:86px' src="{$base_dir_ssl}img/payment/cards_multi.jpg" /><span style="font-weight:bold"> {l s='PAIEMENT PLUSIEURS FOIS'} </span></label>
          </br>
*}
          <input type="radio" id="radiopaypal" name="payment" class="payment-radio" value="paypal">
          <label for="paypal" style="font-size:1.2em;color:#404041" onclick="$('#radiopaypal').prop('checked', true )"><img style='width:86px'  src="{$base_dir_ssl}img/payment/paypal.jpg" /><span style="font-weight:bold"> PAYPAL </span></label>
      </div>
      <a onclick="ConfirmerPayment()" style="
    padding: 4px 8px;
    border: 1px solid #ff2f92;
    border-radius: 6px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    font-size: 15px;
    color: #ffffff !important;
    font-weight: bold;
    text-decoration: none;
    width:50%;
    cursor:pointer;
    text-shadow: 1px 1px 0 #ff2f92;
    text-align: center;
    text-transform: none;
    background: #FFC431;
    background: -webkit-gradient( linear,left top,left bottom,color-stop(0.05,#ff2f92),color-stop(1,#ff2f92) );
    background: -moz-linear-gradient( center top,#ff2f92 5%,#ff2f92 100% );
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffd772',endColorstr='#ffc32a');
    box-shadow: inset 0 1px 0 0 #fff6af;
    -moz-box-shadow: inset 0 1px 0 0 #fff6af;
    -webkit-box-shadow: inset 0 1px 0 0 #fff6af;
"><span>{l s='Payer maintenant'}</span></a>
    {if $opc}
      </div> <!-- end opc_payment_methods-content -->
    {/if}
  {else}
    <p class="alert alert-warning">{l s='No payment modules have been installed.'}</p>
  {/if}
  {if !$opc}
    <p class="cart_navigation clearfix">
      <a href="{$link->getPageLink('order', true, NULL, "step=2")|escape:'html':'UTF-8'}" title="{l s='Previous'}" class="btn btn-default icon-left">
        <span>{l s='Continue shopping'}</span>
      </a>
    </p>
  {else}
    </div> <!-- end opc_payment_methods -->
  {/if}
</div> <!-- end HOOK_TOP_PAYMENT -->
<script>
    function ConfirmerPayment(){
        var cgv= $("#cgv");
        if(!cgv.is(":checked")){
            alert('Veuillez accepter la condition générale de vente');
        }else{
           var myElem = document.getElementById('systempay_standard');
            if (myElem === null) {
                alert('Veuillez se connecter pour payer');
            }else{
                if($("#radiocarte").is(":checked")){
                    $('#systempay_standard').submit();
                }
                if($("#radiopaypal").is(":checked")){
                    $('#paypal_payment_form_payment').submit();
                }
                if($("#radiocartemulti").is(":checked")){
                    $('#systempay_multi').click();
                }
            }
        };

    }
</script>

{if $opc}
  {assign var="back_order_page" value="order-opc.php"}
{else}
  {assign var="back_order_page" value="order.php"}
{/if}

{if $PS_CATALOG_MODE}
  {capture name=path}{l s='Your shopping cart'}{/capture}
  <h2 id="cart_title">{l s='Your shopping cart'}</h2>
  <p class="alert alert-warning">{l s='Your new order was not accepted.'}</p>
{else}
  {if $productNumber}
    <div class="row">
    <!-- Shopping Cart -->

    <!-- End Shopping Cart -->
    <div class="col-md-4" style='float:left'>

     {if $is_logged && !$is_guest}
      {include file="$tpl_dir./order-address.tpl"}
    {else}
      <!-- Create account / Guest account / Login block -->
      {include file="$tpl_dir./order-opc-new-account.tpl"}
      <!-- END Create account / Guest account / Login block -->
    {/if}
    </div>
    <!-- Carrier -->
    <div class="col-md-8" style='float:left'>

        <div class="row">
            <div class="col-md-12 col-lg-6" style='float:left'>
                {include file="$tpl_dir./shopping-cart.tpl"}
            </div>
            <div class="col-lg-6"></div>
            <div class="col-md-6 col-lg-6" style='float:left'>
                 {include file="$tpl_dir./order-carrier.tpl"}
            </div>
            <div class="col-md-6 col-lg-6" style='float:left'>
            </div>
            <div class="col-md-6 col-lg-6" style='float:left'>
                 {include file="$tpl_dir./order-payment.tpl"}
            </div>
        </div>


    </div>
    <!-- END Carrier -->

    <!-- Payment -->

    <!-- END Payment -->
    </div>
  {else}
    {capture name=path}{l s='Your shopping cart'}{/capture}
    <h1 class="page-heading">{l s='Your shopping cart'}</h1>
    {include file="$tpl_dir./errors.tpl"}
    <p class="alert alert-warning">{l s='Your shopping cart is empty.'}</p>
  {/if}

  {strip}
    {addJsDef imgDir=$img_dir}
    {addJsDef authenticationUrl=$link->getPageLink("authentication", true)|escape:'quotes':'UTF-8'}
    {addJsDef orderOpcUrl=$link->getPageLink("order-opc", true)|escape:'quotes':'UTF-8'}
    {addJsDef historyUrl=$link->getPageLink("history", true)|escape:'quotes':'UTF-8'}
    {addJsDef guestTrackingUrl=$link->getPageLink("guest-tracking", true)|escape:'quotes':'UTF-8'}
    {addJsDef addressUrl=$link->getPageLink("address", true, NULL, "back={$back_order_page}")|escape:'quotes':'UTF-8'}
    {addJsDef orderProcess='order-opc'}
    {addJsDef guestCheckoutEnabled=$PS_GUEST_CHECKOUT_ENABLED|intval}
    {addJsDef displayPrice=$priceDisplay}
    {addJsDef taxEnabled=$use_taxes}
    {addJsDef conditionEnabled=$conditions|intval}
    {addJsDef vat_management=$vat_management|intval}
    {addJsDef errorCarrier=$errorCarrier|@addcslashes:'\''}
    {addJsDef errorTOS=$errorTOS|@addcslashes:'\''}
    {addJsDef checkedCarrier=$checked|intval}
    {addJsDef addresses=array()}
    {addJsDef isVirtualCart=$isVirtualCart|intval}
    {addJsDef isPaymentStep=$isPaymentStep|intval}
    {addJsDefL name=txtWithTax}{l s='(tax incl.)' js=1}{/addJsDefL}
    {addJsDefL name=txtWithoutTax}{l s='(tax excl.)' js=1}{/addJsDefL}
    {addJsDefL name=txtHasBeenSelected}{l s='has been selected' js=1}{/addJsDefL}
    {addJsDefL name=txtNoCarrierIsSelected}{l s='No carrier has been selected' js=1}{/addJsDefL}
    {addJsDefL name=txtNoCarrierIsNeeded}{l s='No carrier is needed for this order' js=1}{/addJsDefL}
    {addJsDefL name=txtConditionsIsNotNeeded}{l s='You do not need to accept the Terms of Service for this order.' js=1}{/addJsDefL}
    {addJsDefL name=txtTOSIsAccepted}{l s='The service terms have been accepted' js=1}{/addJsDefL}
    {addJsDefL name=txtTOSIsNotAccepted}{l s='The service terms have not been accepted' js=1}{/addJsDefL}
    {addJsDefL name=txtThereis}{l s='There is' js=1}{/addJsDefL}
    {addJsDefL name=txtErrors}{l s='Error(s)' js=1}{/addJsDefL}
    {addJsDefL name=txtDeliveryAddress}{l s='Delivery address' js=1}{/addJsDefL}
    {addJsDefL name=txtInvoiceAddress}{l s='Invoice address' js=1}{/addJsDefL}
    {addJsDefL name=txtModifyMyAddress}{l s='Modify my address' js=1}{/addJsDefL}
    {addJsDefL name=txtInstantCheckout}{l s='Instant checkout' js=1}{/addJsDefL}
    {addJsDefL name=txtSelectAnAddressFirst}{l s='Please start by selecting an address.' js=1}{/addJsDefL}
    {addJsDefL name=txtFree}{l s='Free' js=1}{/addJsDefL}

    {capture}{if $back}&mod={$back|urlencode}{/if}{/capture}
    {capture name=addressUrl}{$link->getPageLink('address', true, NULL, 'back='|cat:$back_order_page|cat:'?step=1'|cat:$smarty.capture.default)|escape:'quotes':'UTF-8'}{/capture}
    {addJsDef addressUrl=$smarty.capture.addressUrl}
    {capture}{'&multi-shipping=1'|urlencode}{/capture}
    {addJsDef addressMultishippingUrl=$smarty.capture.addressUrl|cat:$smarty.capture.default}
    {capture name=addressUrlAdd}{$smarty.capture.addressUrl|cat:'&id_address='}{/capture}
    {addJsDef addressUrlAdd=$smarty.capture.addressUrlAdd}
    {addJsDef opc=$opc|boolval}
    {capture}<h3 class="page-subheading">{l s='Your billing address' js=1}</h3>{/capture}
    {addJsDefL name=titleInvoice}{$smarty.capture.default|@addcslashes:'\''}{/addJsDefL}
    {capture}<h3 class="page-subheading">{l s='Your delivery address' js=1}</h3>{/capture}
    {addJsDefL name=titleDelivery}{$smarty.capture.default|@addcslashes:'\''}{/addJsDefL}
    {capture}
      <a class="btn-sm btn btn-success" href="{$smarty.capture.addressUrlAdd}" title="{l s='Update' js=1}">
        <span>
          {l s='Update' js=1}
          <i class="fa fa-refresh right"></i>
        </span>
      </a>
    {/capture}
    {addJsDefL name=liUpdate}{$smarty.capture.default|@addcslashes:'\''}{/addJsDefL}
  {/strip}
{/if}

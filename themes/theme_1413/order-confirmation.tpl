{capture name=path}{l s='Order confirmation'}{/capture}

<h1 class="page-heading">{l s='Order confirmation'}</h1>

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

{include file="$tpl_dir./errors.tpl"}

{$HOOK_ORDER_CONFIRMATION}
{$HOOK_PAYMENT_RETURN}
 <img src=https://tracking.lengow.com/lead.php?idClient=8975&idGroup=20055&price={$total_payer_lengow}&idCommande={$id_order_lengow} alt=“” border=“0”/>
<img src=https://tracking.lengow.com/leadValidation.php?idClient=8975&idGroup=20055&idCommande={$id_order_lengow} alt=“” />
{if $is_guest}
  <p>{l s='Your order ID is:'} <span class="bold">{$id_order_formatted}</span> . {l s='Your order ID has been sent via email.'}</p>
  <p class="cart_navigation">
    <a class="btn btn-default" href="{$link->getPageLink('guest-tracking', true, NULL, "id_order={$reference_order|urlencode}&email={$email|urlencode}")|escape:'html':'UTF-8'}" title="{l s='Follow my order'}">
      <i class="fa fa-chevron-left"></i>
      {l s='Follow my order'}
    </a>
  </p>
{else}
  <p class="cart_navigation">
    <a class="btn btn-default" href="{$link->getPageLink('history', true)|escape:'html':'UTF-8'}" title="{l s='Go to your order history page'}">
      <i class="fa fa-chevron-left"></i>
      {l s='View your order history'}
    </a>
  </p>
{/if}
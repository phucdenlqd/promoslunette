<tr id="product_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}" class="cart_item{if isset($productLast) && $productLast && (!isset($ignoreProductLast) || !$ignoreProductLast)} last_item{/if}{if isset($productFirst) && $productFirst} first_item{/if}{if isset($customizedDatas.$productId.$productAttributeId) && $quantityDisplayed == 0} alternate_item{/if} address_{$product.id_address_delivery|intval} {if $odd}odd{else}even{/if}">
  <td style="padding:0px" class="cart_product">
    <a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category, null, null, $product.id_shop, $product.id_product_attribute, false, false, true)|escape:'html':'UTF-8'}"><img style="margin: 0 auto;" src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'cart_default')|escape:'html':'UTF-8'}" alt="{$product.name|escape:'html':'UTF-8'}" /></a>
  </td>
  <td colspan="1"  class="cart_description" data-title="{l s='Description'}">
    {capture name=sep} : {/capture}
    {capture}{l s=' : '}{/capture}
    <p class="product-name"><a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category, null, null, $product.id_shop, $product.id_product_attribute, false, false, true)|escape:'html':'UTF-8'}">{$product.name|escape:'html':'UTF-8'}</a></p>
    {if isset($product.attributes) && $product.attributes}
      <small>
        <a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category, null, null, $product.id_shop, $product.id_product_attribute, false, false, true)|escape:'html':'UTF-8'}">
          {$product.attributes|@replace: $smarty.capture.sep:$smarty.capture.default|escape:'html':'UTF-8'}
        </a>
      </small>
    {/if}
  </td>
  {*
  {if $PS_STOCK_MANAGEMENT}
    <td class="cart_avail">
      <span class="label{if $product.quantity_available <= 0 && isset($product.allow_oosp) && !$product.allow_oosp} label-danger{elseif $product.quantity_available <= 0} label-warning{else} label-success{/if}">
        {if $product.quantity_available <= 0}
          {if isset($product.allow_oosp) && $product.allow_oosp}
            {if isset($product.available_later) && $product.available_later}
              {$product.available_later}{else}{l s='In Stock'}
            {/if}
          {else}
            {l s='Out of stock'}
          {/if}
        {else}
          {if isset($product.available_now) && $product.available_now}
            {$product.available_now}
          {else}
            {l s='In Stock'}
          {/if}
        {/if}
      </span>
      {if !$product.is_virtual}
        {hook h="displayProductDeliveryTime" product=$product}
      {/if}
     </td>
  {/if}
  *}
  {*
  <td class="cart_unit" data-title="{l s='Unit price'}">
    <span class="price" id="product_price_{$product.id_product}_{$product.id_product_attribute}{if $quantityDisplayed > 0}_nocustom{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}">
      {if !empty($product.gift)}
        <span class="gift-icon">{l s='Gift!'}</span>
      {else}
        {if !$priceDisplay}
          <span class="price{if isset($product.is_discounted) && $product.is_discounted && isset($product.reduction_applies) && $product.reduction_applies} special-price{/if}">{convertPrice price=$product.price_wt}</span>
        {else}
          <span class="price{if isset($product.is_discounted) && $product.is_discounted && isset($product.reduction_applies) && $product.reduction_applies} special-price{/if}">{convertPrice price=$product.price}</span>
        {/if}
        {if isset($product.is_discounted) && $product.is_discounted && isset($product.reduction_applies) && $product.reduction_applies}
          <span class="price-percent-reduction small">
            {if !$priceDisplay}
              {if isset($product.reduction_type) && $product.reduction_type == 'amount'}
                {assign var='priceReduction' value=($product.price_wt - $product.price_without_specific_price)}
                {assign var='symbol' value=$currency->sign}
              {else}
                {assign var='priceReduction' value=(($product.price_without_specific_price - $product.price_wt)/$product.price_without_specific_price) * 100 * -1}
                {assign var='symbol' value='%'}
              {/if}
            {else}
              {if isset($product.reduction_type) && $product.reduction_type == 'amount'}
                {assign var='priceReduction' value=($product.price - $product.price_without_specific_price)}
                {assign var='symbol' value=$currency->sign}
              {else}
                {assign var='priceReduction' value=(($product.price_without_specific_price - $product.price)/$product.price_without_specific_price) * -100}
                {assign var='symbol' value='%'}
              {/if}
            {/if}
            {if $symbol == '%'}
              &nbsp;{$priceReduction|string_format:"%.2f"|regex_replace:"/[^\d]0+$/":""}{$symbol}&nbsp;
            {else}
              &nbsp;{convertPrice price=$priceReduction}&nbsp;
            {/if}
          </span>
          <span class="old-price">{convertPrice price=$product.price_without_specific_price}</span>
        {/if}
      {/if}
    </span>
  </td>
  *}

  <td class="cart_quantity text-center" data-title="{l s='Quantity'}">
    {if (isset($cannotModify) && $cannotModify == 1)}
      <span>
        {if $quantityDisplayed == 0 && isset($customizedDatas.$productId.$productAttributeId)}
          {$product.customizationQuantityTotal}
        {else}
          {$product.cart_quantity-$quantityDisplayed}
        {/if}
      </span>
    {else}
      {if isset($customizedDatas.$productId.$productAttributeId) && $quantityDisplayed == 0}
        <span id="cart_quantity_custom_{$product.id_product}_{$product.id_product_attribute}_{$product.id_address_delivery|intval}" >{$product.customizationQuantityTotal}</span>
      {/if}
      {if !isset($customizedDatas.$productId.$productAttributeId) || $quantityDisplayed > 0}
        <input type="hidden" value="{if $quantityDisplayed == 0 && isset($customizedDatas.$productId.$productAttributeId)}{$customizedDatas.$productId.$productAttributeId|@count}{else}{$product.cart_quantity-$quantityDisplayed}{/if}" name="quantity_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}_hidden" />
        <input size="2" type="text" autocomplete="off" class="cart_quantity_input form-control grey" value="{if $quantityDisplayed == 0 && isset($customizedDatas.$productId.$productAttributeId)}{$customizedDatas.$productId.$productAttributeId|@count}{else}{$product.cart_quantity-$quantityDisplayed}{/if}" name="quantity_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}" />
        <div class="cart_quantity_button clearfix">
        {if $product.minimal_quantity < ($product.cart_quantity-$quantityDisplayed) || $product.minimal_quantity <= 1}
          <a rel="nofollow" class="cart_quantity_down btn btn-default button-minus" id="cart_quantity_down_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}" href="{$link->getPageLink('cart', true, NULL, "add=1&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_address_delivery={$product.id_address_delivery|intval}&amp;op=down&amp;token={$token_cart}")|escape:'html':'UTF-8'}" title="{l s='Subtract'}">
            <span>
              <i class="fa fa-minus"></i>
            </span>
          </a>
        {else}
          <a class="cart_quantity_down btn btn-default button-minus disabled" href="#" id="cart_quantity_down_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}" title="{l s='You must purchase a minimum of %d of this product.' sprintf=$product.minimal_quantity}">
            <span>
              <i class="fa fa-minus"></i>
            </span>
          </a>
        {/if}
          <a rel="nofollow" class="cart_quantity_up btn btn-default button-plus" id="cart_quantity_up_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}" href="{$link->getPageLink('cart', true, NULL, "add=1&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_address_delivery={$product.id_address_delivery|intval}&amp;token={$token_cart}")|escape:'html':'UTF-8'}" title="{l s='Add'}">
            <span>
              <i class="fa fa-plus"></i>
            </span>
          </a>
        </div>
      {/if}
    {/if}
  </td>
  <td colspan="1" class="cart_total" data-title="{l s='Total'}">
    <span class="price" style="font-size:15px"  id="total_product_price_{$product.id_product}_{$product.id_product_attribute}{if $quantityDisplayed > 0}_nocustom{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}">
      {if !empty($product.gift)}
        <span class="gift-icon">{l s='Gift!'}</span>
      {else}
        {if $quantityDisplayed == 0 && isset($customizedDatas.$productId.$productAttributeId)}
          {if !$priceDisplay}{displayPrice price=$product.total_customization_wt}{else}{displayPrice price=$product.total_customization}{/if}
        {else}
          {if !$priceDisplay}{displayPrice price=$product.total_wt}{else}{displayPrice price=$product.total}{/if}
        {/if}
      {/if}
    </span>
    {hook h='displayCartExtraProductActions' product=$product}
  
  </td>
  {*
  {if !isset($noDeleteButton) || !$noDeleteButton}
    <td class="cart_delete text-center" data-title="{l s='Delete'}">
    {if (!isset($customizedDatas.$productId.$productAttributeId) || $quantityDisplayed > 0) && empty($product.gift)}
     tesststst
          <a rel="nofollow" title="{l s='Delete'}" class="cart_quantity_delete" id="{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}" href="{$link->getPageLink('cart', true, NULL, "delete=1&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_address_delivery={$product.id_address_delivery|intval}&amp;token={$token_cart}")|escape:'html':'UTF-8'}"><i class="fa fa-trash-o"></i>5555</a>
      
    {else}
    {/if}
    </td>
  {/if}
  *}
</tr>
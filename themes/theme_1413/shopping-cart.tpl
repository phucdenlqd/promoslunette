{capture name=path}{l s='Your shopping cart'}{/capture}

<h4 id="cart_title" class="">
   {* <a 
      href="{if (isset($smarty.server.HTTP_REFERER) && ($smarty.server.HTTP_REFERER == $link->getPageLink('order', true) || $smarty.server.HTTP_REFERER == $link->getPageLink('order-opc', true) || strstr($smarty.server.HTTP_REFERER, 'step='))) || !isset($smarty.server.HTTP_REFERER)}{$link->getPageLink('index')}{else}{$smarty.server.HTTP_REFERER|escape:'html':'UTF-8'|secureReferrer}{/if}"
      class="btn btn-default btn-md icon-left"
      title="{l s='Continue shopping'}">
        <span>{l s='Continue shopping'}</span>
</a>*}
{l s='Shopping-cart summary'}
</h4>


{if isset($account_created)}
  <p class="alert alert-success">
    {l s='Your account has been created.'}
  </p>
{/if}

{assign var='current_step' value='summary'}
{include file="$tpl_dir./order-steps.tpl"}
{include file="$tpl_dir./errors.tpl"}

{if isset($empty)}
  <p class="alert alert-warning">{l s='Your shopping cart is empty.'}</p>
{elseif $PS_CATALOG_MODE}
  <p class="alert alert-warning">{l s='This store has not accepted your new order.'}</p>
{else}
  <p id="emptyCartWarning" class="alert alert-warning unvisible">{l s='Your shopping cart is empty.'}</p>
  {if isset($lastProductAdded) && $lastProductAdded}
    <div class="cart_last_product">
      <div class="cart_last_product_header">
        <div class="left">{l s='Last product added'}</div>
      </div>
      <a class="cart_last_product_img" href="{$link->getProductLink($lastProductAdded.id_product, $lastProductAdded.link_rewrite, $lastProductAdded.category, null, null, $lastProductAdded.id_shop)|escape:'html':'UTF-8'}">
        <img src="{$link->getImageLink($lastProductAdded.link_rewrite, $lastProductAdded.id_image, 'tm_small_default')|escape:'html':'UTF-8'}" alt="{$lastProductAdded.name|escape:'html':'UTF-8'}"/>
      </a>
      <div class="cart_last_product_content">
        <p class="product-name">
          <a href="{$link->getProductLink($lastProductAdded.id_product, $lastProductAdded.link_rewrite, $lastProductAdded.category, null, null, null, $lastProductAdded.id_product_attribute)|escape:'html':'UTF-8'}">
            {$lastProductAdded.name|escape:'html':'UTF-8'}
          </a>
        </p>
        {if isset($lastProductAdded.attributes) && $lastProductAdded.attributes}
          <small>
            <a href="{$link->getProductLink($lastProductAdded.id_product, $lastProductAdded.link_rewrite, $lastProductAdded.category, null, null, null, $lastProductAdded.id_product_attribute)|escape:'html':'UTF-8'}">
              {$lastProductAdded.attributes|escape:'html':'UTF-8'}
            </a>
          </small>
        {/if}
      </div>
    </div>
  {/if}
  {assign var='total_discounts_num' value="{if $total_discounts != 0}1{else}0{/if}"}
  {assign var='use_show_taxes' value="{if $use_taxes && $show_taxes}2{else}0{/if}"}
  {assign var='total_wrapping_taxes_num' value="{if $total_wrapping != 0}2{else}0{/if}"}
  {* eu-legal *}
  {hook h="displayBeforeShoppingCartBlock"}
  <div class="row">
  <div id="order-detail-content" class="table_block table-responsive">
    <table style="margin-bottom:0px" id="cart_summary"  class="table table-bordered {if $PS_STOCK_MANAGEMENT}stock-management-on{else}stock-management-off{/if}">
      <thead>
        <tr>
          <th class="cart_product first_item">{l s='Product'}</th>
          <th colspan="1" class="cart_description item">{l s='Description'}</th>
          {*
          {if $PS_STOCK_MANAGEMENT}
            {assign var='col_span_subtotal' value='3'}
            <th class="cart_avail item">{l s='Avail.'}</th>
          {else}
            {assign var='col_span_subtotal' value='2'}
          {/if}
          <th class="cart_unit item">{l s='Unit price'}</th>
          *}
          <th class="cart_quantity item">{l s='Qty'}</th>
          <th class="cart_total item">{l s='Total'}</th>
          {*
          <th class="cart_delete last_item">&nbsp;</th>
          *}
        </tr>
      </thead>
      <tfoot>
        {assign var='rowspan_total' value=2+$total_discounts_num+$total_wrapping_taxes_num}
        {if $use_taxes && $show_taxes && $total_tax != 0}
          {assign var='rowspan_total' value=$rowspan_total+1}
        {/if}

        {if $priceDisplay != 0}
          {assign var='rowspan_total' value=$rowspan_total+1}
        {/if}

        {if $total_shipping_tax_exc <= 0 && (!isset($isVirtualCart) || !$isVirtualCart) && $free_ship}
          {assign var='rowspan_total' value=$rowspan_total+1}
        {else}
          {if $use_taxes && $total_shipping_tax_exc != $total_shipping}
            {if $priceDisplay && $total_shipping_tax_exc > 0}
              {assign var='rowspan_total' value=$rowspan_total+1}
            {elseif $total_shipping > 0}
              {assign var='rowspan_total' value=$rowspan_total+1}
            {/if}
          {elseif $total_shipping_tax_exc > 0}
            {assign var='rowspan_total' value=$rowspan_total+1}
          {/if}
        {/if}
        {if $use_taxes}
          {if $priceDisplay}
            <tr class="cart_total_price">
              {*  
              <td rowspan="{$rowspan_total}" colspan="2" id="cart_voucher" class="cart_voucher">
                {if $voucherAllowed}
                  <form action="{if $opc}{$link->getPageLink('order-opc', true)}{else}{$link->getPageLink('order', true)}{/if}" method="post" id="voucher">
                    <fieldset>
                      <h4>{l s='Vouchers'}</h4>
                      <input type="text" class="discount_name form-control" id="discount_name" name="discount_name" value="{if isset($discount_name) && $discount_name}{$discount_name}{/if}" />
                      <input type="hidden" name="submitDiscount" />
                      <button type="submit" name="submitAddDiscount" class="btn btn-default btn-sm">
                        <span>{l s='OK'}</span>
                      </button>
                    </fieldset>
                  </form>
                  {if $displayVouchers}
                    <p id="title" class="title-offers">{l s='Take advantage of our exclusive offers:'}</p>
                    <div id="display_cart_vouchers">
                      {foreach $displayVouchers as $voucher}
                        {if $voucher.code != ''}<span class="voucher_name" data-code="{$voucher.code|escape:'html':'UTF-8'}">{$voucher.code|escape:'html':'UTF-8'}</span> - {/if}{$voucher.name}<br />
                      {/foreach}
                    </div>
                  {/if}
                {/if}
              </td>
              *}
              <td colspan="3" class="text-right">{if $display_tax_label}{l s='Total products (tax excl.)'}{else}{l s='Total products'}{/if}</td>
              <td colspan="1" style="font-size:15px"  class="price" id="total_product">{displayPrice price=$total_products}</td>
            </tr>
          {else}
            <tr class="cart_total_price">
             {* 
              <td rowspan="{$rowspan_total}" colspan="2" id="cart_voucher" class="cart_voucher">
                {if $voucherAllowed}
                  <form action="{if $opc}{$link->getPageLink('order-opc', true)}{else}{$link->getPageLink('order', true)}{/if}" method="post" id="voucher">
                    <fieldset>
                      <h4>{l s='Vouchers'}</h4>
                      <input type="text" class="discount_name form-control" id="discount_name" name="discount_name" value="{if isset($discount_name) && $discount_name}{$discount_name}{/if}" />
                      <input type="hidden" name="submitDiscount" />
                      <button type="submit" name="submitAddDiscount" class="btn btn-default btn-sm"><span>{l s='OK'}</span></button>
                    </fieldset>
                  </form>
                  {if $displayVouchers}
                    <p id="title" class="title-offers">{l s='Take advantage of our exclusive offers:'}</p>
                    <div id="display_cart_vouchers">
                      {foreach $displayVouchers as $voucher}
                        {if $voucher.code != ''}<span class="voucher_name" data-code="{$voucher.code|escape:'html':'UTF-8'}">{$voucher.code|escape:'html':'UTF-8'}</span> - {/if}{$voucher.name}<br />
                      {/foreach}
                    </div>
                  {/if}
                {/if}
              </td>
              *}
              <td colspan="3" class="text-right">{if $display_tax_label}{l s='Total products (tax incl.)'}{else}{l s='Total products'}{/if}</td>
              <td colspan="1" style="font-size:15px"  class="price" id="total_product">{displayPrice price=$total_products_wt}</td>
            </tr>
          {/if}
        {else}
          <tr class="cart_total_price">
              {*
            <td rowspan="{$rowspan_total}" colspan="2" id="cart_voucher" class="cart_voucher">
              {if $voucherAllowed}
                <form action="{if $opc}{$link->getPageLink('order-opc', true)}{else}{$link->getPageLink('order', true)}{/if}" method="post" id="voucher">
                  <fieldset>
                    <h4>{l s='Vouchers'}</h4>
                    <input type="text" class="discount_name form-control" id="discount_name" name="discount_name" value="{if isset($discount_name) && $discount_name}{$discount_name}{/if}" />
                    <input type="hidden" name="submitDiscount" />
                    <button type="submit" name="submitAddDiscount" class="btn btn-default btn-sm">
                      <span>{l s='OK'}</span>
                    </button>
                  </fieldset>
                </form>
                {if $displayVouchers}
                  <p id="title" class="title-offers">{l s='Take advantage of our exclusive offers:'}</p>
                  <div id="display_cart_vouchers">
                    {foreach $displayVouchers as $voucher}
                      {if $voucher.code != ''}<span class="voucher_name" data-code="{$voucher.code|escape:'html':'UTF-8'}">{$voucher.code|escape:'html':'UTF-8'}</span> - {/if}{$voucher.name}<br />
                    {/foreach}
                  </div>
                {/if}
              {/if}
            </td>
            *}
            <td colspan="3" class="text-right">{l s='Total products'}</td>
            <td colspan="1" style="font-size:15px"  class="price" id="total_product">{displayPrice price=$total_products}</td>
          </tr>
        {/if}
        <tr{if $total_wrapping == 0} style="display: none;"{/if}>
          <td colspan="3" class="text-right">
            {if $use_taxes}
              {if $display_tax_label}{l s='Total gift wrapping (tax incl.)'}{else}{l s='Total gift-wrapping cost'}{/if}
            {else}
              {l s='Total gift-wrapping cost'}
            {/if}
          </td>
          <td colspan="1" style="font-size:15px"  class="price-discount price" id="total_wrapping">
            {if $use_taxes}
              {if $priceDisplay}
                {displayPrice price=$total_wrapping_tax_exc}
              {else}
                {displayPrice price=$total_wrapping}
              {/if}
            {else}
              {displayPrice price=$total_wrapping_tax_exc}
            {/if}
          </td>
        </tr>
        {if $total_shipping_tax_exc <= 0 && (!isset($isVirtualCart) || !$isVirtualCart) && $free_ship}
          <tr class="cart_total_delivery{if !$opc && (!isset($cart->id_address_delivery) || !$cart->id_address_delivery)} unvisible{/if}">
            <td colspan="3" class="text-right">{l s='Total shipping'}</td>
            <td colspan="1" style="font-size:15px" class="price" id="total_shipping">{l s='Gratuit!'}</td>
          </tr>
        {else}
          {if $use_taxes && $total_shipping_tax_exc != $total_shipping}
            {if $priceDisplay}
              <tr class="cart_total_delivery{if $total_shipping_tax_exc <= 0} unvisible{/if}">
                <td colspan="3" class="text-right">{if $display_tax_label}{l s='Total shipping (tax excl.)'}{else}{l s='Total shipping'}{/if}</td>
                <td colspan="1" style="font-size:15px"  class="price" id="total_shipping">{displayPrice price=$total_shipping_tax_exc}</td>
              </tr>
            {else}
              <tr class="cart_total_delivery{if $total_shipping <= 0} unvisible{/if}">
                <td colspan="3" class="text-right">{if $display_tax_label}{l s='Total shipping (tax incl.)'}{else}{l s='Total shipping'}{/if}</td>
                <td colspan="1" style="font-size:15px"  class="price" id="total_shipping" >{displayPrice price=$total_shipping}</td>
              </tr>
            {/if}
          {else}
            <tr class="cart_total_delivery{if $total_shipping_tax_exc <= 0} unvisible{/if}">
              <td colspan="3" class="text-right">{l s='Total shipping'}</td>
              <td colspan="1" style="font-size:15px"  class="price" id="total_shipping" >{displayPrice price=$total_shipping_tax_exc}</td>
            </tr>
          {/if}
        {/if}
        <tr class="cart_total_voucher{if $total_discounts == 0} unvisible{/if}">
          <td colspan="3" class="text-right">
            {if $display_tax_label}
              {if $use_taxes && $priceDisplay == 0}
                {l s='Total vouchers (tax incl.)'}
              {else}
                {l s='Total vouchers (tax excl.)'}
              {/if}
            {else}
              {l s='Total vouchers'}
            {/if}
          </td>
          <td colspan="1" style="font-size:15px"  class="price-discount price" id="total_discount">
            {if $use_taxes && $priceDisplay == 0}
              {assign var='total_discounts_negative' value=$total_discounts * -1}
            {else}
              {assign var='total_discounts_negative' value=$total_discounts_tax_exc * -1}
            {/if}
            {displayPrice price=$total_discounts_negative}
          </td>
        </tr>
        {if $use_taxes && $show_taxes && $total_tax != 0 }
          {if $priceDisplay != 0}
            <tr class="cart_total_price">
              <td colspan="3" class="text-right">{if $display_tax_label}{l s='Total (tax excl.)'}{else}{l s='Total'}{/if}</td>
              <td colspan="1" style="font-size:15px"  class="price" id="total_price_without_tax">{displayPrice price=$total_price_without_tax}</td>
            </tr>
          {/if}
          <tr class="cart_total_tax">
            <td colspan="3" class="text-right">{l s='Tax'}</td>
            <td colspan="1" style="font-size:15px"  class="price" id="total_tax">{displayPrice price=$total_tax}</td>
          </tr>
        {/if}
        <tr class="cart_total_price">
          <td colspan="3" class="total_price_container text-right">
            <p style="margin:0px 0px 0px">{l s='Total'}</p>
            <div class="hookDisplayProductPriceBlock-price">
              {hook h="displayCartTotalPriceLabel"}
            </div>
          </td>
          {if $use_taxes}
            <td colspan="1" class="price" id="total_price_container">
              <span style="font-size:15px"  id="total_price">{displayPrice price=$total_price}</span>
            </td>
          {else}
            <td colspan="1" class="price" id="total_price_container">
              <span style="font-size:15px"  id="total_price">{displayPrice price=$total_price_without_tax}</span>
            </td>
          {/if}
        </tr>
      </tfoot>
      <tbody>
        {assign var='odd' value=0}
        {assign var='have_non_virtual_products' value=false}
        {foreach $products as $product}
          {if $product.is_virtual == 0}
            {assign var='have_non_virtual_products' value=true}            
          {/if}
          {assign var='productId' value=$product.id_product}
          {assign var='productAttributeId' value=$product.id_product_attribute}
          {assign var='quantityDisplayed' value=0}
          {assign var='odd' value=($odd+1)%2}
          {assign var='ignoreProductLast' value=isset($customizedDatas.$productId.$productAttributeId) || count($gift_products)}
          {* Display the product line *}
          {include file="$tpl_dir./shopping-cart-product-line.tpl" productLast=$product@last productFirst=$product@first}
          {* Then the customized datas ones*}
          {if isset($customizedDatas.$productId.$productAttributeId[$product.id_address_delivery])}
            {foreach $customizedDatas.$productId.$productAttributeId[$product.id_address_delivery] as $id_customization=>$customization}
              <tr
                id="product_{$product.id_product}_{$product.id_product_attribute}_{$id_customization}_{$product.id_address_delivery|intval}"
                class="product_customization_for_{$product.id_product}_{$product.id_product_attribute}_{$product.id_address_delivery|intval}{if $odd} odd{else} even{/if} customization alternate_item {if $product@last && $customization@last && !count($gift_products)}last_item{/if}">
                <td></td>
                <td colspan="1">
                  {foreach $customization.datas as $type => $custom_data}
                    {if $type == $CUSTOMIZE_FILE}
                      <div class="customizationUploaded">
                        <ul class="customizationUploaded">
                          {foreach $custom_data as $picture}
                            <li><img src="{$pic_dir}{$picture.value}_small" alt="" class="customizationUploaded" /></li>
                          {/foreach}
                        </ul>
                      </div>
                    {elseif $type == $CUSTOMIZE_TEXTFIELD}
                      <ul class="typedText">
                        {foreach $custom_data as $textField}
                          <li>
                            {if $textField.name}
                              {$textField.name}
                            {else}
                              {l s='Text #'}{$textField@index+1}
                            {/if}
                            : {$textField.value}
                          </li>
                        {/foreach}
                      </ul>
                    {/if}
                  {/foreach}
                </td>
                <td class="cart_quantity" colspan="1">
                  {if isset($cannotModify) && $cannotModify == 1}
                    <span>{if $quantityDisplayed == 0 && isset($customizedDatas.$productId.$productAttributeId)}{$customizedDatas.$productId.$productAttributeId|@count}{else}{$product.cart_quantity-$quantityDisplayed}{/if}</span>
                  {else}
                    <input type="hidden" value="{$customization.quantity}" name="quantity_{$product.id_product}_{$product.id_product_attribute}_{$id_customization}_{$product.id_address_delivery|intval}_hidden"/>
                    <input type="text" value="{$customization.quantity}" class="cart_quantity_input form-control grey" name="quantity_{$product.id_product}_{$product.id_product_attribute}_{$id_customization}_{$product.id_address_delivery|intval}"/>
                    <div class="cart_quantity_button clearfix">
                      {if $product.minimal_quantity < ($customization.quantity -$quantityDisplayed) || $product.minimal_quantity <= 1}
                        <a
                          id="cart_quantity_down_{$product.id_product}_{$product.id_product_attribute}_{$id_customization}_{$product.id_address_delivery|intval}"
                          class="cart_quantity_down btn btn-default button-minus"
                          href="{$link->getPageLink('cart', true, NULL, "add=1&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_address_delivery={$product.id_address_delivery}&amp;id_customization={$id_customization}&amp;op=down&amp;token={$token_cart}")|escape:'html':'UTF-8'}"
                          rel="nofollow"
                          title="{l s='Subtract'}">
                          <span>
                            <i class="fa fa-minus"></i>
                          </span>
                        </a>
                      {else}
                        <a
                          id="cart_quantity_down_{$product.id_product}_{$product.id_product_attribute}_{$id_customization}"
                          class="cart_quantity_down btn btn-default button-minus disabled"
                          href="#"
                          title="{l s='Subtract'}">
                          <span>
                            <i class="fa fa-minus"></i>
                          </span>
                        </a>
                      {/if}
                      <a
                        id="cart_quantity_up_{$product.id_product}_{$product.id_product_attribute}_{$id_customization}_{$product.id_address_delivery|intval}"
                        class="cart_quantity_up btn btn-default button-plus"
                        href="{$link->getPageLink('cart', true, NULL, "add=1&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_address_delivery={$product.id_address_delivery}&amp;id_customization={$id_customization}&amp;token={$token_cart}")|escape:'html':'UTF-8'}"
                        rel="nofollow"
                        title="{l s='Add'}">
                        <span>
                          <i class="fa fa-plus"></i>
                        </span>
                      </a>
                    </div>
                  {/if}
                </td>
                <td >
                </td>
                {*
                <td class="cart_delete text-center">
                  {if isset($cannotModify) && $cannotModify == 1}
                  {else}
                    <a
                      id="{$product.id_product}_{$product.id_product_attribute}_{$id_customization}_{$product.id_address_delivery|intval}"
                      class="cart_quantity_delete"
                      href="{$link->getPageLink('cart', true, NULL, "delete=1&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_customization={$id_customization}&amp;id_address_delivery={$product.id_address_delivery}&amp;token={$token_cart}")|escape:'html':'UTF-8'}"
                      rel="nofollow"
                      title="{l s='Delete'}">
                        <i class="fa fa-trash-o"></i>
                    </a>
                  {/if}
                </td>
                *}
              </tr>
              {assign var='quantityDisplayed' value=$quantityDisplayed+$customization.quantity}
            {/foreach}

            {* If it exists also some uncustomized products *}
            {if $product.quantity-$quantityDisplayed > 0}{include file="$tpl_dir./shopping-cart-product-line.tpl" productLast=$product@last productFirst=$product@first}{/if}
          {/if}
        {/foreach}
        {assign var='last_was_odd' value=$product@iteration%2}
        {foreach $gift_products as $product}
          {assign var='productId' value=$product.id_product}
          {assign var='productAttributeId' value=$product.id_product_attribute}
          {assign var='quantityDisplayed' value=0}
          {assign var='odd' value=($product@iteration+$last_was_odd)%2}
          {assign var='ignoreProductLast' value=isset($customizedDatas.$productId.$productAttributeId)}
          {assign var='cannotModify' value=1}
          {* Display the gift product line *}
          {include file="$tpl_dir./shopping-cart-product-line.tpl" productLast=$product@last productFirst=$product@first}
        {/foreach}
      </tbody>
      {if sizeof($discounts)}
        <tbody>
          {foreach $discounts as $discount}
            {if ((float)$discount.value_real == 0 && $discount.free_shipping != 1) || ((float)$discount.value_real == 0 && $discount.code == '')}
              {continue}
            {/if}
            <tr class="cart_discount {if $discount@last}last_item{elseif $discount@first}first_item{else}item{/if}" id="cart_discount_{$discount.id_discount}">
              <td class="cart_discount_name" colspan="{if $PS_STOCK_MANAGEMENT}3{else}2{/if}">{$discount.name}</td>
              <td class="cart_discount_price">
                <span style="color:#ff61ae;" class="price-discount">
                {if !$priceDisplay}{displayPrice price=$discount.value_real*-1}{else}{displayPrice price=$discount.value_tax_exc*-1}{/if}
                </span>
              </td>
              {*
              <td class="cart_discount_delete">1</td>
              
              <td class="price_discount_del text-center">
                {if strlen($discount.code)}
                  <a
                    href="{if $opc}{$link->getPageLink('order-opc', true)}{else}{$link->getPageLink('order', true)}{/if}?deleteDiscount={$discount.id_discount}"
                    class="price_discount_delete"
                    title="{l s='Delete'}">
                    <i class="fa fa-trash-o"></i>
                  </a>
                {/if}
              </td>
              <td class="cart_discount_price">
                <span class="price-discount price">{if !$priceDisplay}{displayPrice price=$discount.value_real*-1}{else}{displayPrice price=$discount.value_tax_exc*-1}{/if}</span>
              </td>
              *}
            </tr>
          {/foreach}
        </tbody>
      {/if}
    </table>
  </div> <!-- end order-detail-content -->
  </div>
   {if $voucherAllowed}
      <form action="{if $opc}{$link->getPageLink('order-opc', true)}{else}{$link->getPageLink('order', true)}{/if}" method="post" id="voucher">
        <fieldset>
          <h4>{l s='Vouchers'}</h4>
          <input style="width:50%;display:inline-block" type="text" class="discount_name form-control" id="discount_name" name="discount_name" value="{if isset($discount_name) && $discount_name}{$discount_name}{/if}" />
          <input type="hidden" name="submitDiscount" />
          <button type="submit" name="submitAddDiscount" class="btn btn-default btn-sm">
            <span>{l s='OK'}</span>
          </button>
        </fieldset>
      </form>
      {if $displayVouchers}
        <p id="title" class="title-offers">{l s='Take advantage of our exclusive offers:'}</p>
        <div id="display_cart_vouchers">
          {foreach $displayVouchers as $voucher}
            {if $voucher.code != ''}<span class="voucher_name" data-code="{$voucher.code|escape:'html':'UTF-8'}">{$voucher.code|escape:'html':'UTF-8'}</span> - {/if}{$voucher.name}<br />
          {/foreach}
        </div>
      {/if}
    {/if}  
  {if $show_option_allow_separate_package}
    <p>
      <input type="checkbox" name="allow_seperated_package" id="allow_seperated_package" {if $cart->allow_seperated_package}checked="checked"{/if} autocomplete="off"/>
      <label for="allow_seperated_package" class="checkbox inline">
        {l s='Send available products first'}
      </label>
    </p>
  {/if}

  {* Define the style if it doesn't exist in the PrestaShop version*}
  {* Will be deleted for 1.5 version and more *}
  {if !isset($addresses_style)}
    {$addresses_style.company = 'address_company'}
    {$addresses_style.vat_number = 'address_company'}
    {$addresses_style.firstname = 'address_name'}
    {$addresses_style.lastname = 'address_name'}
    {$addresses_style.address1 = 'address_address1'}
    {$addresses_style.address2 = 'address_address2'}
    {$addresses_style.city = 'address_city'}
    {$addresses_style.country = 'address_country'}
    {$addresses_style.phone = 'address_phone'}
    {$addresses_style.phone_mobile = 'address_phone_mobile'}
    {$addresses_style.alias = 'address_title'}
  {/if}

  

  <div id="HOOK_SHOPPING_CART">{$HOOK_SHOPPING_CART}</div>
    {if !$opc}
  <p class="cart_navigation clearfix">

      <a
        href="{if $back}{$link->getPageLink('order', true, NULL, 'step=1&amp;back={$back}')|escape:'html':'UTF-8'}{else}{$link->getPageLink('order', true, NULL, 'step=1')|escape:'html':'UTF-8'}{/if}"
        class="btn btn-default standard-checkout btn-md icon-right"
        title="{l s='Proceed to checkout'}">
        <span>
          {l s='Proceed to checkout'}
        </span>
      </a>
    
    <a
      href="{if (isset($smarty.server.HTTP_REFERER) && ($smarty.server.HTTP_REFERER == $link->getPageLink('order', true) || $smarty.server.HTTP_REFERER == $link->getPageLink('order-opc', true) || strstr($smarty.server.HTTP_REFERER, 'step='))) || !isset($smarty.server.HTTP_REFERER)}{$link->getPageLink('index')}{else}{$smarty.server.HTTP_REFERER|escape:'html':'UTF-8'|secureReferrer}{/if}"
      class="btn btn-default btn-md icon-left"
      title="{l s='Continue shopping'}">
        <span>{l s='Continue shopping'}</span>
    </a>
  
  </p>
    {/if}
  <div class="clear"></div>
  <div class="cart_navigation_extra">
    <div id="HOOK_SHOPPING_CART_EXTRA">{if isset($HOOK_SHOPPING_CART_EXTRA)}{$HOOK_SHOPPING_CART_EXTRA}{/if}</div>
  </div>

  {strip}
    {addJsDef deliveryAddress=$cart->id_address_delivery|intval}
    {addJsDefL name=txtProduct}{l s='product' js=1}{/addJsDefL}
    {addJsDefL name=txtProducts}{l s='products' js=1}{/addJsDefL}
  {/strip}
{/if}
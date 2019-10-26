{if isset($products) && $products}
  <ul{if isset($id) && $id} id="{$id}"{else} id="product_list"{/if} class="product_list grid{if isset($class) && $class} {$class}{/if}">
    {foreach from=$products item=product name=products}
      <li class="ajax_block_product" style="margin-left:5px" onmouseover="$(this).addClass('hovered');" onmouseout="$(this).removeClass('hovered')">
        <div class="product-container" itemscope itemtype="https://schema.org/Product">
          <div class="left-block">

            <div class="product-image-container">
              {capture name='displayProductListGallery'}{hook h='displayProductListGallery' product=$product}{/capture}
              {if $smarty.capture.displayProductListGallery}
                {hook h='displayProductListGallery' product=$product}
              {else}
                <a class="product_img_link" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url">
                  <img class="replace-2x img-responsive" src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'tm_cart_default')|escape:'html':'UTF-8'}" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}"title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}"{if isset($homeSize)} width="{$homeSize.width}" height="{$homeSize.height}"{/if} itemprop="image" />
                </a>
              {/if}
              {if isset($quick_view) && $quick_view}
                <a class="quick-view" href="{$product.link|escape:'html':'UTF-8'}" data-href="{$product.link|escape:'html':'UTF-8'}">
                  <span>{l s='Quick view'}</span>
                </a>
              {/if}

              {if isset($product.new) && $product.new == 1}
                <a class="new-box" href="{$product.link|escape:'html':'UTF-8'}">

                </a>
              {/if}
              {if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
                <a class="sale-box" href="{$product.link|escape:'html':'UTF-8'}">
                  <span class="sale-label">{l s='Sale!'}</span>
                </a>
              {/if}

            </div>
            {if isset($product.is_virtual) && !$product.is_virtual}{hook h="displayProductDeliveryTime" product=$product}{/if}
            {hook h="displayProductPriceBlock" product=$product type="weight"}
          </div>
          <div class="right-block">

            <h5 itemprop="name">
                 <div class="content_prices">

                {if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
                  {hook h="displayProductPriceBlock" product=$product type='before_price'}
                  <span class="price product-price{if isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0} product-price-new{/if}">
                    {if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
                  </span>
                  {if $product.price_without_reduction > 0 && isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
                    {hook h="displayProductPriceBlock" product=$product type="old_price"}
                    <span class="old-price product-price">
                      {displayWtPrice p=$product.price_without_reduction}
                    </span>
                    {hook h="displayProductPriceBlock" id_product=$product.id_product type="old_price"}

                  {/if}
                  {hook h="displayProductPriceBlock" product=$product type="price"}
                  {hook h="displayProductPriceBlock" product=$product type="unit_price"}
                  {hook h="displayProductPriceBlock" product=$product type='after_price'}
                {/if}
              </div>

              {if isset($product.pack_quantity) && $product.pack_quantity}{$product.pack_quantity|intval|cat:' x '}{/if}
              <a class="product-name" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url" >
                <span class="list-name">{$product.name|truncate:100:'...'|escape:'html':'UTF-8'}</span>
                {$product.name=$product.name|replace:"Lunette de soleil":""}
                {$product.name=$product.name|replace:"Masque de ski":""}
                <span style="display:inline-block;min-height:34px;max-height:34px;" class="grid-name">{$product.name|truncate:45:'...'|escape:'html':'UTF-8'}</span>
              </a>
            </h5>

            <p class="product-desc" itemprop="description">
              <span class="list-desc">{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}</span>
              <span class="grid-desc">{$product.description_short|strip_tags:'UTF-8'|truncate:40:'...'}</span>
            </p>

            <div class="button-container">
              {if ($product.id_product_attribute == 0 || (isset($add_prod_display) && ($add_prod_display == 1))) && $product.available_for_order && !isset($restricted_country_mode) && $product.customizable != 2 && !$PS_CATALOG_MODE}
                {if (!isset($product.customization_required) || !$product.customization_required) && ($product.allow_oosp || $product.quantity > 0)}
                  {capture}add=1&amp;id_product={$product.id_product|intval}{if isset($product.id_product_attribute) && $product.id_product_attribute}&amp;ipa={$product.id_product_attribute|intval}{/if}{if isset($static_token)}&amp;token={$static_token}{/if}{/capture}
                  <a class="ajax_add_to_cart_button btn btn-sm btn-default" href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Add to cart'}" data-id-product-attribute="{$product.id_product_attribute|intval}" data-id-product="{$product.id_product|intval}" data-minimal_quantity="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity >= 1}{$product.product_attribute_minimal_quantity|intval}{else}{$product.minimal_quantity|intval}{/if}">
                    <span>{l s='Add to cart'}</span>
                  </a>
                {else}
                  <span class="ajax_add_to_cart_button btn btn-sm btn-default disabled">
                    <span>{l s='Add to cart'}</span>
                  </span>
                {/if}

                <div class="functional-buttons clearfix">
                  {hook h='displayProductListFunctionalButtons' product=$product}
                  <span class="price product-price{if isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0} product-price-new{/if}">
                    {if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
                  </span>
                </div>

              {/if}

            </div>
            {if isset($product.color_list)}
              <div class="color-list-container">{$product.color_list}</div>
            {/if}

            {capture name='displayProductListReviews'}{hook h='displayProductListReviews' product=$product}{/capture}
            {if $smarty.capture.displayProductListReviews}
              <div class="hook-reviews">
              {hook h='displayProductListReviews' product=$product}
              </div>
            {/if}

            <div class="product-flags">
              {if (!$PS_CATALOG_MODE && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
                {if isset($product.online_only) && $product.online_only}
                  <span class="online_only">{l s='Online only'}</span>
                {/if}
              {/if}
              {if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
              {elseif isset($product.reduction) && $product.reduction && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
                <span class="discount">{l s='Reduced price!'}</span>
              {/if}
            </div>
            {*
            <div>
                <img src="https://www.promoslunettes.com/img/productlist/noel_livraison_promos.jpg" style="width:100%" />
            </div>
            *}
            {if (!$PS_CATALOG_MODE && $PS_STOCK_MANAGEMENT && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
              {if isset($product.available_for_order) && $product.available_for_order && !isset($restricted_country_mode)}
                <span class="availability">
                  {if ($product.allow_oosp || $product.quantity > 0)}
                    <span class="{if $product.quantity <= 0 && isset($product.allow_oosp) && !$product.allow_oosp} label-danger{elseif $product.quantity <= 0} label-warning{else} label-success{/if}">
                      {if $product.quantity <= 0}{if $product.allow_oosp}{if isset($product.available_later) && $product.available_later}{$product.available_later}{else}{l s='In Stock'}{/if}{/if}{else}{if isset($product.available_now) && $product.available_now}{$product.available_now}{else}{l s='In Stock'}{/if}{/if}
                    </span>
                  {elseif (isset($product.quantity_all_versions) && $product.quantity_all_versions > 0)}
                    <span class="label-warning">
                      {l s='Product available with different options'}
                    </span>
                  {else}
                    <span class="label-danger">
                      {l s='Out of stock'}
                    </span>
                  {/if}
                </span>
              {/if}
            {/if}
          </div>

        </div><!-- .product-container> -->
      </li>
    {/foreach}
  </ul>
  {addJsDefL name=min_item}{l s='Please select at least one product' js=1}{/addJsDefL}
  {addJsDefL name=max_item}{l s='You cannot add more than %d product(s) to the product comparison' sprintf=$comparator_max_item js=1}{/addJsDefL}
  {addJsDef comparator_max_item=$comparator_max_item}
  {addJsDef comparedProductsIds=$compared_products}
{/if}

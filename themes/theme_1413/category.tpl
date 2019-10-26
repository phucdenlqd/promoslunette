{include file="$tpl_dir./errors.tpl"}

{if isset($category)}
  {if $category->id && $category->active}
    {if $scenes || $category->description || $category->id_image}
      <div class="content_scene_cat">
        {if $scenes}
          <div class="content_scene">
            <!-- Scenes -->
            {include file="$tpl_dir./scenes.tpl" scenes=$scenes}
          </div>
        {else}
          <!-- Category image -->
          <div class="content_scene_cat_bg row">
            {if $category->description}
              <div class="cat_desc col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <span class="category-name">
                  {strip}
                    {$category->name|escape:'html':'UTF-8'}
                    {if isset($categoryNameComplement)}
                      {$categoryNameComplement|escape:'html':'UTF-8'}
                    {/if}
                  {/strip}
                </span>
              </div>
            {/if}
          </div>
        {/if}
      </div>
    {/if}
    {if $category->id_image}<div><img style='width:100%' src=  {$link->getCatImageLink($category->link_rewrite, $category->id_image, 'tm_home_default')|escape:'html':'UTF-8'}></div> {/if}
    <h1 class="page-heading{if (isset($subcategories) && !$products) || (isset($subcategories) && $products) || !isset($subcategories) && $products} product-listing{/if}">
      <span class="cat-name">{$category->name|escape:'html':'UTF-8'}{if isset($categoryNameComplement)}&ensp;{$categoryNameComplement|escape:'html':'UTF-8'}{/if}</span>
      {include file="$tpl_dir./category-count.tpl"}
    </h1>



    {if $products}
      <div class="content_sortPagiBar clearfix">
        <div class="sortPagiBar clearfix">
          {include file="./product-sort.tpl"}
          {include file="./nbr-product-page.tpl"}
        </div>
      </div>
      {assign var="module_blocklayered" value=Module::getInstanceByName('blocklayered')}
      {if $module_blocklayered && $nbr_filterBlocks != 0}
        <button id="filter-button" class="btn btn-sm btn-primary">{l s='Filter' mod='blocklayered'}</button>
        <div id="filter-overlay"></div>
      {/if}
      {include file="./product-list.tpl" products=$products}
      <div class="content_sortPagiBar">
        <div class="bottom-pagination-content clearfix">
          {include file="./pagination.tpl" paginationId='bottom'}
        </div>
      </div>
    {/if}
    {*
      {if isset($subcategories)}
        {if (isset($display_subcategories) && $display_subcategories eq 1) || !isset($display_subcategories)}
          <!-- Subcategories -->

          <div id="subcategories">
            <p class="subcategory-heading">{l s='Subcategories'}</p>
            <ul class="clearfix">
              {foreach from=$subcategories item=subcategory}
                <li>
                  <div class="subcategory-image">
                    <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|escape:'html':'UTF-8'}" class="img">
                      {if $subcategory.id_image}
                        <img class="replace-2x" src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'medium_default')|escape:'html':'UTF-8'}" alt="{$subcategory.name|escape:'html':'UTF-8'}" />
                      {else}
                        <img class="replace-2x" src="{$img_cat_dir}{$lang_iso}-default-medium_default.jpg" alt="{$subcategory.name|escape:'html':'UTF-8'}" width="{$mediumSize.width}" height="{$mediumSize.height}" />
                      {/if}
                    </a>
                  </div>
                  <h5>
                    <a class="subcategory-name" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'|truncate:50}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'}</a>
                  </h5>

                </li>
              {/foreach}
            </ul>
          </div>

        {/if}
      {/if}
    *}
    {if $scenes || $category->description || $category->id_image}
      <div class="content_scene_cat">
        {if $scenes}
          <div class="content_scene">
            <!-- Scenes -->
            {include file="$tpl_dir./scenes.tpl" scenes=$scenes}
            {if $category->description}
              <div class="cat_desc rte">
                {if Tools::strlen($category->description) > 350}
                  <div id="category_description_short">{$description_short}</div>
                  <div id="category_description_full" class="unvisible">{$category->description}</div>
                  <a href="{$link->getCategoryLink($category->id_category, $category->link_rewrite)|escape:'html':'UTF-8'}" class="lnk_more">{l s='More'}</a>
                {else}
                  <div>{$category->description}</div>
                {/if}
              </div>
            {/if}
          </div>
        {else}
          <!-- Category image -->
          <div class="content_scene_cat_bg row">
            {if $category->description}
              <div class="cat_desc col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <span class="category-name">
                  {strip}
                    {$category->name|escape:'html':'UTF-8'}
                    {if isset($categoryNameComplement)}
                      {$categoryNameComplement|escape:'html':'UTF-8'}
                    {/if}
                  {/strip}
                </span>

                  <div class="rte" style="background: transparent none repeat scroll 0 0; text-align: justify; column-count: 2; -moz-column-count: 2; -webkit-column-count: 2; column-gap: 2em; -moz-column-gap: 2em; -webkit-column-gap: 2em;   column-rule: 1px solid #ccc;  -moz-column-rule: 1px solid #ccc; -webkit-column-rule: 1px solid #ccc;">{$category->description}</div>

              </div>
            {/if}
          </div>
        {/if}
      </div>
    {/if}
  {elseif $category->id}
    <p class="alert alert-warning">{l s='This category is currently unavailable.'}</p>
  {/if}
{/if}

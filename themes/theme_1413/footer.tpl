{if !isset($content_only) || !$content_only}
            </div><!-- #center_column -->
            {if isset($left_column_size) && !empty($left_column_size)}
              <div id="left_column" class="column col-xs-12 col-sm-{$left_column_size|intval}">
                <div class="left_content_wrapper">
                  {$HOOK_LEFT_COLUMN}
                </div>
              </div>
            {/if}
            </div><!--.large-left-->
          </div><!--.row-->
          {if isset($right_column_size) && !empty($right_column_size)}
            <div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
          {/if}
          </div><!-- .row -->
        </div><!-- #columns -->
        {assign var='displayMegaHome' value={hook h='tmMegaLayoutHome'}}
        {if $displayMegaHome}
          <div id="home-column" class="container">
            {hook h='tmMegaLayoutHome'}
          </div>
        {else}
          {if isset($HOOK_HOME) && $HOOK_HOME|trim}
            <div id="home-column" class="container">
              {$HOOK_HOME}
            </div>
          {/if}
        {/if}
      </div><!-- .columns-container -->
      <!-- Footer -->
      <div class="footer-container">
          <div id="newsletter_block_left" style="text-align:center">
              <span style="font-size:2em;color:white">{l s="Lettre d'information"}</span>
              <h5></h5>
              <div class="block_content">
                <form action="{$link->getPageLink('index', null, null, null, false, null, true)|escape:'html':'UTF-8'}" method="post">
                  <div class="form-group{if isset($msg) && $msg } {if $nw_error}form-error{else}form-ok{/if}{/if}" >
                    <input class="inputNew form-control grey newsletter-input" id="newsletter-input" type="text" name="email" size="18" value="{if isset($msg) && $msg}{$msg}{elseif isset($value) && $value}{$value}{else}{l s='Votre adresse email'}{/if}" autocomplete="off" />
                    <button type="submit" name="submitNewsletter" class="btn btn-default btn-sm">
                      <span>{l s='Ok' mod='blocknewsletter'}</span>
                    </button>
                    <input type="hidden" name="action" value="0" />
                  </div>
                </form>
              </div>
              {hook h="displayBlockNewsletterBottom" from='blocknewsletter'}
          </div>
        <!-- /Block Newsletter module-->
        {strip}
          {if isset($msg) && $msg}
            {addJsDef msg_newsl=$msg|@addcslashes:'\''}
          {/if}
          {if isset($nw_error)}
            {addJsDef nw_error=$nw_error}
          {/if}
          {addJsDefL name=placeholder_blocknewsletter}{l s='Enter your e-mail' mod='blocknewsletter' js=1}{/addJsDefL}
          {if isset($msg) && $msg}
            {addJsDefL name=alert_blocknewsletter}{l s='Newsletter : %1$s' sprintf=$msg js=1 mod="blocknewsletter"}{/addJsDefL}
          {/if}
        {/strip}
      </div>
      <div class="footer-container" style="border-top:1px solid black; padding-top:25px">
          <section class="footer-block" style="margin-top:0px;text-align:center">

            <ul style="margin:0 25px " class="">
                <li style="display:inline-block;margin-left: 33px;margin-bottom:20px">
                  <a href="{$link->getCategoryLink('50')}" title="Promotions">
                    {l s='Promotions'}
                  </a>
                </li>
                <li style="display:inline-block;margin-left: 33px;margin-bottom:20px">
                  <a href="{$link->getPageLink('new-products', true)}" title="Nouveaux produits">
                    {l s='Nouveaux produits'}
                  </a>
                </li>
                <li style="display:inline-block;margin-left: 33px;margin-bottom:20px">
                  <a href="{$link->getPageLink('best-sales', true)}" title="Meilleures ventes">
                    {l s='Meilleures ventes'}
                  </a>
                </li>
                <li style="display:inline-block;margin-left: 33px;margin-bottom:20px">
                  <a href="{$link->getPageLink('contact', true)}" title="Contactez-nous">
                    {l s='Contactez-nous'}
                  </a>
                </li>
                <li style="display:inline-block;margin-left: 33px;margin-bottom:20px">
                    <a href="{$link->getCMSLink(9)}" title="Conditions Générale de vente">
                      {l s="Conditions générales"}
                    </a>
                </li>
                <li style="display:inline-block;margin-left: 33px;margin-bottom:20px">
                    <a href="{$link->getCMSLink(8)}" title="A propos">
                      {l s='A propos'}
                    </a>
                </li>
                <li style="display:inline-block;margin-left: 33px;margin-bottom:20px">
                  <a href="{$link->getPageLink('sitemap', true)}" title="Sitemap">
                    {l s='Plan site'}
                  </a>
                </li>
            </ul>

          </section>
          <section id="social_block">
              <ul>
                  <li class="facebook">
                    <a target="_blank" href="https://www.facebook.com/Promoslunettes-382612415133357/" title="Facebook">
                      <span>Facebook</span>
                    </a>
                  </li>
                  <li class="twitter">
                    <a target="_blank" href="https://twitter.com/promos_lunettes" title="Twitter">
                      <span>Twitter</span>
                    </a>
                  </li>
                  <li class="instagram">
                    <a target="_blank" href="https://www.instagram.com/promoslunettes/" title="Instagram">
                      <span>instagram</span>
                    </a>
                  </li>
                  <li class="google-plus">
                    <a target="_blank" href="https://plus.google.com/107976561425315093066" title="Google Plus">
                      <span>Google Plus</span>
                    </a>
                  </li>
              </ul>
          </section>
      </div>



      <!-- #footer -->
    </div><!-- #page -->
  {/if}

  {include file="$tpl_dir./global.tpl"}
  {hook h="displayBeforeBodyClosingTag"}
</body>
</html>

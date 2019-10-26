{capture name=path}{l s='Price drop'}{/capture}

<h1 class="page-heading product-listing">{l s='Price drop'}</h1>

{if $products}
  <div class="content_sortPagiBar">
    <div class="sortPagiBar clearfix">
      {include file="./product-sort.tpl"}
      {include file="./nbr-product-page.tpl"}
    </div>
  </div>

  {include file="./product-list.tpl" products=$products}

  <div class="content_sortPagiBar">
    <div class="bottom-pagination-content clearfix">
      {include file="./product-compare.tpl"}
      {include file="./pagination.tpl" no_follow=1 paginationId='bottom'}
    </div>
  </div>
  <div class="content_scene_cat">
                  <!-- Category image -->
          <div class="content_scene_cat_bg row">
                          <div class="cat_desc col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h2 style="color:black" class="category-name">
                  Promotions                </h2>
              
                  <div class="rte" style="background: transparent none repeat scroll 0 0; text-align: justify; column-count: 2; -moz-column-count: 2; -webkit-column-count: 2; column-gap: 2em; -moz-column-gap: 2em; -webkit-column-gap: 2em;   column-rule: 1px solid #ccc;  -moz-column-rule: 1px solid #ccc; -webkit-column-rule: 1px solid #ccc;"><h2 style="color:black"><strong>Lunettes pas cher : Découvrez les promotions Promos Lunettes</strong></h2>
<p style="color:black;font-size:1em">Vous êtes à la recherche d’une paire de lunettes de vue ou solaire en promo ?<br />Quoi de mieux que le site internet spécialisé promos lunettes pour vous trouver le meilleur prix sur la paire qui vous intéresse ?<br />Avec Promos L, les petits prix, c’est toute l’année !</p>
<h2 style="color:black"><strong>Promo lunettes : Les soldes, c’est toute l’année chez votre opticien en ligne !</strong></h2>
<p style="color:black;font-size:1em">Comme de nombreux commerçants français, nous vous proposons des soldes toute l’année en fonction des saisons.<br />Les soldes d’hiver seront peut-être l’occasion de vous trouver un masque de ski pas cher sur notre site ou encore une paire de lunette de soleil de marque pour profiter du soleil hivernal en bas des pistes avec un bon… Chocolat chaud !<br />Les soldes d’été sont également l’occasion d’acheter des lunettes de soleil pas cher !<br />Par exemple, vous pouvez profiter d’une promo lunette céline, Rayban ou encore Dior ! Pas mal pour varier les paires et les plaisirs ;) !</p>
<h2 style="color:black"><strong>Opticien en ligne pas cher ? C’est Promos Lunettes !</strong></h2>
<p style="color:black;font-size:1em">Qu’il s’agisse de montures de vue ou de soleil, nous vous garantissons le meilleur prix sur les lunettes de marque femmes et hommes et si vous trouvez moins chère ailleurs, nous nous engageons à faire le maximum pour vous proposer une offre encore plus compétitive que nos concurrents !<br />Pas le temps d’aller cher en magasin ou en boutique ? Pas de souci avec votre opticien en ligne découvrez un large catalogue de lunettes et surtout essayez les modèles chez vous, vous disposez de 7 jours pour changer d’avis et vous faire rembourser votre achat !De plus, pour les lunettes de vue, en plus de tout faire pour obtenir les meilleures promotions, vous pouvez vous faire rembourser par les organismes de sécurité sociale et mutuelle en nous envoyant simplement votre ordonnance !</p>
<h2 style="color:black"><strong>Black Friday lunette : Le meilleur moyen de faire une bonne affaire !</strong></h2>
<p style="color:black;font-size:1em">En plus des soldes et promotions lunettes de soleil &amp; vue, nous suivons les opérations commerciales de grande envergure telles que les black Friday !<br />Le meilleur moyen de faire une affaire avant les fêtes et de faire plaisir à l’un de vos proches ou vous-mêmes !<br />Vous l’aurez compris, chez promos lunettes, vous obtenir une lunette pas cher, c’est notre priorité, nous mettons donc tous les moyens à notre disposition et nous appuyons sur les toutes les grandes opérations commerciales pour que vous bénéficiez des meilleurs offres !</p></div>
              
              </div>
                      </div>
              </div>
{else}
  <p class="alert alert-warning">{l s='No price drop'}</p>
{/if}
{literal}
<script type="text/javascript">
$(document).ready(function() {
    $('.btn-refresh .refresh-showcases').click(function() {
      var $start = $(".newsletter-content").length;
      $.ajax({
        type: "GET",
        url: "ws.php",
        dataType: "json",
        data: {
          method: "porg.home.refresh_showcases",
          format: "json",
        },
        success: function(response) {
          var showcases = jQuery.parseJSON(response['result']);
          $('.showcase1 a').attr("href", showcases[0].tags[0].page_url);
          $('.showcase1 a').attr("title", showcases[0].name);
          $('.showcase1 a img').attr("src", showcases[0].derivatives.large.url);
          $('.showcase2 a').attr("href", showcases[1].tags[0].page_url);
          $('.showcase2 a').attr("title", showcases[1].name);
          $('.showcase2 a img').attr("src", showcases[1].derivatives.large.url);
        },
      });
    });
});
</script>
{/literal}

  <section class="pwg-banner container-fluide">
      <div class="container">
        <div class="row">
          <div class="pwg-tagline col-sm-12 col-md-5">
            <h1>{'porg_home_title'|translate}</h1>
            <p>{'porg_home_desc1'|translate} {'porg_home_desc2'|translate}</p>
            <div class="col-md-8 get-piwigo-button">
              <a class="btn btn-default" href="{$PORG_ROOT}{$URL.get_piwigo}" role="button">{'Get Piwigo'|translate}</a>
              <p class="pwg-release-date"><i class="glyphicon glyphicon-fire"></i>v{$LATEST_VERSION_NUMBER}, {$LATEST_VERSION_DATE}</p>
            </div>
          </div>
          <div class="col-sm-12 col-md-7 responsive-image">
            <img class="img-fluid" src="{$PORG_ROOT_URL}/images/home/responsive-screens.jpg">
          </div>

        </div>
{*
        <div class="pwg-news col-md-1 col-xs-6">
            News
          </div>
          <div class="pwg-version col-md-2 col-xs-6">
            <span>Piwigo 2.9.2 is here!</span>
        </div>*}

      </div>
  </section>

<img class="border-colors" src="{$PORG_ROOT_URL}images/home/border-top1.svg">
  <div class="container-fluide container-piwigo-users">
    <div class="container">
      <h3>{'porg_home_organisation_title'|translate}</h3>
      <div class="equal text-center organization-content">
        <div class="col-md-3 col-xs-6">
          <span class="helper"></span><img src="{$PORG_ROOT_URL}images/home/arles_logo.svg">
        </div>
        <div class="col-md-3 col-xs-6">
          <span class="helper"></span><img src="{$PORG_ROOT_URL}images/home/s3v.png" class="logo-societe-3-vallees">
        </div>
        <div class="col-md-3 col-xs-6">
          <span class="helper"></span><img src="{$PORG_ROOT_URL}images/home/fondation_arc.svg">
        </div>
        <div class="col-md-3 col-xs-6">
          <span class="helper"></span><img src="{$PORG_ROOT_URL}images/home/logo-federation-francaise-natation.png" class="logo-federation-francaise-natation">
        </div>
      </div>
    </div>
  </div>
  <img class="border-colors" src="{$PORG_ROOT_URL}images/home/border-bottom1.svg">


  <div class="container-fluide">
    <div class="container">
      <div class="row text-center fact-content">
        <h2>{'Why choose Piwigo?'|translate}</h2>
        <div class="col-md-4">
          <img src="{$PORG_ROOT_URL}images/home/high-volume.svg"/>
          <h3>{'High Volume'|translate}</h3>
          <p>{'porg_home_high_volume_desc'|translate}</p>
        </div>
        <div class="col-md-4">
          <img src="{$PORG_ROOT_URL}images/home/sustainable.svg"/>
          <h3>{'Sustainable'|translate}</h3>
          <p>{'porg_home_sustainable_desc'|translate:$NB_YEARS}</p>
        </div>
        <div class="col-md-4">
          <img src="{$PORG_ROOT_URL}images/home/open-source.svg"/>
          <h3>{'Open Source'|translate}</h3>
          <p>{'porg_home_open_source_desc'|translate}</p>
        </div>
      </div>
     {*<div class="row homepage-batch-manager-image">
        <img src="{$PORG_ROOT_URL}images/home/piwigo-screenshot-picture-page.jpg"/>
      </div>*}
      <div class="row text-center btn-know-content">
        <div class="col-md-12">
          <a class="btn btn-know-more" href="{$PORG_ROOT}{$URL.features}">{'Discover Piwigo'|translate}</a>
        </div>
      </div>
    </div>
  </div>

<img class="border-colors" src="{$PORG_ROOT_URL}images/home/border-top2.svg">
  <div class="container-fluide container-organization">
    <div class="container">
      <div class="row text-center take-control">
        <h2>{'Take control of your digital content'|translate}</h2>
        <div>
          <div class="col col-xs-6 col-md-3 feature-content">
            <a href="{$PORG_ROOT}{$URL.features}"><img src="{$PORG_ROOT_URL}images/home/content-01.svg" alt="A piwigo feature"><br>
            <p>{'Albums Hierarchy'|translate}</p></a>
          </div>
          <div class="col col-xs-6 col-md-3 feature-content">
            <a href="{$PORG_ROOT}{$URL.features}"><img src="{$PORG_ROOT_URL}images/home/content-02.svg" alt="A piwigo feature"><br>
            <p>{'Batch Management'|translate}</p></a>
          </div>
        </div>
        <div>
          <div class="col col-xs-6 col-md-3 feature-content">
            <a href="//{$PORG_DOMAIN_PREFIX}piwigo.org/ext/"><img src="{$PORG_ROOT_URL}images/home/content-03.svg" alt="A piwigo feature"><br>
            <p>{'Themes & Plugins'|translate}</p></a>
          </div>
          <div class="col col-xs-6 col-md-3 feature-content">
            <a href="{$PORG_ROOT}{$URL.features}"><img src="{$PORG_ROOT_URL}images/home/content-04.svg" alt="A piwigo feature"><br>
            <p>{'Permissions Control'|translate}</p></a>
          </div>
        </div>
        </div>
    </div>
  </div>
<img class="border-colors" src="{$PORG_ROOT_URL}images/home/border-bottom2.svg">

  <div class="container container-home-users">
    <h2>{'Who are Piwigo users?'|translate}</h2>
    <div class="row text-center">
      <div class="col col-xs-12 col-md-4 piwigo-individual">
        <img src="{$PORG_ROOT_URL}images/home/users-03.jpg" alt="Piwigo individuals">
        <h3>{'Individuals'|translate}</h3>
      </div>

      <div class="col col-xs-12 col-md-4 piwigo-professional">
        <img src="{$PORG_ROOT_URL}images/home/users-02.jpg" alt="Piwigo professional">
        <h3>{'Professionals'|translate}</h3>
      </div>

      <div class="col col-xs-12 col-md-4 piwigo-organization">
        <img src="{$PORG_ROOT_URL}images/home/users-01.jpg" alt="Piwigo Organization">
        <h3>{'Organisations'|translate}</h3>
      </div>
    </div>
  </div>
  <div class="jelly-fish">
    <div class="container">
      <div class="row row-advice">
        <h2>{'Discover what other Piwigo users have to say'|translate}</h2>
  {foreach from=$TESTIMONIALS item=testimonial}
        <div class="col col-md-6 advice-box">
          <div class="content-advice-box">
            <p class="user-advice">{$testimonial.content}{if $testimonial.is_cut}... <a href="{$URL.testimonials}">→</a>{/if}</p>
            <p class="user-advice-name">{$testimonial.user.username}, {$testimonial.user.country}</p>
          </div>
        </div>
  {/foreach}
      </div>
    </div>
  </div>

  <section class="container container-showcase">

    <div class="row text-center">
      <div class="showcases-home">
        <div class="col-md-3 col-xs-12 showcases-content">
          <div class="showcase showcase1">
            <a href="{$SHOWCASES[0].tags[0].page_url}" title="{$SHOWCASES[0].name}"><img src="{$SHOWCASES[0].derivatives.large.url}" alt="{$SHOWCASES[0].name}"></a>
          </div>
        </div>
        <div class="col-md-3 col-xs-12 showcases-content">
          <div class="showcase showcase2">
            <a href="{$SHOWCASES[1].tags[0].page_url}" title="{$SHOWCASES[1].name}"><img src="{$SHOWCASES[1].derivatives.large.url}" alt="{$SHOWCASES[1].name}"></a>
          </div>
        </div>
        <div class="col-md-3 col-xs-12 showcases-content">
          <div class="showcase showcase1">
            <a href="{$SHOWCASES[0].tags[0].page_url}" title="{$SHOWCASES[0].name}"><img src="{$SHOWCASES[0].derivatives.large.url}" alt="{$SHOWCASES[0].name}"></a>
          </div>
        </div>
        <div class="col-md-3 col-xs-12 showcases-content">
          <div class="showcase showcase2">
            <a href="{$SHOWCASES[1].tags[0].page_url}" title="{$SHOWCASES[1].name}"><img src="{$SHOWCASES[1].derivatives.large.url}" alt="{$SHOWCASES[1].name}"></a>
          </div>
        </div>
      </div>
    </div>

      <div class="row text-center showcase-refresh">
        <div class="col-md-7 col-xs-6 showcase-button">
            <a type="button" class="btn btn-view-more-showcases" href="//{$PORG_DOMAIN_PREFIX}piwigo.org/showcase/">{'See more showcases'|translate}</a>
        </div>
        <div class="col-md-5 col-xs-6 btn-refresh">
            <a type="button" class="refresh-showcases"><img src="{$PORG_ROOT_URL}images/home/refresh.svg"/></a>
        </div>
      </div>
  </section>

  <section class="container-fluide get-started">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2>{'Get started with Piwigo'|translate}</h2>
          <p>{'porg_get_started_desc'|translate}</p>
          <a class="btn" href="{$PORG_ROOT}{$URL.get_piwigo}">{'Get Piwigo'|translate}</a>
        </div>
      </div>
    </div>
  </section>

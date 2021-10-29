<#import "/templates/system/common/crafter.ftl" as crafter />
<@crafter.componentRootTag $tag="div" id="addUniqueIdHere" class="carousel slide" data-bs-ride="carousel">
    <#-- Insert your head markup here -->
    <div class="carousel-indicators">
    <#list contentModel.slides_o.item as slide>
        <button type="button" data-bs-target="#addUniqueIdHere" data-bs-slide-to="${slide?index}" aria-label="Slide ${slide?index}"></button>
    </#list>
    </div>

      <#-- Macro docs @ https://docs.craftercms.org/en/4.0/search.html?q=renderRepeatCollection&check_keywords=yes&area=default -->
    <@crafter.renderRepeatCollection
      $field="slides_o"
      $containerAttributes={'class': 'carousel-inner'}
      $itemAttributes={'class': 'carousel-item'};
      item, index
    >
      <img src="..." class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
      <@crafter.div
        $field="sections_o.section_html"
        $index=index
      >
        ${item.itemField}
      </@crafter.div>
    </@crafter.renderRepeatCollection>

    <div class="carousel-item active">
      
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>

</@crafter.componentRootTag>
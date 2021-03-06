{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- MODULE Block new products -->
<div id="new-products_block_right" class="block products_block">
	<p class="title_block">{l s='NEW PRODUCTS' mod='blocknewproducts'}</p>
	<div class="block_content">
	{if $new_products !== false}
		<!--<ul class="product_images clearfix">
		{foreach from=$new_products item='product' name='newProducts'}
			{if $smarty.foreach.newProducts.index < 5}
				<li{if $smarty.foreach.newProducts.first} class="first"{/if}><a href="{$product.link}" title="{$product.legend|escape:html:'UTF-8'}"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'medium_default')}" height="{$mediumSize.height}" width="{$mediumSize.width}" alt="{$product.legend|escape:html:'UTF-8'}" /></a></li>
			{/if}
		{/foreach}
		</ul>
        -->
		<dl class="products">
            {foreach from=$new_products item=newproduct name=myLoop}   
            	<div id="newProductsLoop"> 
                    <a href="{$newproduct.link}" title="{$newproduct.legend|escape:html:'UTF-8'}"><img src="{$link->getImageLink($newproduct.link_rewrite, $newproduct.id_image, 'home_default')}" height="124px" width="124px" alt="{$newproduct.legend|escape:html:'UTF-8'}" /></a> <!--'home_default' {$homeSize.height} {$homeSize.height} -->
                
                    <dt class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}"><a href="{$newproduct.link}" title="{$newproduct.name|escape:html:'UTF-8'}">{$newproduct.name|strip_tags|escape:html:'UTF-8'}</a></dt>
                    {if $newproduct.description_short}<dd class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}"><a class="newProductDesc" href="{$newproduct.link}">{$newproduct.description_short|strip_tags:'UTF-8'|truncate:55:'...'}</a><br /><a href="{$newproduct.link}" class="lnk_more">{l s='Read more' mod='blocknewproducts'}</a></dd>{/if}
                </div>
            {/foreach}
            	
		</dl>
		<p id="allNewProducts"><a href="{$link->getPageLink('new-products')}" title="{l s='All new products' mod='blocknewproducts'}" class="button_large">&raquo; {l s='All new products' mod='blocknewproducts'}</a></p>
	{else}
		<p>&raquo; {l s='No new products at this time' mod='blocknewproducts'}</p>
	{/if}
	<div class="clearBoth"></div> <!--to make height: auto; work-->
	</div>
</div>
<!-- /MODULE Block new products -->
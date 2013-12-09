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


{literal}<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
{/literal}

{if isset($cms) && !isset($cms_category)}
{*so breadcrumbs don't show up on the home page*}

	{if !$cms->active}
		<br />
		<div id="admin-action-cms">
			<p>{l s='This CMS page is not visible to your customers.'}
			<input type="hidden" id="admin-action-cms-id" value="{$cms->id}" />
			<input type="submit" value="{l s='Publish'}" class="exclusive" onclick="submitPublishCMS('{$base_dir}{$smarty.get.ad|escape:'htmlall':'UTF-8'}', 0, '{$smarty.get.adtoken|escape:'htmlall':'UTF-8'}')"/>
			<input type="submit" value="{l s='Back'}" class="exclusive" onclick="submitPublishCMS('{$base_dir}{$smarty.get.ad|escape:'htmlall':'UTF-8'}', 1, '{$smarty.get.adtoken|escape:'htmlall':'UTF-8'}')"/>
			</p>
			<div class="clear" ></div>
			<p id="admin-action-result"></p>
			</p>
		</div>
	{/if}
	<div class="rte{if $content_only} content_only{/if}">
		
			<div id="landingOptionsBody">
			<p class="titleBar">{$meta_title}</p>
			{include file="$tpl_dir./breadcrumb.tpl"}
			{$cms->content}
			
			{if $smarty.get.id_cms == '52'}
			<div class="cmsTitles">Latest social media news!</div>
			<div id="socialmediafbtw" style="border-left:1px solid #999;border-right:1px solid #999">{literal}<div style="height:500px;width:300px;float:left;margin-left:10px;margin-top:10px;border:1px solid #999;"><a class="twitter-timeline" href="https://twitter.com/UsaHospitality" data-widget-id="407580729971728384">Tweets by @UsaHospitality</a></div>
			<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}

			<div style="float:left;margin-left:10px;margin-top:10px;">
				<div class="fb-like-box" data-href="http://www.facebook.com/USAHospitality" data-width="300" data-height="500" data-colorscheme="light" data-show-faces="false" data-header="true" data-stream="true" data-show-border="true"></div>
			</div>
			</br >
			<div class="clearBoth"></div>
			</div>
			{/if}
			
			{if $smarty.get.id_cms == '57'}
			<p class="cmsTitles">Featured: Roses vs. gen 800</p>
			<div id="youtube_featured_video"><iframe src="http://www.youtube.com/embed/SmPnCBSu3V8" frameborder="0" allowfullscreen></iframe></div>
			<div class="youtube_videos"><iframe src="http://www.youtube.com/embed/x08eUkEY5lI" frameborder="0" allowfullscreen></iframe></div>
			<div class="youtube_videos"><iframe src="http://www.youtube.com/embed/nHRebSrVtt4" frameborder="0" allowfullscreen></iframe></div>
			<div class="youtube_videos"><iframe src="http://www.youtube.com/embed/P1pJHyn-1eQ" frameborder="0" allowfullscreen></iframe></div>
			{/if}
			
			{if $smarty.get.id_cms == '32'}
			<p class="cmsTitles">History</p>
			<div class="cms3Col1"><img src="{$img_dir}testimg.png" alt=""/ ></div>
			<div class="cms3Col2"><img src="{$img_dir}testimg.png" alt=""/ ></div>
			<div class="cms3Col3"><img src="{$img_dir}testimg.png" alt=""/ ></div>
			
			{/if}
			
			
			
				{*
				<a href="index.php?id_cms=7&controller=cms"><div class="landingOptionsSmallFirst">To lodging</div></a>
				<a href="index.php?id_cms=8&controller=cms"><div class="landingOptionsSmall">To entertainment</div></a>
				<a href="index.php?id_cms=9&controller=cms"><div class="landingOptionsSmall">To food service</div></a>
				<a href="index.php?id_cms=10&controller=cms"><div class="landingOptionsSmall">To services and solutions</div></a>
				<a href="index.php?id_cms=11&controller=cms"><div class="landingOptionsSmall">to help center</div></a> *}
				
				<div class="clearBoth"></div> <!--to make height: auto; work-->
			</div>

	</div>
{elseif $cms_category->id == 2}
	<div class="block-cms">
		{*<h1><a href="{if $cms_category->id eq 1}{$base_dir}{else}{$link->getCMSCategoryLink($cms_category->id, $cms_category->link_rewrite)}{/if}">{$cms_category->name|escape:'htmlall':'UTF-8'}</a></h1>*}

		<a href="index.php?id_cms=7&controller=cms" alt="Products for lodging"><img src="{$img_dir}lodging-5.png" class="col5first" /></a>
		<a href="index.php?id_cms=8&controller=cms" alt="Products for entertainment"><img src="{$img_dir}entertainment-5.png" class="col5" /></a>
		<a href="index.php?id_cms=9&controller=cms" alt="Products for food service"><img src="{$img_dir}food-service-5.png" class="col5" /></a>
		<a href="index.php?id_cms=10&controller=cms" alt="Services and solutions"><img src="{$img_dir}services-solutions-5.png" class="col5" /></a>
		<a href="index.php?id_cms=11&controller=cms" alt="Help center"><img src="{$img_dir}help-center-5.png" class="col5" /></a>
		
		<a href="index.php?id_cms=7&controller=cms" alt="Products for lodging"><img src="{$img_dir}lodging-4.png" class="col4first" /></a>
		<a href="index.php?id_cms=8&controller=cms" alt="Products for entertainment"><img src="{$img_dir}entertainment-4.png" class="col4" /></a>
		<a href="index.php?id_cms=9&controller=cms" alt="Products for food service"><img src="{$img_dir}food-service-4.png" class="col4" /></a>
		<a href="index.php?id_cms=10&controller=cms" alt="Services and solutions"><img src="{$img_dir}services-solution-4.png" class="col4" /></a>
        
        <a href="index.php?id_cms=7&controller=cms" alt="Products for lodging"><img src="{$img_dir}lodging-4.png" class="col3first" /></a>
		<a href="index.php?id_cms=8&controller=cms" alt="Products for entertainment"><img src="{$img_dir}entertainment-4.png" class="col3" /></a>
		<a href="index.php?id_cms=9&controller=cms" alt="Products for food service"><img src="{$img_dir}food-service-4.png" class="col3" /></a>
        
        <a href="index.php?id_cms=7&controller=cms" alt="Products for lodging"><img src="{$img_dir}lodging-3.png" class="col2first" /></a>
		<a href="index.php?id_cms=8&controller=cms" alt="Products for entertainment"><img src="{$img_dir}entertainment-3.png" class="col2" /></a>

		<div class="col1">1</div>
		
		
		{*{if isset($sub_category) & !empty($sub_category)}	
			<p class="title_block">{l s='List of sub categories in %s:' sprintf=$cms_category->name}</p>
			<ul class="bullet">
				{foreach from=$sub_category item=subcategory}
					<li>
						<a href="{$link->getCMSCategoryLink($subcategory.id_cms_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}">{$subcategory.name|escape:'htmlall':'UTF-8'}</a>
					</li>
				{/foreach}
			</ul>
		{/if}
		
		{if isset($cms_pages) & !empty($cms_pages)}
		<p class="title_block">{l s='List of pages in %s:' sprintf=$cms_category->name}</p>
			<ul class="bullet">
				{foreach from=$cms_pages item=cmspages}
					<li>
						<a href="{$link->getCMSLink($cmspages.id_cms, $cmspages.link_rewrite)|escape:'htmlall':'UTF-8'}">{$cmspages.meta_title|escape:'htmlall':'UTF-8'}</a>
					</li>
				{/foreach}
			</ul>
		{/if}
		*}
	</div>
	
	{elseif $cms_category} {*if the page is a cms category (means it has pages that branch off inside it) then advance *}
	<p class="title_block">{$cms_category->name}</p> {*loads the name of the cms page at the top*}
	{include file="$tpl_dir./breadcrumb.tpl"} {* shows breadcrumbs *}
	
	{if $cms_category->id == 11} {*if the cms category page is the infastructure page, then load these images *}
			<a href="{$base_dir}index.php?id_cms=35&controller=cms"><div class="cms3Col1"><img src="{$img_dir}testimg.png" alt=""/ ><div class="cmsPanelTitle">Company Video</div></a></div>
			<a href="{$base_dir}index.php?id_cms=36&controller=cms"><div class="cms3Col2"><img src="{$img_dir}testimg.png" alt=""/ ><div class="cmsPanelTitle">Company Structure</div></a></div>
			<a href="{$base_dir}index.php?id_cms=37&controller=cms"><div class="cms3Col3"><img src="{$img_dir}testimg.png" alt=""/ ><div class="cmsPanelTitle">Photo Gallery</div></a></div>
	{/if}
		
	{*
	{if isset($sub_category) & !empty($sub_category)}	
			<p class="title_block">{$cms_category->name}</p>
			
			<ul class="bullet">
				{foreach from=$sub_category item=subcategory}
					<li>
						<a href="{$link->getCMSCategoryLink($subcategory.id_cms_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}">{$subcategory.name|escape:'htmlall':'UTF-8'}</a>
					</li>
				{/foreach}
			</ul>
		{/if}
		
		{if isset($cms_pages) & !empty($cms_pages)}
		<p class="title_block">{$cms_category->name}</p>
		
			<ul class="bullet">
				{foreach from=$cms_pages item=cmspages}
					<li>
						<a href="{$link->getCMSLink($cmspages.id_cms, $cmspages.link_rewrite)|escape:'htmlall':'UTF-8'}">{$cmspages.meta_title|escape:'htmlall':'UTF-8'}</a>
					</li>
				{/foreach}
			</ul>
		{/if}	
		*}	
{else}
	<div class="error">
		{l s='This page does not exist.'}
	</div>
{/if}
<br />
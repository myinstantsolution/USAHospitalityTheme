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

<!-- Block categories module -->
{if $page_name != 'cms' || Tools::getValue('id_cms') == 12}
<div class="panelSideMenu"> <!-- Desktop version (categories are a list) -->
	<div id="categories_block_left" class="block">
		<p class="title_block">{l s='CATEGORIES' mod='blockcategories'}</p>
		<div class="block_content">
			<ul class="tree {if $isDhtml}dhtml{/if}">
			{foreach from=$blockCategTree.children item=child name=blockCategTree}
				{if $smarty.foreach.blockCategTree.last}
					{include file="$branche_tpl_path" node=$child last='true'}
				{else}
					{include file="$branche_tpl_path" node=$child}
				{/if}
			{/foreach}
			</ul>
			
			{* Javascript moved here to fix bug #PSCFI-151 *}
			<script type="text/javascript">
			// <![CDATA[
				// we hide the tree only if JavaScript is activated
				$('div#categories_block_left ul.dhtml').hide();
			// ]]>
			</script>
		</div>
	</div>
</div>

<div class="panelSideMenuM"> <!-- Mobile version (categories are a select -> option drop down menu) -->
	<div id="categories_block_left" class="block">
		<p class="title_block">{l s='CATEGORIES' mod='blockcategories'}</p>
		<div class="block_content">
			<select onChange="window.location.href=this.value" class="tree {if $isDhtml}dhtml{/if}">
			<option value="">Select a category:</option>
			{foreach from=$blockCategTree.children item=child name=blockCategTree}
				{if $smarty.foreach.blockCategTree.last}
					{include file="$branche_tpl_pathM" node=$child last='true'}
				{else}
					{include file="$branche_tpl_pathM" node=$child}
				{/if}
			{/foreach}
			</select>
			
			{* Javascript moved here to fix bug #PSCFI-151 *}
			<script type="text/javascript">
			// <![CDATA[
				// we hide the tree only if JavaScript is activated
				$('div#categories_block_left ul.dhtml').hide();
			// ]]>
			</script>
		</div>
	</div>
</div>
{else}
<!-- CMS page version (categories are a select -> option drop down menu) -->
	<div id="cmsMenu" class="block">
		<p class="title_block">{l s='CATEGORIES' mod='blockcategories'}</p>
		<div class="block_content">
			<select onChange="window.location.href=this.value" class="tree {if $isDhtml}dhtml{/if}">
			<option value="">Select a category:</option>
			{foreach from=$blockCategTree.children item=child name=blockCategTree}
				{if $smarty.foreach.blockCategTree.last}
					{include file="$branche_tpl_pathM" node=$child last='true'}
				{else}
					{include file="$branche_tpl_pathM" node=$child}
				{/if}
			{/foreach}
			</select>
			
			{* Javascript moved here to fix bug #PSCFI-151 *}
			<script type="text/javascript">
			// <![CDATA[
				// we hide the tree only if JavaScript is activated
				$('div#categories_block_left ul.dhtml').hide();
			// ]]>
			</script>
		</div>
	</div>
{/if}



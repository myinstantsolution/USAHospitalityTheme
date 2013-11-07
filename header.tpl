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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="{$lang_iso}"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="{$lang_iso}"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="{$lang_iso}"> <![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="{$lang_iso}"> <![endif]-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}">
	<head>
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
{/if}	
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
		<meta http-equiv="content-language" content="{$meta_language}" />
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var baseUri = '{$base_uri}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var priceDisplayMethod = {$priceDisplay};
			var roundMode = {$roundMode};
		</script>
{if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
	<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
	{/foreach}
{/if}
{if isset($js_files)}
	{foreach from=$js_files item=js_uri}
	<script type="text/javascript" src="{$js_uri}"></script>
	{/foreach}
{/if}
		{$HOOK_HEADER}
	</head>
	
	<body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="{if $hide_left_column}hide-left-column{/if} {if $hide_right_column}hide-right-column{/if} {if $content_only} content_only {/if}">
	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
		 <div class="row">
		<div class="large-16 columns" >

			<!-- Header -->
            
			<!--<div id="header" class="grid_9 alpha omega">
				<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
					<img class="logo" src="{$logo_url}" alt="{$shop_name|escape:'htmlall':'UTF-8'}" {if $logo_image_width}width="{$logo_image_width}"{/if} {if $logo_image_height}height="{$logo_image_height}" {/if} />
				</a>-->
				<div class="row">
				<div class="large-16 columns">
					<div class="panelTopBar">
                    
                    <img src="{$img_dir}topMenuLeft.jpg" alt="" />
						<ul>
							{$HOOK_TOP}
                            {if !$logged}
                        	<a href="index.php?id_cms=4&controller=cms"><li>Contact Us</li></a>
                            {/if}
                            {if $logged}
                            <a href="index.php?controller=my-account"><li>My Account</li></a>
                            <a href="{$link->getPageLink('index')}?mylogout"><li>Log Out</li></a>
                            {else}
                            <a href="index.php?controller=my-account"><li>Log in/Register</li></a>
                            {/if}
                            <a href="index.php?controller=order"><li>My Cart</li></a>
                            <!--<img id="cartImg" src="{$img_dir}cart-icon.png" alt="" />-->
                        </ul>
					</div>
				</div>
			</div>
            
            <div class="row">
				<div class="large-16 small-16 columns">
					<div class="panelLogoImages">
						<a href="index.php"><img id="leftImg" src="{$img_dir}usa-logo-large.png" alt="" /></a>
						<div id="rightImgSizeLarge"></div>
						<div id="rightImgSizeBig"></div>
						<div id="rightImgSizeMedium"></div>
						<div id="rightImgSizeSmall"></div>
						<div id="rightImgSizeTiny"></div>
						<!--<img id="rightImg" src="{$img_dir}logoImg.jpg" alt="" />-->
						<!--<p id="rightImgText">Supplies for Lodging, Entertainment and Food Service</p>-->
					</div>
					<div class="panelLogoImagesM">
						<a href="index.php"><img id="leftImgM" src="{$img_dir}/usa-logo-large.png" alt="" /></a>
					</div>
				</div>
			</div>
            
			<div class="row">
                <div class="large-16 columns">
                        <div class="panelTopMenu">
                        	<form method="get" action="index.php?controller=search" id="searchbox">
                                <input type="hidden" name="controller" value="search">
                                <input type="hidden" name="orderby" value="position">
                                <input type="hidden" name="orderway" value="desc">
                                <input class="search_query ac_input" type="text" id="search" name="search_query" value="" autocomplete="off">
                                <input type="submit" id="submit" name="submit_search" value="Search" >
							</form> 
                            <ul>
                                <a href="index.php?id_cms_category=3&controller=cms"><li>Company
                                    <ul class="menuDropDown">
                                        <a href="index.php?id_cms_category=4&controller=cms"><li>About Us</li></a>
                                        <a href="index.php?id_cms_category=5&controller=cms"><li>Infrastructure</li></a>
                                        <a href="index.php?id_cms_category=6&controller=cms"><li>Customers</li></a>
										<a href="index.php?id_cms_category=7&controller=cms"><li>Divisions</li></a>
                                        <a href="index.php?id_cms_category=8&controller=cms"><li>Hospitality B2B</li></a>
                                    </ul>
                                </li></a>
                                <a href="index.php?id_cms_category=5&controller=cms"><li>Menu2
									<ul class="menuDropDown">
                                        <a href="#"><li>Dropdown</li></a>
										<a href="#"><li>Dropdown</li></a>
										<a href="#"><li>Dropdown</li></a>
                                    </ul>
								</li></a>
                                <a href="index.php?id_cms_category=6&controller=cms"><li>Menu3
									<ul class="menuDropDown">
                                        <a href="#"><li>Dropdown</li></a>
										<a href="#"><li>Dropdown</li></a>
										<a href="#"><li>Dropdown</li></a>
                                    </ul>
								</li></a>
                                <a href="index.php?id_cms_category=7&controller=cms"><li>Menu4
									<ul class="menuDropDown">
                                        <a href="#"><li>Dropdown</li></a>
										<a href="#"><li>Dropdown</li></a>
										<a href="#"><li>Dropdown</li></a>
                                    </ul>
								</li></a>
                                <a href="index.php?id_cms_category=8&controller=cms"><li>Menu5
									<ul class="menuDropDown">
                                        <a href="#"><li>Dropdown</li></a>
										<a href="#"><li>Dropdown</li></a>
										<a href="#"><li>Dropdown</li></a>
                                    </ul>
								</li></a>
                                <!--<a href="cms.php"><li>Hospitality B2B</li></a>-->
                            </ul>
                        </div>
                    </div>
                </div>

			<!--main-->
            <div class="row">
				<div class="large-16 columns">
					
            <!--main-->
	{/if}

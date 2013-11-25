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

		{if !$content_only}		
        		</div>			
                    <div class="two large-2 sixteen small-16 columns">
							<!--If the page is a cms page, don't show best sellers or manufacturers. Show the news block.-->
							{if $page_name != 'cms'}
								<div class="panelBestSellers">
									<div class="clearBoth"></div> <!--to make height: auto; work-->
                                    {$HOOK_RIGHT_COLUMN}
								</div>

								<div class="panelManufacturers">
									<p class="titleBar">MANUFACTURERS</p>
									<div id="manufacturersContainer">
										<img src="{$img_dir}atlas-logo.png" alt="" />
										<img src="{$img_dir}kc-logo.png" alt="" />
										<img src="{$img_dir}unger-logo.png" alt="" />
										<img src="{$img_dir}sofidel-logo.png" alt="" />
										<img src="{$img_dir}wausau-logo.png" alt="" />
										<img src="{$img_dir}deb-logo.png" alt="" />
									</div>
									<div class="clearBoth"></div> <!--to make height: auto; work-->
								</div>
							{else}
								<div class="panelNews">
									<p class="titleBar">NEWS</p>
									<div id="newsContainer">
										News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />
										News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />
										News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!<br />News!

									</div>
									<div class="clearBoth"></div> <!--to make height: auto; work-->
								</div>
							{/if}
					</div>
				</div>
         {/if}
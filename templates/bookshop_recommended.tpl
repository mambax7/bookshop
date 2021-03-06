<!-- Created by Instant Zero (http://www.instant-zero.com), Design XoopsDesign (http://www.xoopsdesign.com) -->
<div id="bookshop-logo">
    <img src="<{$smarty.const.BOOKSHOP_IMAGES_URL}>bookshop.png" width="235" height="45" alt="" border="0"/>
</div>

<{if $welcome_msg != ''}>
    <table width="100%" cellspacing="0">
        <tr>
            <td class="box_blue-clip_01"></td>
            <td class="box_blue-clip_02"></td>
            <td class="box_blue-clip_03"></td>
        </tr>
        <tr>
            <td class="box_blue-clip_04"></td>
            <td class="welcome-message">

                <div>
                    <div id="bookshop_welcome"><{$welcome_msg}></div>
                </div>

            </td>
            <td class="box_blue-clip_05"></td>
        </tr>
        <tr>
            <td class="box_blue-clip_06"></td>
            <td class="box_blue-clip_07"></td>
            <td class="box_blue-clip_08"></td>
        </tr>
    </table>
<{/if}>

<{if $mod_pref.advertisement != ''}>
    <div id="bookshop_publicite"><{$mod_pref.advertisement}></div><{/if}>
<br>
<{if count($books) > 0 }>
    <div class="featured-blocks-titles"><h2><img src="<{$smarty.const.BOOKSHOP_IMAGES_URL}>icon-book-person.png" alt="<{$smarty.const._BOOKSHOP_CART}>" border="0"/><{$smarty.const._BOOKSHOP_RECOMMENDED}></h2></div>
    <table border="0" class="bookshop_bookindex">
        <{foreach item=book from=$books}>
            <tr>
                <td class="bookshop_bookthumb"><{if $book.book_thumb_url}><a href="<{$book.book_url_rewrited}>" title="<{$book.book_href_title}>"><img src="<{$smarty.const.XOOPS_UPLOAD_URL}>/<{$book.book_thumb_url}>" alt="<{$book.book_href_title}>" border="0"/></a><{/if}></td>
                <td class="bookshop_bookssummary">

                    <table width="100%" cellspacing="0">
                        <tr>
                            <td class="page-curl_01">
                                <div class="bookshop_booktitle"><{$book.book_recommended_picture}><a href="<{$book.book_url_rewrited}>" title="<{$book.book_href_title}>"><{$book.book_title}></a></div>
                                <div class="bookshop_bookauthor"><{if $book.book_joined_authors != ''}><img src="<{$smarty.const.BOOKSHOP_IMAGES_URL}>author.png" alt="" border="0" /><{$smarty.const._BOOKSHOP_BY}> <{$book.book_joined_authors}><{/if}></div>
                                <div class="bookshop_bookprice"><{if $book.book_stock > 0 }><{$smarty.const._BOOKSHOP_PRICE}> <a href="<{$smarty.const.BOOKSHOP_URL}>caddy.php?op=addbook&book_id=<{$book.book_id}>"
                                                                                                                                 title="<{$smarty.const._BOOKSHOP_ADD_TO_CART}>"><{if $book.book_discount_price_ttc > 0}>
                                            <s><{$book.book_price_ttc}></s>
                                            <{$book.book_discount_price_ttc}><{else}><{$book.book_price_ttc}><{/if}> <{$mod_pref.money_full}>
                                        <img src="<{$smarty.const.BOOKSHOP_IMAGES_URL}>cartadd.png" alt="<{$smarty.const._BOOKSHOP_ADD_TO_CART}>" border="0"/>
                                        </a><{else}><{$mod_pref.nostock_msg}><{/if}></div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        <{/foreach}>
    </table>
<{/if}>

<{if $pagenav }>
    <br>
    <div align='center'><{$pagenav}></div>
<{/if}>

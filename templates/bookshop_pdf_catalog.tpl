<{* ********************************************************************************************** *}>
<{* ***************************************** WARNING ******************************************** *}>
<{* ********************************************************************************************** *}>
<{* ****** DON'T USE ANYHTING ELSE THAN JPEG OR PNG PICTURES OR THE PDF WILL NOT BE CREATED ****** *}>
<{* ****** This is a template for a PDF so you can't use all the html tags just this :      ****** *}>
<{* h1, h2, h3, h4, h5, h6, b, u, i, a, img, p, br, strong, em, font, blockquote, li, ul, ol, hr, td, th, tr, table, sup, sub, small *}>
<{* ********************************************************************************************** *}>
<{* ********************************************************************************************** *}>
<p align='center'>
    <img src="<{$smarty.const.BOOKSHOP_IMAGES_URL}>pdf/header_first_page.jpg" alt="" border="0"/>
</p>
<br><br><br>
<{* **************************************** LIST BOOKS ****************************************** *}>
<{foreach item=book from=$books}>
    <h1><{$book.book_title|strip_tags}></h1>
    <br>
    <{$book.book_summary|strip_tags|wordwrap:120|nl2br}>
    <{if $details == 1 }>
        <br>
        <{$book.book_description|strip_tags|wordwrap:120|nl2br}>
    <{/if}>
    <br>
    <br>
<a href="<{$book.book_url_rewrited}>" title="<{$smarty.const._BOOKSHOP_READ_MORE}> <{$book.book_href_title}>"><i><{if $book.book_joined_authors != ''}><{$smarty.const._BOOKSHOP_BY|capitalize}> <{$book.book_joined_authors|strip_tags|wordwrap:100|nl2br}><{/if}>
    - <{if $book.book_stock > 0 }><{$smarty.const._BOOKSHOP_PRICE}> <{if $book.book_discount_price_ttc > 0}><{$book.book_discount_price_ttc}><{else}><{$book.book_price_ttc}><{/if}> <{$mod_pref.money_full}></i></a><{else}><{$mod_pref.nostock_msg}><{/if}>
    <br>
    <br>
    <br>
    <br>
<{/foreach}>
</table>
<{* **************************************** /LIST BOOKS ****************************************** *}>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="resp-col aside" id="slidePanel">
    <div id="filters" class="filters">
        <div class="filters-overlay-close">
            <div class="apply-filters-container">
                <button class="cta filters-overlay-close-cta">套用</button>
                <span class="icon icon-close"></span>
            </div>            
        </div>
        <div class="filters-scroll-container">            
            <form method="" autocomplete="off" class="form-base" id="filters-form">
                <fieldset class="" data-filter-name="name" id="filter-name">
                    <h3 role="button" tabindex="0" aria-expanded="true" aria-controls="filter-name-contents">名稱包含</h3>
                    <div id="filter-name-contents" class="filter-contents">
                        <label for="f-name" class="offscreen">飯店名稱</label>
                        <span class="name-input-wrapper">
                            <input type="text" value="" class="clearable autosuggest-enabled" name="f-name" id="f-name" placeholder="飯店名稱…"
                                autocomplete="off" autocorrect="off" aria-haspopup="true" role="combobox" aria-label="Search"
                                aria-autocomplete="both" aria-live="polite">
                            <input type="hidden" name="as-shown" value="false">
                        </span>
                        <button type="submit" id="f-name-cta" name="nameSubmit" aria-label="依照飯店名稱篩選結果" class="icon cta cta-control ">
                            <span class="offscreen">依照飯店名稱篩選結果</span></button>
                    </div>
                </fieldset>
                <div data-field-collection="non-name">
                    <fieldset class="checkbox-filters" data-filter-name="popular" id="filter-popular">
                        <h3 role="button" tabindex="0" aria-expanded="true" aria-controls="filter-popular-contents">熱門篩選條件</h3>
                        <div id="filter-popular-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="2048" data-id="f-facilities-2048" id="f-popular-2048">
                                    <label for="f-popular-2048">免費早餐</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="128" data-id="f-facilities-128" id="f-popular-128">
                                    <label for="f-popular-128">游泳池</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="527" data-id="f-facilities-527" id="f-popular-527">
                                    <label for="f-popular-527">免費無線上網</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="134234112" data-id="f-facilities-134234112" id="f-popular-134234112">
                                    <label for="f-popular-134234112">停車 (免費)</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="64" data-id="f-facilities-64" id="f-popular-64">
                                    <label for="f-popular-64">允許攜帶寵物</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="widget-slider-enabled" data-filter-name="price" id="filter-price">
                        <h3 role="button" tabindex="0" aria-expanded="true" aria-controls="filter-price-contents">每晚價格</h3>
                        <div id="filter-price-contents" class="filter-contents">
                            <input name="f-price-currency-code" type="hidden" value="TWD">
                            <input name="f-price-multiplier" type="hidden" value="1">
                            <div class="input-wrapper">
                                <label for="f-price-min" id="f-price-min-label">最低 (NT$)</label>
                                <input type="text" value="" name="f-price-min" id="f-price-min" placeholder="0"
                                    data-range-value="0" tabindex="-1">
                            </div>
                            <div class="input-wrapper">
                                <label for="f-price-max" id="f-price-max-label">最高 (NT$)</label>
                                <input type="text" value="" name="f-price-max" id="f-price-max" placeholder="25000+"
                                    data-range-value="25000" tabindex="-1">
                            </div>
                        </div>
                        <div class="filter-contents">
                            <div class="widget-slider">
                                <div class="widget-slider-current-values">
                                    <span class="min">NT$0</span> 到
                                    <span class="max">NT$25,000+</span>
                                </div>
                                <div class="widget-slider-cont">
                                    <div class="widget-slider-highlight" style="margin-left: 0%; margin-right: 0%;"></div>
                                    <div tabindex="0" class="cta cta-control widget-slider-handle widget-slider-handle-min"
                                        role="slider" aria-valuemin="0" aria-valuemax="25000" aria-labelledby="f-price-min-label"
                                        aria-controls="f-price-min" aria-valuenow="0" style="left: 0%;"> </div>
                                    <div tabindex="0" class="cta cta-control widget-slider-handle widget-slider-handle-max"
                                        role="slider" aria-valuemin="0" aria-valuemax="25000" aria-labelledby="f-price-max-label"
                                        aria-controls="f-price-max" aria-valuenow="25000" style="left: 100%;"> </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters inline-touch-controls " data-filter-name="star-rating" id="filter-star-rating">
                        <h3 role="button" tabindex="0" aria-expanded="true" aria-controls="filter-star-rating-contents">星級評等</h3>
                        <div id="filter-star-rating-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-star-rating" value="5" id="f-star-rating-5" aria-labelledby="f-star-rating-title">
                                    <label for="f-star-rating-5" id="f-label-star-rating-5">
                                        <span class="offscreen" aria-label="5 星級">5 </span>
                                        <span class="star-rating">
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                        </span>
                                    </label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-star-rating" value="4" id="f-star-rating-4" aria-labelledby="f-star-rating-title">
                                    <label for="f-star-rating-4" id="f-label-star-rating-4">
                                        <span class="offscreen" aria-label="4 星級">4 </span>
                                        <span class="star-rating">
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                        </span>
                                    </label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-star-rating" value="3" id="f-star-rating-3" aria-labelledby="f-star-rating-title">
                                    <label for="f-star-rating-3" id="f-label-star-rating-3">
                                        <span class="offscreen" aria-label="3 星級">3 </span>
                                        <span class="star-rating">
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                        </span>
                                    </label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-star-rating" value="2" id="f-star-rating-2" aria-labelledby="f-star-rating-title">
                                    <label for="f-star-rating-2" id="f-label-star-rating-2">
                                        <span class="offscreen" aria-label="2 星級">2 </span>
                                        <span class="star-rating">
                                            <span class="icon icon-star"></span>
                                            <span class="icon icon-star"></span>
                                        </span>
                                    </label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-star-rating" value="1" id="f-star-rating-1" aria-labelledby="f-star-rating-title">
                                    <label for="f-star-rating-1" id="f-label-star-rating-1">
                                        <span class="offscreen" aria-label="1 星級">1 </span>
                                        <span class="star-rating">
                                            <span class="icon icon-star"></span>
                                        </span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="widget-slider-enabled" data-filter-name="guest-rating" id="filter-guest-rating">
                        <h3 role="button" tabindex="0" aria-expanded="true" aria-controls="filter-guest-rating-contents">旅客評分</h3>
                        <div id="filter-guest-rating-contents" class="filter-contents">
                            <div class="input-wrapper">
                                <label for="f-guest-rating-min" id="f-guest-rating-min-label">最低</label>
                                <input type="number" value="" name="f-guest-rating-min" id="f-guest-rating-min"
                                    placeholder="0" data-range-value="0" min="0" max="10" step="0.5" tabindex="-1">
                            </div>
                            <div class="input-wrapper">
                                <label for="f-guest-rating-max" id="f-guest-rating-max-label">最高</label>
                                <input type="number" value="" name="f-guest-rating-max" id="f-guest-rating-max"
                                    placeholder="10" data-range-value="10" min="0" max="10" step="0.5" tabindex="-1">
                            </div>
                        </div>
                        <div class="filter-contents">
                            <div class="widget-slider">
                                <div class="widget-slider-current-values">
                                    <span class="min">0</span> 到
                                    <span class="max">10</span>
                                </div>
                                <div class="widget-slider-cont">
                                    <div class="widget-slider-highlight" style="margin-left: 0%; margin-right: 0%;"></div>
                                    <div tabindex="0" class="cta cta-control widget-slider-handle widget-slider-handle-min"
                                        role="slider" aria-valuemin="0" aria-valuemax="10" aria-labelledby="f-guest-rating-min-label"
                                        aria-controls="f-guest-rating-min" aria-valuenow="0" style="left: 0%;"> </div>
                                    <div tabindex="0" class="cta cta-control widget-slider-handle widget-slider-handle-max"
                                        role="slider" aria-valuemin="0" aria-valuemax="10" aria-labelledby="f-guest-rating-max-label"
                                        aria-controls="f-guest-rating-max" aria-valuenow="10" style="left: 100%;"> </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters filter-collapsed" data-filter-name="payment-preference" id="filter-payment-preference">
                        <h3 role="button" tabindex="0" aria-expanded="false" aria-controls="filter-payment-preference-contents">付款及取消</h3>
                        <div id="filter-payment-preference-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-pay-pref" value="fc" id="f-pay-pref-fc">
                                    <label for="f-pay-pref-fc">免費取消</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters filter-collapsed" data-filter-name="welcome-rewards" id="filter-welcome-rewards">
                        <div id="filter-welcome-rewards-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-wr" value="collect" id="f-wr-collect">
                                    <label for="f-wr-collect">累積晚數</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-wr" value="redeem" id="f-wr-redeem">
                                    <label for="f-wr-redeem">兌換免費住宿</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters filter-collapsed" data-filter-name="neighbourhood" id="filter-neighbourhood">
                        <h3 role="button" tabindex="0" aria-expanded="false" aria-controls="filter-neighbourhood-contents">地區</h3>
                        <div id="filter-neighbourhood-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645686" id="f-nid-1645686">
                                    <label for="f-nid-1645686">新宿</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645696" id="f-nid-1645696">
                                    <label for="f-nid-1645696">上野</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645685" id="f-nid-1645685">
                                    <label for="f-nid-1645685">澀谷</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645684" id="f-nid-1645684">
                                    <label for="f-nid-1645684">品川</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645689" id="f-nid-1645689">
                                    <label for="f-nid-1645689">銀座</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645691" id="f-nid-1645691">
                                    <label for="f-nid-1645691">池袋</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645688" id="f-nid-1645688">
                                    <label for="f-nid-1645688">淺草</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1727510" id="f-nid-1727510">
                                    <label for="f-nid-1727510">秋葉原</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645693" id="f-nid-1645693">
                                    <label for="f-nid-1645693">御台場</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645692" id="f-nid-1645692">
                                    <label for="f-nid-1645692">日本橋</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645694" id="f-nid-1645694">
                                    <label for="f-nid-1645694">六本木</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645687" id="f-nid-1645687">
                                    <label for="f-nid-1645687">赤坂</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1738055" id="f-nid-1738055">
                                    <label for="f-nid-1738055">新橋</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1808412" id="f-nid-1808412">
                                    <label for="f-nid-1808412">濱松町</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1725130" id="f-nid-1725130">
                                    <label for="f-nid-1725130">原宿</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1689760" id="f-nid-1689760">
                                    <label for="f-nid-1689760">目黑</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1808415" id="f-nid-1808415">
                                    <label for="f-nid-1808415">大崎</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645690" id="f-nid-1645690">
                                    <label for="f-nid-1645690">飯田橋</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1808488" id="f-nid-1808488">
                                    <label for="f-nid-1808488">田町</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="10873559" id="f-nid-10873559">
                                    <label for="f-nid-10873559">西新宿</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1738104" id="f-nid-1738104">
                                    <label for="f-nid-1738104">御茶之水</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1808413" id="f-nid-1808413">
                                    <label for="f-nid-1808413">有樂町</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="10873509" id="f-nid-10873509">
                                    <label for="f-nid-10873509">苅田</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1808417" id="f-nid-1808417">
                                    <label for="f-nid-1808417">四谷</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1808416" id="f-nid-1808416">
                                    <label for="f-nid-1808416">大手町</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1808414" id="f-nid-1808414">
                                    <label for="f-nid-1808414">高田馬場</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645695" id="f-nid-1645695">
                                    <label for="f-nid-1645695">芝</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="10783380" id="f-nid-10783380">
                                    <label for="f-nid-10783380">高圓寺</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="10873570" id="f-nid-10873570">
                                    <label for="f-nid-10873570">神田神保町</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="10873560" id="f-nid-10873560">
                                    <label for="f-nid-10873560">後樂園</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="10928457" id="f-nid-10928457">
                                    <label for="f-nid-10928457">新宿二丁目</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-nid" value="1645705" id="f-nid-1645705">
                                    <label for="f-nid-1645705">浦安</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters filter-collapsed" data-filter-name="landmarks" id="filter-landmarks">
                        <h3 role="button" tabindex="0" aria-expanded="false" aria-controls="filter-landmarks-contents">景點地標</h3>
                        <div id="filter-landmarks-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="726784" id="f-lid-726784">
                                    <label for="f-lid-726784">市中心</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658489" id="f-lid-1658489">
                                    <label for="f-lid-1658489">東京迪士尼樂園®</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1645880" id="f-lid-1645880">
                                    <label for="f-lid-1645880">東京 (HND – 羽田機場)</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658492" id="f-lid-1658492">
                                    <label for="f-lid-1658492">東京巨蛋</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658484" id="f-lid-1658484">
                                    <label for="f-lid-1658484">淺草寺</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1678204" id="f-lid-1678204">
                                    <label for="f-lid-1678204">幕張展覽館</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1717096" id="f-lid-1717096">
                                    <label for="f-lid-1717096">新宿站</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658467" id="f-lid-1658467">
                                    <label for="f-lid-1658467">明治神宮</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658491" id="f-lid-1658491">
                                    <label for="f-lid-1658491">東京迪士尼海洋®</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1753675" id="f-lid-1753675">
                                    <label for="f-lid-1753675">澀谷十字路口</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1717201" id="f-lid-1717201">
                                    <label for="f-lid-1717201">上野站</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1721082" id="f-lid-1721082">
                                    <label for="f-lid-1721082">東京晴空塔</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1717065" id="f-lid-1717065">
                                    <label for="f-lid-1717065">東京站</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658522" id="f-lid-1658522">
                                    <label for="f-lid-1658522">東京鐵塔</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658475" id="f-lid-1658475">
                                    <label for="f-lid-1658475">日本武道館</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658528" id="f-lid-1658528">
                                    <label for="f-lid-1658528">築地魚市場</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1717214" id="f-lid-1717214">
                                    <label for="f-lid-1717214">品川站</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1679568" id="f-lid-1679568">
                                    <label for="f-lid-1679568">早稻田大學</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1717218" id="f-lid-1717218">
                                    <label for="f-lid-1717218">新木場站</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-lid" value="1658495" id="f-lid-1658495">
                                    <label for="f-lid-1658495">東京國際展示場</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters filter-collapsed" data-filter-name="accommodation-type" id="filter-accommodation-type">
                        <h3 role="button" tabindex="0" aria-expanded="false" aria-controls="filter-accommodation-type-contents">住宿類型</h3>
                        <div id="filter-accommodation-type-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="15" id="f-accid-15">
                                    <label for="f-accid-15">公寓</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="20" id="f-accid-20">
                                    <label for="f-accid-20">公寓飯店</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="4" id="f-accid-4">
                                    <label for="f-accid-4">家庭式渡假屋</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="18" id="f-accid-18">
                                    <label for="f-accid-18">日式旅館</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="11" id="f-accid-11">
                                    <label for="f-accid-11">木屋</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="5" id="f-accid-5">
                                    <label for="f-accid-5">民宿</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="3" id="f-accid-3">
                                    <label for="f-accid-3">渡假村</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="25" id="f-accid-25">
                                    <label for="f-accid-25">膳宿公寓</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="30" id="f-accid-30">
                                    <label for="f-accid-30">賓館</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="12" id="f-accid-12">
                                    <label for="f-accid-12">青年旅舍</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-accid" value="1" id="f-accid-1">
                                    <label for="f-accid-1">飯店</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters filter-collapsed" data-filter-name="facilities" id="filter-facilities">
                        <h3 role="button" tabindex="0" aria-expanded="false" aria-controls="filter-facilities-contents">設施</h3>
                        <div id="filter-facilities-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="539" id="f-facilities-539">
                                    <label for="f-facilities-539">Spa</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="8" id="f-facilities-8">
                                    <label for="f-facilities-8">上網</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="134234112" id="f-facilities-134234112">
                                    <label for="f-facilities-134234112">停車 (免費)</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="2" id="f-facilities-2">
                                    <label for="f-facilities-2">健身房</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="64" id="f-facilities-64">
                                    <label for="f-facilities-64">允許攜帶寵物</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="2048" id="f-facilities-2048">
                                    <label for="f-facilities-2048">免費早餐</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="527" id="f-facilities-527">
                                    <label for="f-facilities-527">免費無線上網</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="525" id="f-facilities-525">
                                    <label for="f-facilities-525">可提供搖籃</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="523" id="f-facilities-523">
                                    <label for="f-facilities-523">可提供連通客房</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="537" id="f-facilities-537">
                                    <label for="f-facilities-537">吸煙區</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="519" id="f-facilities-519">
                                    <label for="f-facilities-519">商務設施</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="517" id="f-facilities-517">
                                    <label for="f-facilities-517">客房內浴缸</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="32" id="f-facilities-32">
                                    <label for="f-facilities-32">廚房</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="521" id="f-facilities-521">
                                    <label for="f-facilities-521">托兒服務</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="1" id="f-facilities-1">
                                    <label for="f-facilities-1">會議設施</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="513" id="f-facilities-513">
                                    <label for="f-facilities-513">機場接送</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="1073743315" id="f-facilities-1073743315">
                                    <label for="f-facilities-1073743315">汽車充電站</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="128" id="f-facilities-128">
                                    <label for="f-facilities-128">游泳池</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="529" id="f-facilities-529">
                                    <label for="f-facilities-529">禁煙</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="515" id="f-facilities-515">
                                    <label for="f-facilities-515">酒吧</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="16384" id="f-facilities-16384">
                                    <label for="f-facilities-16384">附停車場</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="256" id="f-facilities-256">
                                    <label for="f-facilities-256">餐廳</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters filter-collapsed" data-filter-name="themes-types" id="filter-themes-types">
                        <h3 role="button" tabindex="0" aria-expanded="false" aria-controls="filter-themes-types-contents">主題/類型</h3>
                        <div id="filter-themes-types-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="27" id="f-thid-27">
                                    <label for="f-thid-27">Spa</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="14" id="f-thid-14">
                                    <label for="f-thid-14">商務</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="15" id="f-thid-15">
                                    <label for="f-thid-15">奢華</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="18" id="f-thid-18">
                                    <label for="f-thid-18">探險</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="2" id="f-thid-2">
                                    <label for="f-thid-2">歷史</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="1" id="f-thid-1">
                                    <label for="f-thid-1">浪漫</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="22" id="f-thid-22">
                                    <label for="f-thid-22">溫泉</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="4" id="f-thid-4">
                                    <label for="f-thid-4">精品</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="25" id="f-thid-25">
                                    <label for="f-thid-25">親子</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="17" id="f-thid-17">
                                    <label for="f-thid-17">購物</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-thid" value="26" id="f-thid-26">
                                    <label for="f-thid-26">高爾夫</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                    <fieldset class="checkbox-filters filter-collapsed" data-filter-name="accessibility" id="filter-accessibility">
                        <h3 role="button" tabindex="0" aria-expanded="false" aria-controls="filter-accessibility-contents">無障礙設施</h3>
                        <div id="filter-accessibility-contents" class="filter-contents">
                            <ul>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="1048576" id="f-accessibility-1048576">
                                    <label for="f-accessibility-1048576">房內無障礙設施</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="131072" id="f-accessibility-131072">
                                    <label for="f-accessibility-131072">無障礙浴室</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="262144" id="f-accessibility-262144">
                                    <label for="f-accessibility-262144">無障礙淋浴間</label>
                                </li>
                                <li class="">
                                    <input type="checkbox" name="f-amid" value="541" id="f-accessibility-541">
                                    <label for="f-accessibility-541">無障礙通道</label>
                                </li>
                            </ul>
                        </div>
                    </fieldset>
                </div>
                <fieldset class="applied" data-filter-name="hidden" id="filter-hidden">
                    <input type="hidden" name="sort-order" value="BEST_SELLER">
                    <input type="hidden" name="destination-id" value="726784">
                    <input type="hidden" name="q-destination" value="東京, 日本">
                    <input type="hidden" name="q-check-in" value="2018-05-25">
                    <input type="hidden" name="q-check-out" value="2018-05-26">
                    <input type="hidden" name="q-rooms" value="1">
                    <input type="hidden" name="q-room-0-adults" value="1">
                    <input type="hidden" name="q-room-0-children" value="0">
                    <input type="hidden" name="f-lid" id="f-lid-generated" value="">
                    <input type="hidden" name="include-filters" value="true">
                </fieldset>
                <div class="filters-submit-row">
                    <button class="cta">套用選擇</button>
                </div>
            </form>
        </div>
    </div>    
    <div id="adLEFT1_180X150" name="ad"></div>
    <div id="adLEFT1_160X600" name="ad"></div>
    <div id="adLEFT2_160X600" name="ad"></div>
</div>
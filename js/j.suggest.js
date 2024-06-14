(function ($) {
    $.suggest_list = function (input, options) {

        var $input = $(input).attr("autocomplete", "off");
        var $results;

        var timeout = false;		// hold timeout ID for suggestion results to appear	
        var prevLength = 0;			// last recorded length of $input.val()
        var cache = [];				// cache MRU list
        var cacheSize = 0;			// size of cache in chars (bytes?)

        if (!options.attachObject)
            options.attachObject = $(document.createElement("ul")).appendTo('body');

        $results = $(options.attachObject);
        $results.addClass(options.resultsClass);
        $input.blur(function () {
            setTimeout(function () {
                $results.hide();
            }, 200);
        });
        $input.on('input propertychange', function () {
            var q = $.trim($(this).val());
            displayItems(q);
        }
        );

        // help IE users if possible
        try {
            $results.bgiframe();
        } catch (e) {
        }

        function displayItems(items) {
            var html = '';
            if (items === '' ||items === null ) {//给你写入几个例子数据}
                for (h in options.hot_list){  
                    html += '<li style="margin-top:5px;"><a>' +options.hot_list[h] + '</a></li>';
                }
                html = '<ul style="list-style-type: none;font-size:16px;">' + html + '</ul>';
            } else {
                for (var i = 0; i < options.source.length; i++) {//
                    //var reg = new RegExp('^.*' + items + '.*$', 'im');//这步最关键，可以决定是从头匹配，还是任意匹配                                                
                    //if (reg.test(options.source[i][1]) || reg.test(options.source[i][1]) || reg.test(options.source[i][2]) || reg.test(options.source[i][3])) {
                    // var i=options.source[i][1].indexof(items);
                    var idx = options.source[i].toUpperCase().indexOf(items.toUpperCase());//忽略大小写的比较
                    var len = items.length;
                    if (idx === 0) {
                        html += '<li><a>' + options.source[i].substring(len) + '</a></li>';
                    }
                    if (idx > 0) {
                        html += '<li><a>' + options.source[i].substring(0, idx) + '<font style="color:#FF0000;">' + options.source[i].substring(idx, idx + len) + '</font>' + options.source[i].substring(idx + len) + '</a></li>';
                    }
                }
                if (html === '') {
                    suggest_list_tip = '<div class="gray ac_result_tip">Sorry, there is no ' + items + '</div>';
                } else{
                     suggest_list_tip = '<div class="gray ac_result_tip"></div>';
                }
                html = suggest_list_tip + '<ul style="list-style-type: none;font-size:16px;">' + html + '</ul>';
            }

            $results.html(html).show();
            $results.children('ul').children('li:first-child').addClass(options.selectClass);

            $results.children('ul')
                    .children('li')
                    .mouseover(function () {
                        $results.children('ul').children('li').removeClass(options.selectClass);
                        $(this).addClass(options.selectClass);
                    })
                    .click(function (e) {
                        e.preventDefault();
                        e.stopPropagation();
                        selectCurrentResult();
                    });
        }

        function getCurrentResult() {

            if (!$results.is(':visible'))
                return false;

            var $currentResult = $results.children('ul').children('li.' + options.selectClass);
            if (!$currentResult.length)
                $currentResult = false;

            return $currentResult;

        }

        function selectCurrentResult() {

            $currentResult = getCurrentResult();

            if ($currentResult) {
                var reg1 = new RegExp('<.*\">');
                var reg2 = new RegExp('<.*>');
                //$input.val($currentResult.children('a').html().replace(/<span>.+?<\/span>/i,''));
                //先替换第一个，再替换第二个
                $input.val($currentResult.children('a').html().replace(reg1, '').replace(reg2, ''));
                //$input.val($currentResult.children('a').html().replace("font",''));
                $results.hide();
                if ($(options.dataContainer)) {
                    $(options.dataContainer).val($currentResult.attr('rel'));
                }

                if (options.onSelect) {
                    options.onSelect.apply($input[0]);
                }
            }
            //ncRNASel_DisChange();	
        }

        function nextResult() {

            $currentResult = getCurrentResult();

            if ($currentResult)
                $currentResult
                        .removeClass(options.selectClass)
                        .next()
                        .addClass(options.selectClass);
            else
                $results.children('ul').children('li:first-child').addClass(options.selectClass);

        }

        function prevResult() {

            $currentResult = getCurrentResult();

            if ($currentResult)
                $currentResult
                        .removeClass(options.selectClass)
                        .prev()
                        .addClass(options.selectClass);
            else
                $results.children('ul').children('li:last-child').addClass(options.selectClass);

        }


        if ($.trim($input.val()) === '') {
            displayItems('');//调用的函数要在此句之前定义
        }
    };

    $.fn.suggest_list = function (source, options) {

        if (!source)
            return;

        options = options || {};
        options.source = options.source || [];
        options.hot_list = options.hot_list || [];
        options.delay = options.delay || 0;
        options.resultsClass = options.resultsClass || 'ac_results';
        options.selectClass = options.selectClass || 'ac_over';
        options.matchClass = options.matchClass || 'ac_match';
        options.minchars = options.minchars || 1;
        options.delimiter = options.delimiter || '\n';
        options.onSelect = options.onSelect || false;
        options.dataDelimiter = options.dataDelimiter || '\t';
        options.dataContainer = options.dataContainer || '#SuggestResult';
        options.attachObject = options.attachObject || null;

        this.each(function () {
            new $.suggest_list(this, options);
        });

        return this;

    };
})(jQuery);
 
;(function(global, document, $, undefined) {

    function initSearch() {
        var $search = $('.dw-search');
        var $searchInput = $search.find('[type=text]');
        var focusClass = 'active';
        var addFocusLabel = $search.addClass.bind($search, focusClass);
        var requestFocusLabelRemoval = function requestFocusLabelRemoval () {
            if (this.value === '') {
                $search.removeClass(focusClass);
            }
        };
        $searchInput.on('focus', addFocusLabel);
        $searchInput.on('focusout', requestFocusLabelRemoval);
    }

    function addCopyToClipboard() {


        var enableCopyBtn = function enableCopyBtn ($btn) {
            var client = new ZeroClipboard($btn[0]);
            client.on("aftercopy", function( event ) {
                alert('Successfully copied to clipboard!');
                $(event.target).addClass('disabled');
            });
            return $btn;
        };

        var copyModule = function copyModule (code) {
            var $module = $('<div class="copy-header"></div>');
            var $btn = $('<a href="#" class="copy-btn">Copy to Clipboard</a>');
            $btn
                .attr('data-clipboard-text', code)
                .on('click', function (evt) {evt.preventDefault();})
                .each(function () { enableCopyBtn($(this)); })
                .appendTo($module);
            return $module;
        };

        var $codeBlocks = $('div.body .highlight');

        $codeBlocks.each(function () {
            var code = $(this).find('pre').text();
            var $copyModule = copyModule(code);
            $(this).prepend($copyModule);
        })

    }

    $(document).ready(function () {
        initSearch();
        addCopyToClipboard();
    })

})(window, document, jQuery);
;(function(global, document, $, undefined) {

    $(document).ready(function () {
        var $search = $('.dw-search');
        var $searchInput = $search.find('[type=text]');
        var focusClass = 'focus';
        var addFocusLabel = $search.addClass.bind($search, focusClass);
        var requestFocusLabelRemoval = function requestFocusLabelRemoval () {
            if (this.value === '') {
                $search.removeClass(focusClass);
            }
        };
        $searchInput.on('focus', addFocusLabel);
        $searchInput.on('focusout', requestFocusLabelRemoval);
    })

})(window, document, jQuery);
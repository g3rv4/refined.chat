$(document).ready(function () {
    // Cache some variables
    var navigation = $(".js-navigation");
    var closeIcon = $(".js-hamburger-close-icon");
    var hamburgerIcon = $(".js-hamburger-icon");

    function regenerateMenu() {
        // Hide the navigation if we've opened it
        hamburgerIcon.removeClass("d-none");
        closeIcon.addClass("d-none");
        navigation.addClass("md:d-none");

        // Build the menu
        $(".js-secondary-nav").toc({ content: "#content", headings: "h2.stacks-h2, h3.stacks-h3" });
    }

    $.when($.ready).then(function () {
        regenerateMenu();

        window.history.replaceState({
            'href': window.location.href,
            'title': $('head').filter('title').text(),
            'nav': $(document).find('#nav').html(),
            'content': $(document).find('#content').html(),
        }, '', window.location.href)

        function handleClick (event) {
            // Allow opening links in new tabs
            if (event.metaKey) {
                return
            }

            // Get desired link
            var href = $(this).attr('href');

            if (href.startsWith('http')) {
                return;
            }

            // Prevent following link
            event.preventDefault()

            // Make Ajax request to get the page content
            $.ajax({
                method: 'GET',
                url: href,
                dataType: 'html',
            }).done(function (html) {

                // Parse the HTML response
                var title = $(html).filter('title').text()
                var nav = $(html).find('#nav').html()
                var content = $(html).find('#content').html()

                // Update the page
                $('head title').text(title)
                $('#nav').html(nav)
                $('#content').html(content)

                // Scroll to the top of the page
                $(document).scrollTop(0)

                regenerateMenu();

                $('#nav, .stacks-section, .js-stacks-topbar').off().on('click', 'a:not(.js-anchor)', handleClick);

                // Add page load to browser history
                window.history.pushState({
                    'href': href,
                    'title': title,
                    'nav': $(html).find('#nav').html(),
                    'content': $(html).find('#content').html(),
                }, '', href)
            })
        }

        $('#nav, .stacks-section, .js-stacks-topbar').off().on('click', 'a:not(.js-anchor)', handleClick);

        window.onpopstate = history.onpushstate = function (e) {
            if (e.state) {
                // Update the page
                $('title').text(e.state.title)
                $('#nav').html(e.state.nav)
                $('#content').html(e.state.content)
            }
        }
    });
});

$(function () {
    $('h1').css({color: 'green'})

    $('.new-author').on('ajax:send', function() {
        $('.authors').append('<img class="loader" src="https://media.giphy.com/media/y1ZBcOGOOtlpC/200.gif">')
        }).on('ajax:complete', function() {
            $('.loader').remove()
        })
})
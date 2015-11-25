$(function() {
    $('.moment').each( function() {
	var span = $(this);
	span.text( moment(span.attr('data-date')).format('LL') );
    });
});

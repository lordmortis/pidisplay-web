class Infodisplay.Infomessage extends DS.Model
	text: DS.attr('string')
	display_time: DS.attr('number')
	priority: DS.attr('number')
	updated_at: DS.attr('date')
	created_at: DS.attr('date')
class Infodisplay.Infomessage extends DS.Model
	text: DS.attr('string')
	displayTime: DS.attr('number')
	priority: DS.attr('number')
	updatedAt: DS.attr('date')
	createdAt: DS.attr('date')
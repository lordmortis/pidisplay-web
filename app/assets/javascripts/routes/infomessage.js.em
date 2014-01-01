class Infodisplay.InfomessagesRoute extends Ember.Route
	model: ->
		this.store.find("infomessage")
	actions:
		create_infomessage: (item) ->
			console.log("Creating infomessage:")
			console.log(item)								
class Infodisplay.InfomessagesRoute extends Ember.Route
	model: ->
		this.store.find("infomessage")
	actions:
		create_infomessage: (item) ->
			view = this.container.lookup("component:infomessage-editor")
			view.set('item', this.store.createRecord('infomessage'))
			view.append(Infodisplay.rootElement)

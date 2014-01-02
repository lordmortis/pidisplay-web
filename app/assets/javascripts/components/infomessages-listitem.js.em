class Infodisplay.InfomessagesListitemComponent extends Ember.Component
	tagName: 'tr'
	templateName: "components/infomessages-listitem"

	didInsertElement: ->
		id = this.item.id
		Ember.run.next(this, -> 
			this.$().attr("data-id", id)
		)

	actions:
		show: ->
			console.log("Showing infomessage:")
			console.log(this.item)
		edit: ->
			view = this.container.lookup("component:infomessage-editor")
			view.set('item', this.item)
			view.append(Infodisplay.rootElement)
		delete: ->
			this.item.deleteRecord()
			this.item.save()
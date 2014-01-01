class Infodisplay.InfomessagesListitemComponent extends Ember.Component
	tagName: 'tr'
	actions:
		show: ->
			console.log("Showing infomessage:")
			console.log(this.item)
		edit: ->
			console.log("Editing infomessage:")
			console.log(this.item)
		delete: ->
			this.item.deleteRecord()
			this.item.save()
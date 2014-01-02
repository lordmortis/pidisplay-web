class Infodisplay.InfomessageEditorComponent extends Ember.Component
	tagName: 'div'
	className: 'modal-backdrop fade'
	templateName: "components/infomessage-editor"

	didInsertElement: ->
		Ember.run.next(this, -> 
			this.$('.modal, .modal-backdrop').modal()
		)

	actions:
		close: ->
			Ember.run.next(this, -> 
				view = this
				this.$('.modal, .modal-backdrop').modal('hide')
				this.$('.modal, .modal-backdrop').one("transitionend", (ev) ->
					this.remove()
					view.controller.send('remove')
				)
			)
		save: ->
			this.item.save()
			
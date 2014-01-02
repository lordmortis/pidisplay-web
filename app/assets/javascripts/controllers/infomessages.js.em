class Infodisplay.InfomessagesController extends Ember.ArrayController
	sortProperties: ['priority']
	updateSortOrder: (indexes) ->
		console.log(indexes)
		this.beginPropertyChanges()
		this.forEach((item) ->
			index = indexes[item.get('id')]
			item.priority = index
			item.save()
		)
		this.endPropertyChanges()
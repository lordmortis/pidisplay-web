class Infodisplay.InfomessagesView extends Ember.View
  didInsertElement: -> 
    controller = this.get('controller')
    this.$("table").sortable
      items: "tr"
      update: (event, ui) ->
        indexes = {}
        $(this).find('tr').each (index) ->
          indexes[$(this).data('id')] = index
        $(this).sortable('cancel')
        controller.updateSortOrder(indexes)
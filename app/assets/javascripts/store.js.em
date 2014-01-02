# http://emberjs.com/guides/models/using-the-store/

class DS.InfodisplaySerializer extends DS.ActiveModelSerializer

class DS.InfodisplayAdapter extends DS.ActiveModelAdapter
	defaultSerializer: "DS/Infodisplay"

class Infodisplay.Store extends DS.Store
	adapter: "DS/Infodisplay"
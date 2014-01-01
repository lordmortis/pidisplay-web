# http://emberjs.com/guides/models/using-the-store/

class DS.InfodisplaySerializer extends DS.RESTSerializer

class DS.InfodisplayAdapter extends DS.RESTAdapter
	defaultSerializer: DS.InfodisplaySerializer

class Infodisplay.Store extends DS.Store
	adapter: DS.InfodisplayAdapter
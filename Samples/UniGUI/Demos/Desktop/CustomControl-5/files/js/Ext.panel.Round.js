Ext.define('Ext.panel.Round', {
	 	extend: 'Ext.panel.Panel',
	 
		radius: 5,
	 
	  afterRender: function() {
        var me = this;

        me.callParent();
        me.setRadius();
		},
    
		setRadius: function(rad) {
      var me = this,
					oldRadius = me.radius;
      
      if (rad !== undefined) me.radius = rad;
    	if (me.rendered) {
      	me.body.dom.style.borderRadius = me.radius +'px';
      	if (oldRadius != me.radius && rad !== undefined) {
					me.fireEvent('changeradius', me, me.radius, oldRadius); 
				}
			} 
		}
});
google.maps.__gjsload__('overlay', function(_){var oz=_.na("b"),pz=_.l(),qz=function(){var a=this.dg;if(this.getPanes()){if(this.getProjection()){if(!a.b&&this.onAdd)this.onAdd();a.b=!0;this.draw()}}else{if(a.b)if(this.onRemove)this.onRemove();else this.remove();a.b=!1}},rz=function(a){a.dg=a.dg||new pz;return a.dg},sz=function(a){_.If.call(this);this.na=(0,_.t)(qz,a)},vz=function(a){if(a){var b=a.getMap(),c=a.__gmop;if(c){if(c.map==b)return;a.__gmop=null;c.lg()}if(b&&b instanceof _.Pd){var d=b.__gm;d.overlayLayer?a.__gmop=new tz(b,a,d.overlayLayer):
d.b.then(function(c){c=c.va;var e=new uz(b,b.getProjection(),c);c.pb(e);d.overlayLayer=e;vz(a)})}}},tz=function(a,b,c){this.map=a;this.ma=b;this.Pm=c;this.Mf=!1;_.zn(this.map,"Ox");_.Bn("Ox","-p",this.ma,!!this.map.ea);c.f.push(this);c.b&&wz(this,c.b);c.j.Ac()},wz=function(a,b){a.ma.get("projection")!=b&&(a.ma.bindTo("panes",a.map.__gm),a.ma.set("projection",b))},xz=function(a,b,c){this.F=a;this.m=b;this.j=c;this.f=new _.ac(0,0);this.l=new _.ac(0,0);this.b=_.fc(0,0,0)},yz=function(a){var b=a.j.bd();
return a.j.yb({clientX:b.left,clientY:b.top})},zz=function(a,b,c){if(!c||!b)return null;b=_.Wm(b,a.m);b=_.wj(a.j.f,b,a.l);a=_.yk(_.xj(a.b,_.sj(b,c)));return new _.A(a.X,a.Z)},Az=function(a,b,c,d){return c&&a.b?_.Xm(_.rj(c,_.gc(a.b,{X:b.x,Z:b.y})),a.m,d):null},uz=function(a,b,c){this.F=a;this.j=c;this.l=b;this.b=null;this.f=[]};_.u(oz,_.J);
oz.prototype.changed=function(a){"outProjection"!=a&&(a=!!(this.get("offset")&&this.get("projectionTopLeft")&&this.get("projection")&&_.Bb(this.get("zoom"))),a==!this.get("outProjection")&&this.set("outProjection",a?this.b:null))};_.u(sz,_.If);tz.prototype.draw=function(){this.Mf||(this.Mf=!0,this.ma.onAdd&&this.ma.onAdd());this.ma.draw&&this.ma.draw()};tz.prototype.lg=function(){_.Cn("Ox","-p",this.ma);this.ma.unbindAll();this.ma.set("panes",null);this.ma.set("projection",null);_.Ua(this.Pm.f,this);this.ma.onRemove?this.ma.onRemove():this.ma.remove();this.Mf=!1};_.m=xz.prototype;_.m.fromLatLngToContainerPixel=function(a){var b=yz(this);return zz(this,a,b)};_.m.fromLatLngToDivPixel=function(a){return zz(this,a,this.f)};
_.m.fromDivPixelToLatLng=function(a,b){return Az(this,a,this.f,b)};_.m.fromContainerPixelToLatLng=function(a){var b=yz(this);return Az(this,a,b)};_.m.getWorldWidth=function(){return this.b?_.xj(this.b,new _.ac(256,256)).X:256*Math.pow(2,this.F.getZoom()||0)};uz.prototype.la=_.l();uz.prototype.Qb=function(a,b,c,d){a=this.b=this.b||new xz(this.F,this.l,this.j);a.b=c;a.f=b;a.l=d;b=_.Aa(this.f);for(c=b.next();!c.done;c=b.next())c=c.value,wz(c,a),c.draw()};_.ce("overlay",{vk:function(a){if(a){var b=a.getMap();if(b&&b instanceof _.Pd||a.__gmop)vz(a);else{b=a.getMap();var c=rz(a),d=c.lm;c.lm=b;d&&(c=rz(a),(d=c.aa)&&d.unbindAll(),(d=c.ji)&&d.unbindAll(),a.unbindAll(),a.set("panes",null),a.set("projection",null),_.w(c.R,_.G.removeListener),c.R=null,c.Xb&&(c.Xb.na(),c.Xb=null),_.Cn("Ox","-p",a));if(b){c=rz(a);d=c.Xb;d||(d=c.Xb=new sz(a));_.w(c.R||[],_.G.removeListener);var e=c.aa=c.aa||new _.ll,f=b.__gm;e.bindTo("zoom",f);e.bindTo("offset",f);e.bindTo("center",
f,"projectionCenterQ");e.bindTo("projection",b);e.bindTo("projectionTopLeft",f);e=c.ji=c.ji||new oz(e);e.bindTo("zoom",f);e.bindTo("offset",f);e.bindTo("projection",b);e.bindTo("projectionTopLeft",f);a.bindTo("projection",e,"outProjection");a.bindTo("panes",f);e=(0,_.t)(d.T,d);c.R=[_.G.addListener(a,"panes_changed",e),_.G.addListener(f,"zoom_changed",e),_.G.addListener(f,"offset_changed",e),_.G.addListener(b,"projection_changed",e),_.G.addListener(f,"projectioncenterq_changed",e),_.G.forward(b,"forceredraw",
d)];d.T();b instanceof _.Pd&&(_.zn(b,"Ox"),_.Bn("Ox","-p",a,!!b.ea))}}}},stopMapClick:function(a){_.oo(a,{jb:function(a){return _.Gn(a.event)}}).Gc(!0)},stopAllMapEvents:function(a){a.addEventListener("click",_.xc);a.addEventListener("contextmenu",_.xc);a.addEventListener("dblclick",_.xc);a.addEventListener("mousedown",_.xc);a.addEventListener("mousemove",_.xc);a.addEventListener("MSPointerDown",_.xc);a.addEventListener("pointerdown",_.xc);a.addEventListener("touchstart",_.xc);a.addEventListener("wheel",
_.xc)}});});

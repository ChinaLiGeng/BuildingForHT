!function(H,c){"use strict";var R="ht",V=R+".widget.",w=H[R],e=w.widget,M=w.Default,x=w.Color,s=M.getInternal(),X=s.fillRect,P=M.setImage,L=M.getImage,o=M.drawCenterImage,y=s.layout,f=M.def;w.IsGetter.caseSensitive=1,P("proerptypane_category",16,16,"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAACxSURBVHjaYrx68STD1p0H/zPgAN7u9owMeAALjGFubo4hefLkSQZCgAVdICwsjGHVqlUoYk5ufigu3LdrEyNWA0CasRmCrAEdMCFzYJrQXQAKIxhG5mP1ArpmbAGJzGchJsCQYwmkGcYHsRlB0YiumFDU4Y0FslxAlYRUWlqKIdnd3U3QBRhekJCQYHjx4gXRscCErhmZJjkQQTZjcwHRSRlmCDrAl5RZ0AOM1GgECDAAKhF1/YP8df0AAAAASUVORK5CYII="),P("proerptypane_sort",16,16,"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAACqSURBVHjaYrx68SQDMnBy8/u/b9cmRgYswMltD1DOBUWOCZmzdefB/8g0OkDXjGFAb28vA8h2EI3LBTgNQLcVmyuwuYARFgYgv2NqQA0LbGHAgksDNgOxASZkxbhofIAFm1NxRSNOA4gNA7wGkBsGjOgpEaa5uLiYwdvdnhFX/MNig4mQZhAoLmZFUYPMZyKkGQTw8ZlwOxs1DGC2oruG4pSINRBJAQABBgDKqW8M60DHlgAAAABJRU5ErkJggg=="),s.addMethod(M,{propertyPaneHeaderLabelColor:M.labelColor,propertyPaneHeaderLabelFont:M.labelFont,propertyPaneSelectBackground:x.highlight,propertyPaneHeaderBackground:x.headerBackground},!0),e.PropertyPane=function(Y){var n=this,v=n._view=s.createView(1,n),K=n._propertyView=new e.PropertyView(Y),c=n._input=M.createElement("input"),P=n._canvas=s.createCanvas(v);P.style.background=M.propertyPaneHeaderBackground||"",v.appendChild(P),v.appendChild(c),v.appendChild(K.getView()),K.isVisible=function(d){var o=c.value,G=this._visibleFunc,M=this.getPropertyName(d);if(M&&o)if(n._caseSensitive){if(M.indexOf(o)<0)return!1}else if(M.toLocaleLowerCase().indexOf(o.toLocaleLowerCase())<0)return!1;return G?G(d):!0},K.mp(function(i){var K=i.property;("indent"===K||"columnPosition"===K||"sortFunc"===K||"categorizable"===K)&&n.iv()}),c.onkeydown=function(){K.ivm()},n._sortFunc=function(l,Y){return M.sortFunc(K.getPropertyName(l),K.getPropertyName(Y))},new G(n),n.iv()},f(V+"PropertyPane",c,{ms_v:1,ms_fire:1,ms_ac:["headerLabelColor","headerLabelFont","headerLabelAlign","headerLabels","caseSensitive","indent","toolbarHeight","headerHeight","selectBackground","categoryIcon","sortIcon","sortFunc"],_caseSensitive:!1,_headerLabels:["Property","Value"],_headerLabelColor:M.propertyPaneHeaderLabelColor,_headerLabelFont:M.propertyPaneHeaderLabelFont,_headerLabelAlign:"center",_indent:M.widgetIndent,_toolbarHeight:M.widgetTitleHeight,_headerHeight:M.widgetHeaderHeight,_selectBackground:M.propertyPaneSelectBackground,_categoryIcon:"proerptypane_category",_sortIcon:"proerptypane_sort",getPropertyView:function(){return this._propertyView},onPropertyChanged:function(){this.iv()},addProperties:function(y){this._propertyView.addProperties(y)},drawHeaderLabel:function(I,_,Z,U,N,e){var G=this;I.save(),I.beginPath(),I.rect(Z,U,N,e),I.clip(),M.drawText(I,_,G._headerLabelFont,G._headerLabelColor,Z,U,N,e,G._headerLabelAlign),I.restore()},validateImpl:function(){var z=this,q=this._propertyView,b=z._indent,U=z._canvas,I=z.getWidth(),e=z.getHeight(),d=z._toolbarHeight,N=z._headerHeight,p=d+N,x=z._selectBackground,P=z._input,t=z._headerLabels;s.setCanvas(U,I,p);var Z=s.initContext(U);s.translateAndScale(Z,0,0,1),Z.clearRect(0,0,I,p),d>0?(q.isCategorizable()&&X(Z,0,0,b,d,x),o(Z,L(z._categoryIcon),b/2,d/2),q.getSortFunc()&&X(Z,b,0,b,d,x),o(Z,L(z._sortIcon),b+b/2,d/2),y(P,2*b+1,1,I-2*b-2,d-2),P.style.visibility="visible"):P.style.visibility="hidden",b=q.getIndent();var V=b+q.getColumnPosition()*(I-b);N>0&&(z.drawHeaderLabel(Z,t[0],0,d,V,N),z.drawHeaderLabel(Z,t[1],V+1,d,I-V-1,N),s.drawVerticalLine(Z,q.getColumnLineColor(),V,d,N),X(Z,0,p-1,I,1,q.getRowLineColor())),y(q,0,p,I,e-p),Z.restore()}});var G=function(h){var C=this;C.pp=h,C.pv=h.getPropertyView(),C.addListeners()};f(G,c,{ms_listener:1,getView:function(){return this.pp._view},setCursor:function(G){this.getView().style.cursor=G},handle_mousedown:function(s){M.isLeftButton(s)&&this.handle_touchstart(s)},handleWindowMouseMove:function(u){this.handleWindowTouchMove(u)},handleWindowMouseUp:function(H){this.handleWindowTouchEnd(H)},lp:function(L){return M.getLogicalPoint(L,this.getView())},handle_mousemove:function(x){if(!s.getDragger()){var P=this,V=P.pp,q=P.pv,j=V.getIndent(),X=V.getToolbarHeight(),I=V.getHeaderHeight(),O=P.lp(x),M=O.x,w=O.y;if(P.setCursor("default"),X>w)2*j>M&&P.setCursor("pointer");else if(X+I>w){j=q.getIndent();var L=j+q.getColumnPosition()*(V.getWidth()-j);M>L-10&&L+10>M&&P.setCursor("ew-resize")}}},handle_touchstart:function(E){var d=this,h=d.pp;if(E.target!==h._input){M.preventDefault(E);var d=this,N=d.pv,t=h.getIndent(),e=h.getToolbarHeight(),H=h.getHeaderHeight(),f=d.lp(E),I=f.x,q=f.y;if(d.setCursor("default"),e>q)t>I?N.setCategorizable(!N.isCategorizable()):2*t>I&&N.setSortFunc(N.getSortFunc()?null:h.getSortFunc());else if(e+H>q){t=N.getIndent();var l=t+N.getColumnPosition()*(h.getWidth()-t);I>l-10&&l+10>I&&M.startDragging(d,E)}}},handleWindowTouchMove:function(a){var g=this,O=g.pp,W=g.pv,v=g.lp(a).x,D=W.getIndent(),$=O.getWidth(),G=$-D;if(G>16){var m=(v-D)/G,o=16/G;o>m&&(m=o),m>1-o&&(m=1-o),W.setColumnPosition(m)}},handleWindowTouchEnd:function(){}})}("undefined"!=typeof global?global:"undefined"!=typeof self?self:"undefined"!=typeof window?window:(0,eval)("this"),Object);
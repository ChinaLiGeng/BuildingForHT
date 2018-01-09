!function(R){"use strict";var k="ht",$=R[k],T=$.Default,p=Math,Q=p.PI,e=2*Q,O=p.sin,x=p.cos,c=p.atan2,n=p.sqrt,E=p.max,_=p.floor,J=(p.round,p.ceil),U=p.abs,I=$.Shape,g=$.Edge,A=$.List,L=$.Style,w=$.graph,z=T.getInternal(),l=z.ui(),M=null,o="__segmentLengths",K="__lineTotalLength",h="__linePoints",B="__distance0",D="flow.count",m="flow.step",d="flow.element.max",u="flow.element.count",X="flow.element.min",P="flow.element.space",f="flow.element.autorotate",Y="flow.element.background",i="flow.element.shadow.max",q="flow.element.shadow.min",r="flow.element.shadow.begincolor",v="flow.element.shadow.endcolor",S="flow.element.shadow.visible",j="flow.element.image",F="flow",t="prototype",G=w.GraphView[t],H=$.Data[t],C=l.DataUI[t],s=l.ShapeUI[t],Z=l.EdgeUI[t],V=$.DataModel[t],W=s._80o,a=Z._80o,y=V.prepareRemove,N=Z._79o,b=s._79o,zp=G.setDataModel,tl=function(K){return document.createElement(K)};G.calculatePointLength=function(y,O,x){var r=this,U=r.getDataUI(y);x==M&&(x=.1);var L=kd(U),D=[];if(L){for(var Q=L.length,q=0;Q>q;q++){var i=L[q];i._as&&(i=i._as);for(var w=i[0],f=1;f<i.length;f++)D.push([w,i[f]]),w=i[f]}for(var d=[],q=0;q<D.length;q++){var R=gm(D[q][0],D[q][1],O);d.push(R)}var k=d.slice(0);k.sort(function(E,p){return E.z>p.z?1:E.z<p.z?-1:0});var S=k[0];if(S.z<x){for(var b=d.indexOf(S),K=0,q=0;b>=q;q++)K+=b>q?T.getDistance(D[q][0],D[q][1]):T.getDistance(D[q][0],S);return K}}},T.calculatePointLength=function(p,K,G,U){U==M&&(U=.1);var _=kd(M,p,K),K=[];if(_){for(var o=_.length,W=0;o>W;W++){var $=_[W];$._as&&($=$._as);for(var X=$[0],b=1;b<$.length;b++)K.push([X,$[b]]),X=$[b]}for(var N=[],W=0;W<K.length;W++){var A=gm(K[W][0],K[W][1],G);N.push(A)}var B=N.slice(0);B.sort(function(B,J){return B.z>J.z?1:B.z<J.z?-1:0});var v=B[0];if(v.z<U){for(var h=N.indexOf(v),q=0,W=0;h>=W;W++)q+=h>W?T.getDistance(K[W][0],K[W][1]):T.getDistance(K[W][0],v);return q}}},G.calculateClosestPoint=function(i,f){var u=this,h=u.getDataUI(i),_=kd(h),S=[];if(_){for(var Q=_.length,B=0;Q>B;B++){var G=_[B];G._as&&(G=G._as);for(var l=G[0],x=1;x<G.length;x++)S.push([l,G[x]]),l=G[x]}for(var g=[],B=0;B<S.length;B++){var T=gm(S[B][0],S[B][1],f);g.push(T)}return g.sort(function(S,c){return S.z>c.z?1:S.z<c.z?-1:0}),g[0]}},T.calculateClosestPoint=function(T,m,W){var w=kd(M,T,m),m=[];if(w){for(var s=w.length,$=0;s>$;$++){var k=w[$];k._as&&(k=k._as);for(var A=k[0],U=1;U<k.length;U++)m.push([A,k[U]]),A=k[U]}for(var S=[],$=0;$<m.length;$++){var J=gm(m[$][0],m[$][1],W);S.push(J)}return S.sort(function(v,z){return v.z>z.z?1:v.z<z.z?-1:0}),S[0]}},G.getPercentAngle=function(A,w){var K=this,W=K.getDataUI(A),C=A.getRotation?A.getRotation():0,D=kd(W);if(D)if(0===w){var v=D[0][0],g=D[0][1];C+=c(g.y-v.y,g.x-v.x)}else if(100===w){D=D[D.length-1];var v=D[D.length-2],g=D[D.length-1];C+=c(g.y-v.y,g.x-v.x)}else{for(var z=0,h=[],B=D.length,s=0;B>s;s++){var Y=D[s],R=qb(Y);z+=R,h.push(R)}for(var X=z*w/100,t=Uf(X,h),E=0,O=0;t>O;O++)E+=h[O];X-=E;for(var j=Kh(D[t],X),q=D[t],L=0,V=0,M=0;M<q.length-1;M++){var k=q[M],o=q[M+1],N=o.x-k.x,u=o.y-k.y,J=n(N*N+u*u);if(L+=J,L>X){V=M;break}}var F=q[V];C+=c(j.y-F.y,j.x-F.x)}return C},T.getPercentAngle=function(y,D,L){var N=0,o=kd(M,y,D);if(o)if(0===L){var S=o[0][0],t=o[0][1];N+=c(t.y-S.y,t.x-S.x)}else if(100===L){o=o[o.length-1];var S=o[o.length-2],t=o[o.length-1];N+=c(t.y-S.y,t.x-S.x)}else{for(var K=0,Z=[],f=o.length,w=0;f>w;w++){var J=o[w],b=qb(J);K+=b,Z.push(b)}for(var G=K*L/100,C=Uf(G,Z),W=0,x=0;C>x;x++)W+=Z[x];G-=W;for(var l=Kh(o[C],G),A=o[C],F=0,R=0,U=0;U<A.length-1;U++){var V=A[U],z=A[U+1],e=z.x-V.x,m=z.y-V.y,O=n(e*e+m*m);if(F+=O,F>G){R=U;break}}var X=A[R];N+=c(l.y-X.y,l.x-X.x)}return N},G.calculateLength=function(j){var Y=this,I=Y.getDataUI(j),r=kd(I),S=0;if(r)if(Array.isArray(r[0]))for(var w=r.length,v=0;w>v;v++){var G=r[v],c=qb(G);S+=c}else S=qb(r);return S},T.calculateLength=function(w,N){var w=kd(M,w,N),I=0;if(w)if(Array.isArray(w[0]))for(var U=w.length,F=0;U>F;F++){var A=w[F],T=qb(A);I+=T}else I=qb(w);return I};var gm=T.calculateClosestPointOnLine=function(v,E,K){var u=v.x,q=v.y,r=E.x,Y=E.y,B=K.x,H=K.y,W={},L=r-u,I=Y-q,b=Math.sqrt(L*L+I*I),P=L/b,G=I/b,m=(-u+B)*P+(-q+H)*G;return W.x=u+m*P,W.y=q+m*G,od(W,v,E)||(W.x=Math.abs(W.x-v.x)<Math.abs(W.x-E.x)?v.x:E.x,W.y=Math.abs(W.y-v.y)<Math.abs(W.y-E.y)?v.y:E.y),L=B-W.x,I=H-W.y,W.z=Math.sqrt(L*L+I*I),W},od=function(k,X,S){return k.x>=Math.min(X.x,S.x)&&k.x<=Math.max(X.x,S.x)&&k.y>=Math.min(X.y,S.y)&&k.y<=Math.max(X.y,S.y)},qb=function(g){for(var x=0,U=g.length-1,G=0;U>G;G++){var e=g[G],k=g[G+1],V=k.x-e.x,o=k.y-e.y,B=n(V*V+o*o);x+=B}return x},Kh=function(Q,q){for(var F=0,A=0,G=0,W=Q.length-1,$=0;W>$;$++){var U=Q[$],b=Q[$+1],K=b.x-U.x,m=b.y-U.y;if(G=n(K*K+m*m),F+=G,F>q){F-=G,A=$;break}}var M=Q[A],e=Q[A+1],V=c(e.y-M.y,e.x-M.x),D=q-F,m=O(V)*D,K=x(V)*D;return{x:M.x+K,y:M.y+m}},Ib=function(s,n,t,Z){var h=x(Z),c=O(Z),y=h*n-c*t,N=c*n+h*t;return s?{x:s.x+y,y:s.y+N}:{x:y,y:N}},oe=function(t,n){t[o]=t[K]=t[h]=n[B]=M},wp=function(p,A,Y,b,t,C){var Z,_,z,W,r,K,o,E,v,s,j,q=[];if(U(b)>e&&(b=e),r=J(U(b)/(Q/4)),Z=b/r,_=-Z,z=-Y,r>0){K=p+x(Y)*t,o=A+O(-Y)*C,q.push({x:K,y:o});for(var F=0;r>F;F++)z+=_,W=z-_/2,E=p+x(z)*t,v=A+O(z)*C,s=p+x(W)*(t/x(_/2)),j=A+O(W)*(C/x(_/2)),q.push({x:s,y:j}),q.push({x:E,y:v})}return q},kd=function(G,t,p){if(t==M){var C=G._data;if(C instanceof I){if(t=C.getPoints(),p=C.getSegments(),(!p||0===p.size())&&t){p=new $.List([1]);for(var N=1;N<t.size();N++)p.add(2)}}else if(C instanceof g){var R=G._78o;if(R){var x=R.type,Q=R.points,o=R.segments,j=R._4O;if(!x||Q){var l=R.sourcePoint,s=l.x,Z=l.y,S=R.targetPoint,Y=S.x,X=S.y;if(x)o?(t=new A({x:s,y:Z}),t.addAll(Q),t.add({x:Y,y:X}),p=new A(o._as)):(t=new A({x:s,y:Z}),p=new A([1]),Q.each(function(n){t.add(n),p.add(2)}),t.add({x:Y,y:X}),p.add(2));else if(R.looped){t=new A(wp(s,Z,0,e,R.radius,R.radius)),p=new A([1]);for(var N=0;N<(t.size()-1)/2;N++)p.add(3)}else t=new A,R.center?(t.add({x:R.c1.x,y:R.c1.y}),t.add({x:s,y:Z}),t.add({x:Y,y:X}),t.add({x:R.c2.x,y:R.c2.y}),p=new A([1,2,2,2])):(t.add({x:s,y:Z}),t.add({x:Y,y:X}),p=new A([1,2]))}else if(j)if(t=new A(j.points._as),j.segments)p=new A(j.segments._as);else{p=new A([1]);for(var N=1;N<j.points.size();N++)p.add(2)}}}}if(t){if(Array.isArray(t)&&(t=new A(t)),"number"==typeof t.get(0)){for(var u=new $.List,N=0;N<t.size();N+=2)u.add({x:t.get(N),y:t.get(N+1)});t=u}if(!p){p=[];for(var N=0;N<t.size();N++)0===N?p.push(1):p.push(2)}Array.isArray(p)&&(p=new A(p));for(var K=z.toPointsArray(t._as,p._as,50),q=K.length,P=[],N=0;q>N;N++){var r=K[N];r.length>1&&P.push(r)}return P}},rs=function(D){var w=D._data,H=kd(D);if(H){w.s("flow.reverse")&&(H.reverse(),H.forEach(function(O){O.reverse()}));for(var r=0,_=[],$=H.length,I=0;$>I;I++){var B=H[I],y=qb(B);r+=y,_.push(y)}if(w[o]=_,w[K]=r,w[h]=H,w instanceof g){var N=T.unionPoint(H),P=N.x+N.width/2,x=N.y+N.height/2;w.$10e={x:P,y:x}}fj(D,!0)}},fj=(T.getPercentPositionOnPoints=function(c,k,w){if(c){var j=kd(M,c,k);if(j){var e;if(0===w)e=j[0][0];else if(100===w)j=j[j.length-1],e=j[j.length-1];else{for(var N=0,u=[],Q=j.length,W=0;Q>W;W++){var $=j[W],s=qb($);N+=s,u.push(s)}for(var h=N*w/100,z=Uf(h,u),R=0,O=0;z>O;O++)R+=u[O];h-=R,e=Kh(j[z],h)}return e}}},G.getPercentPosition=function(X,H){var V=this,q=V.getDataUI(X),N=kd(q);if(N){var L;if(0===H)L=N[0][0];else if(100===H)N=N[N.length-1],L=N[N.length-1];else{for(var r=0,G=[],w=N.length,_=0;w>_;_++){var C=N[_],F=qb(C);r+=F,G.push(F)}for(var x=r*H/100,U=Uf(x,G),A=0,M=0;U>M;M++)A+=G[M];x-=A,L=Kh(N[U],x)}return L}},function(n,p){var w=n._data,P=w[K],L=w.s(D),y=w.s(m),q=0,$=w[o],j=w.s(d),H=w.s(X),k=w.s(u),O=(j-H)/(k-1),h=[];if($){if(1===k)h.push(j);else if(2===k)h.push(j),h.push(H);else{if(!(k>2))return;h.push(j);for(var M=k-2;M>0;M--)h.push(H+O*M);h.push(H)}var t=0,I=0;h.forEach(function(K){k-1>t&&(I+=w.getFlowElementSpace(K)),t++}),I+=(j+H)/2,q=(P-L*I+I)/L;var C=n[B];for(null==C&&(C=0),p||(C+=y);C>P+I;){var i=n._overCount;i?i++:i=1,i>=L&&(i=null),n._overCount=i,w.s("flow.autoreverse")?i?C-=q+I:(C=0,w.s("flow.reverse",!w.s("flow.reverse"))):C-=q+I}n[B]=C}}),gs=function(R){var S=R.data,f=this.dm();if(S&&"add"===R.kind){var c=f.$3e;c&&S.s(F)&&c.indexOf(S)<0&&c.push(S)}"clear"===R.kind&&(f.$3e=[])},yd=function(y){var i=y.property,Q=y.data,v=y.newValue,p=this.dm().$3e;if(p&&"s:flow"===i)if(v)p.indexOf(Q)<0&&p.push(Q);else for(var K=p.length,c=0;K>c;c++)if(p[c]===Q){p.splice(c,1);break}},Uf=Uf=function(b,_){for(var W=0,O=_.length,k=0;O>k;k++){var e=_[k];if(W+=e,W>b)return k}return Math.min(k,O-1)},Ql=function(U){var L=this,H=L._data,v=H[K],A=H[o],I=H[h],m=H.s(D),G=0,R=L[B],O=H.s(d),x=H.s(X),Y=H.s(u),j=H.s(q),J=H.s(i),C=H.s(f),E=(J-j)/(Y-1),P=(O-x)/(Y-1),V=H.getRotation?H.getRotation():0,z=H.getPosition?H.p():H.$10e,Z=[],t=[];if(R!=M){if(1===Y)Z.push(O);else if(2===Y)Z.push(O),Z.push(x);else{if(!(Y>2))return;Z.push(O);for(var a=Y-2;a>0;a--)Z.push(x+P*a);Z.push(x)}if(1===Y)t.push(J);else if(2===Y)t.push(J),t.push(j);else{if(!(Y>2))return;t.push(J);for(var a=Y-2;a>0;a--)t.push(j+E*a);t.push(j)}var k=0,W=0;Z.forEach(function(L){Y-1>k&&(W+=H.getFlowElementSpace(L)),k++}),W+=(O+x)/2,G=(v-m*W+W)/m,U.save();for(var a=0;m>a;a++){var l=R,T=0,N=L._overCount,r=0;H.s("flow.autoreverse")&&N&&N>m-(a+1)||(l-=a*(G+W),k=0,Z.forEach(function(j){var K=l-T;if(K>=0&&v>K){var G=!0,u=Uf(K,A);r=0;for(var F=0;u>F;F++)r+=A[F];if(K-=r,G){var S=Kh(I[u],K),E=V;if(C){for(var e=I[u],p=0,R=0,O=0;O<e.length-1;O++){var _=e[O],J=e[O+1],X=J.x-_.x,g=J.y-_.y,x=n(X*X+g*g);if(p+=x,p>K){R=O;break}}var $=e[R];E+=c(S.y-$.y,S.x-$.x)}V&&(S=Ib(z,S.x-z.x,S.y-z.y,V)),L.$5e(U,S,j,t[k],E)}}T+=H.getFlowElementSpace(Z[k]),k++}))}U.restore()}},vc=function(){var L=this,p=L._data,f=p.s(d),U=!1,z=M;if(L._6I||(U=!0),z=p instanceof g?N.call(L):b.call(L),p.s(F)&&U){var x=p.s(i),R=p.s(S);R&&x>f&&(f=x),f>0&&T.grow(z,J(f/2)),rs(L)}return!p.s(F)&&U&&oe(p,L),z};H.getFlowElementSpace=function(){return this.s(P)},s._79o=vc,Z._79o=vc,L[d]==M&&(L[d]=7),L[X]==M&&(L[X]=0),L[D]==M&&(L[D]=1),L[m]==M&&(L[m]=3),L[u]==M&&(L[u]=10),L[P]==M&&(L[P]=3.5),L[f]==M&&(L[f]=!1),L[Y]==M&&(L[Y]="rgba(255, 255, 114, 0.4)"),L[r]==M&&(L[r]="rgba(255, 255, 0, 0.3)"),L[v]==M&&(L[v]="rgba(255, 255, 0, 0)"),L[S]==M&&(L[S]=1),L[i]==M&&(L[i]=22),L[q]==M&&(L[q]=4),V.prepareRemove=function(N){y.call(this,N);var _=N._dataModel,G=_.$3e;if(G)for(var r=G.length,L=0;r>L;L++)if(G[L]===N){G.splice(L,1);break}},G.setDataModel=function(Q){var s=this,i=s._dataModel;if(i!==Q){i&&(i.umm(gs,s),i.umd(yd,s),i.$3e=[]),Q.mm(gs,s),Q.md(yd,s);var U=Q.$3e=[];Q.each(function(B){B.s(F)&&U.indexOf(B)<0&&U.push(B)}),zp.call(s,Q)}},G.setFlowInterval=function(f){var h=this,W=h.$11e;h.$11e=f,h.fp("flowInterval",W,f),h.$7e!=M&&(clearInterval(h.$7e),delete h.$7e,h.enableFlow(f))},G.getFlowInterval=function(){return this.$11e},G.$9e=function(){var W,O,g,P=this,U=P.tx(),k=P.ty(),v=P.getZoom(),X=P.getWidth(),u=P.getHeight(),i={x:-U/v,y:-k/v,width:X/v,height:u/v},q=P.dm().$3e,r=P._56I,j=new A;if(q.forEach(function(c){r[c.getId()]&&(W=P.getDataUI(c),W&&(g=W._79o(),g&&j.add(g)))}),0!==j.size()&&(j.each(function(M){T.intersectsRect(i,M)&&(O=T.unionRect(O,M))}),O&&(O&&(T.grow(O,E(1,1/v)),O.x=_(O.x*v)/v,O.y=_(O.y*v)/v,O.width=J(O.width*v)/v,O.height=J(O.height*v)/v,O=T.intersection(i,O)),O))){var Y=P._canvas.getContext("2d");Y.save(),Y.lineCap=T.lineCap,Y.lineJoin=T.lineJoin,z.translateAndScale(Y,U,k,v),Y.beginPath(),Y.rect(O.x,O.y,O.width,O.height),Y.clip(),Y.clearRect(O.x,O.y,O.width,O.height),P.$6e(Y,O),Y.restore()}},G.$6e=function(L,R){var k,u,G=this;G._93db(L),G.each(function(w){G._56I[w._id]&&(k=G.getDataUI(w),k&&(u=k._79o(),(!R||T.intersectsRect(R,u))&&k._42(L)))}),G._92db(L)},G.enableFlow=function(v){var r=this,q=r.dm(),x=q.$3e;r.$7e==M&&(x.forEach(function(c){var S=r.getDataUI(c);rs(S)}),r.$7e=setInterval(function(){q.$3e.forEach(function(o){fj(r.getDataUI(o))}),r.$9e()},v||r.$11e||50))},G.disableFlow=function(){var g=this;clearInterval(g.$7e),delete g.$7e;var c=g.dm().$3e;c&&g.$9e()},C.$5e=function(O,U,E,_,k){var D=this,L=D._data,N=D.gv,l=L.s(Y),H=L.s(r),f=L.s(v),s=L.s(S),i=N.$8e,t=L.s(j);if(i==M&&(i=N.$8e={}),O.beginPath(),t!=M){var q=T.getImage(t),$=E/2;O.translate(U.x,U.y),O.rotate(k),O.translate(-U.x,-U.y),T.drawImage(O,q,U.x-$,U.y-$,E,E,L),O.translate(U.x,U.y),O.rotate(-k),O.translate(-U.x,-U.y)}else O.fillStyle=l,O.arc(U.x,U.y,E/2,0,e,!0),O.fill();if(s){var u=22,A=u+"_"+H+"_"+f,c=i[A];if(c==M){var Q=tl("canvas");z.setCanvas(Q,u,u);var C=Q.getContext("2d"),I=u/2,F=I,b=I;z.translateAndScale(C,0,0,1),C.beginPath();var o=C.createRadialGradient(F,b,0,F,F,I);o.addColorStop(0,H),o.addColorStop(1,f),C.fillStyle=o,C.arc(F,b,I,0,e,!0),C.fill(),c=i[A]=Q}var $=_/2;T.drawImage(O,c,U.x-$,U.y-$,_,_,L)}},Z._80o=function(Y){a.call(this,Y);var c=this,k=c._data,e=c.gv;k.s(F)&&e.$7e!=M&&Ql.call(c,Y)},s._80o=function(K){W.call(this,K);var H=this,G=H._data,b=H.gv;G.s(F)&&b.$7e!=M&&Ql.call(H,K)}}("undefined"!=typeof global?global:"undefined"!=typeof self?self:"undefined"!=typeof window?window:(0,eval)("this"),Object);
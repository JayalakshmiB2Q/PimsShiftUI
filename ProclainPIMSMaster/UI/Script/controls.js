google.maps.__gjsload__('controls', function(_) {
    var mK, nK, oK, pK, qK, rK, sK, tK, uK, wK, xK, yK, zK, AK, BK, DK, EK, FK, GK, HK, IK, JK, LK, KK, MK, NK, QK, PK, OK, RK, SK, VK, XK, WK, ZK, $K, aL, YK, bL, cL, dL, eL, hL, iL, jL, kL, gL, lL, oL, pL, mL, nL, qL, sL, rL, uL, vL, BL, wL, CL, DL, EL, FL, GL, IL, HL, JL, KL, ML, LL, QL, PL, OL, RL, SL, UL, TL, VL, WL, ZL, YL, XL, $L, aM, bM, cM, dM, eM, fM, hM, gM, iM, jM, nM, kM, lM, oM, pM, qM, rM, uM, tM, vM, sM, AM, wM, xM, yM, zM, BM, CM, DM, EM, IM, FM, GM, HM, JM, MM, NM, KM, LM, RM, OM, TM, UM, SM, VM, WM, XM, YM, ZM, iN, hN, pN, qN, nN, rN, eN, gN, bN, dN, cN, fN, jN, aN, tN, uN, vN, wN, xN, yN, $M, lN, oN, mN, kN, zN, AN, sN, BN, CN, NN, ON, PN, QN, DN, MN, RN, TN, UN, VN, WN, XN, YN;
    mK = function(a, b) {
        b instanceof _.Jw || b instanceof _.Jw || (b = "object" == typeof b && b.cc ? b.Ma() : String(b),
        _.Lw.test(b) || (b = "about:invalid#zClosurez"),
        b = new _.Jw(_.Hw,b));
        a.href = _.Kw(b)
    }
    ;
    nK = function(a, b, c, d) {
        b = a.j.listeners[String(b)];
        if (!b)
            return !0;
        b = b.concat();
        for (var e = !0, f = 0; f < b.length; ++f) {
            var g = b[f];
            if (g && !g.Sb && g.capture == c) {
                var h = g.listener
                  , k = g.kc || g.src;
                g.Xd && _.pg(a.j, g);
                e = !1 !== h.call(k, d) && e
            }
        }
        return e && 0 != d.Uh
    }
    ;
    oK = function(a, b) {
        var c = a.F;
        if (c) {
            var d = [];
            for (var e = 1; c; c = c.F)
                d.push(c),
                ++e
        }
        a = a.aa;
        c = b.type || b;
        "string" === typeof b ? b = new _.gg(b,a) : b instanceof _.gg ? b.target = b.target || a : (e = b,
        b = new _.gg(c,a),
        _.nl(b, e));
        e = !0;
        if (d)
            for (var f = d.length - 1; !b.g && 0 <= f; f--) {
                var g = b.currentTarget = d[f];
                e = nK(g, c, !0, b) && e
            }
        b.g || (g = b.currentTarget = a,
        e = nK(g, c, !0, b) && e,
        b.g || (e = nK(g, c, !1, b) && e));
        if (d)
            for (f = 0; !b.g && f < d.length; f++)
                g = b.currentTarget = d[f],
                e = nK(g, c, !1, b) && e
    }
    ;
    pK = function(a) {
        a.style.textAlign = _.Ft.g ? "right" : "left"
    }
    ;
    qK = function(a, b, c) {
        for (var d = "string" === typeof a ? a.split("") : a, e = a.length - 1; 0 <= e; --e)
            e in d && b.call(c, d[e], e, a)
    }
    ;
    rK = function(a) {
        return String(a).replace(/\-([a-z])/g, function(b, c) {
            return c.toUpperCase()
        })
    }
    ;
    sK = function(a) {
        return a.replace(/(^|[\s]+)([a-z])/g, function(b, c, d) {
            return c + d.toUpperCase()
        })
    }
    ;
    tK = function(a) {
        this.g = a || _.y.document || document
    }
    ;
    uK = function(a) {
        a.style.visibility = ""
    }
    ;
    _.vK = function(a, b) {
        1 == _.zi.type ? a.style.styleFloat = b : a.style.cssFloat = b
    }
    ;
    wK = function(a, b) {
        a.style.WebkitBorderRadius = b;
        a.style.borderRadius = b;
        a.style.MozBorderRadius = b
    }
    ;
    xK = function(a, b) {
        a.style.WebkitBorderTopLeftRadius = b;
        a.style.WebkitBorderTopRightRadius = b;
        a.style.borderTopLeftRadius = b;
        a.style.borderTopRightRadius = b;
        a.style.MozBorderTopLeftRadius = b;
        a.style.MozBorderTopRightRadius = b
    }
    ;
    yK = function(a, b) {
        a.style.WebkitBorderBottomLeftRadius = b;
        a.style.WebkitBorderBottomRightRadius = b;
        a.style.borderBottomLeftRadius = b;
        a.style.borderBottomRightRadius = b;
        a.style.MozBorderBottomLeftRadius = b;
        a.style.MozBorderBottomRightRadius = b
    }
    ;
    zK = function(a) {
        var b = _.Q(2);
        a.style.WebkitBorderBottomLeftRadius = b;
        a.style.WebkitBorderTopLeftRadius = b;
        a.style.borderBottomLeftRadius = b;
        a.style.borderTopLeftRadius = b;
        a.style.MozBorderBottomLeftRadius = b;
        a.style.MozBorderTopLeftRadius = b
    }
    ;
    AK = function(a) {
        var b = _.Q(2);
        a.style.WebkitBorderBottomRightRadius = b;
        a.style.WebkitBorderTopRightRadius = b;
        a.style.borderBottomRightRadius = b;
        a.style.borderTopRightRadius = b;
        a.style.MozBorderBottomRightRadius = b;
        a.style.MozBorderTopRightRadius = b
    }
    ;
    BK = function(a, b) {
        b = b || {};
        var c = a.style;
        c.color = "black";
        c.fontFamily = "Roboto,Arial,sans-serif";
        _.Vn(a);
        _.Un(a);
        b.title && a.setAttribute("title", b.title);
        c = _.Ln() ? 1.38 : 1;
        a = a.style;
        a.fontSize = _.Q(b.fontSize || 11);
        a.backgroundColor = "#fff";
        for (var d = [], e = 0, f = _.gd(b.padding); e < f; ++e)
            d.push(_.Q(c * b.padding[e]));
        a.padding = d.join(" ");
        b.width && (a.width = _.Q(c * b.width))
    }
    ;
    DK = function(a, b) {
        var c = CK[b];
        if (!c) {
            var d = rK(b);
            c = d;
            void 0 === a.style[d] && (d = (_.ig ? "Webkit" : _.hg ? "Moz" : _.jj ? "ms" : _.ij ? "O" : null) + sK(d),
            void 0 !== a.style[d] && (c = d));
            CK[b] = c
        }
        return c
    }
    ;
    EK = function(a, b, c) {
        if ("string" === typeof b)
            (b = DK(a, b)) && (a.style[b] = c);
        else
            for (var d in b) {
                c = a;
                var e = b[d]
                  , f = DK(c, d);
                f && (c.style[f] = e)
            }
    }
    ;
    FK = function(a, b, c) {
        if (b instanceof _.rm) {
            var d = b.x;
            b = b.y
        } else
            d = b,
            b = c;
        a.style.left = _.Ey(d, !1);
        a.style.top = _.Ey(b, !1)
    }
    ;
    GK = _.oa("g");
    HK = function(a) {
        return 40 < a ? a / 2 - 2 : 28 > a ? a - 10 : 18
    }
    ;
    IK = function(a, b) {
        a.g = a.g || [];
        var c = a.g[b] = a.g[b] || {}
          , d = _.IJ(a, b);
        if (!c.nb) {
            a.i = a.i || new _.I(0,0);
            var e = a.g[0] && a.g[0].nb || new _.I(0,0);
            c.nb = new _.I(e.x + a.i.x * b,e.y + a.i.y * b)
        }
        return {
            url: d,
            size: c.Ta || a.Ta,
            scaledSize: a.h.size,
            origin: c.nb,
            anchor: c.anchor || a.anchor
        }
    }
    ;
    JK = function(a) {
        _.fg.call(this);
        this.h = a;
        this.g = {}
    }
    ;
    LK = function(a, b, c) {
        KK(a, b, "finish", c, void 0)
    }
    ;
    KK = function(a, b, c, d, e, f) {
        if (_.Pa(c))
            for (var g = 0; g < c.length; g++)
                KK(a, b, c[g], d, e, f);
        else
            (b = _.rg(b, c, d || a.handleEvent, e, f || a.h || a)) && (a.g[b.key] = b)
    }
    ;
    MK = function(a) {
        _.kl(a.g, function(b, c) {
            this.g.hasOwnProperty(c) && _.Fg(b)
        }, a);
        a.g = {}
    }
    ;
    NK = function(a, b, c, d, e, f, g) {
        this.label = a || "";
        this.alt = b || "";
        this.j = f || null;
        this.Eb = c;
        this.g = d;
        this.i = e;
        this.h = g || null
    }
    ;
    QK = function(a, b) {
        var c = this;
        this.o = a;
        b = b || ["roadmap", "satellite", "hybrid", "terrain"];
        var d = _.hl(b, "terrain") && _.hl(b, "roadmap")
          , e = _.hl(b, "hybrid") && _.hl(b, "satellite");
        this.i = {};
        this.j = [];
        this.h = this.l = this.g = null;
        _.N.addListener(this, "maptypeid_changed", function() {
            var k = c.get("mapTypeId");
            c.h && c.h.set("display", "satellite" == k);
            c.g && c.g.set("display", "roadmap" == k)
        });
        _.N.addListener(this, "zoom_changed", function() {
            if (c.g) {
                var k = c.get("zoom");
                c.g.set("enabled", k <= c.l)
            }
        });
        b = _.Ca(b);
        for (var f = b.next(); !f.done; f = b.next())
            if (f = f.value,
            "hybrid" != f || !e)
                if ("terrain" != f || !d) {
                    var g = a.get(f);
                    if (g) {
                        var h = null;
                        "roadmap" == f ? d && (this.g = OK(this, "terrain", "roadmap", "terrain", void 0, "Zoom out to show street map with terrain"),
                        h = [[this.g]],
                        this.l = a.get("terrain").maxZoom) : "satellite" != f && "hybrid" != f || !e || (this.h = PK(this),
                        h = [[this.h]]);
                        this.j.push(new NK(g.name,g.alt,"mapTypeId",f,null,null,h))
                    }
                }
    }
    ;
    PK = function(a) {
        a = OK(a, "hybrid", "satellite", "labels", "Labels");
        a.set("enabled", !0);
        return a
    }
    ;
    OK = function(a, b, c, d, e, f) {
        var g = a.o.get(b);
        e = new NK(e || g.name,g.alt,d,!0,!1,f);
        a.i[b] = {
            mapTypeId: c,
            Md: d,
            value: !0
        };
        a.i[c] = {
            mapTypeId: c,
            Md: d,
            value: !1
        };
        return e
    }
    ;
    RK = _.oa("h");
    SK = function(a, b, c) {
        if (!a || !b || "number" !== typeof c)
            return null;
        c = Math.pow(2, -c);
        var d = a.fromLatLngToPoint(b);
        return _.$w(a.fromPointToLatLng(new _.I(d.x + c,d.y)), b)
    }
    ;
    VK = function(a) {
        a = _.Va(a);
        delete TK[a];
        _.lb(TK) && UK && UK.stop()
    }
    ;
    XK = function() {
        UK || (UK = new _.bh(function() {
            WK()
        }
        ,20));
        var a = UK;
        0 != a.jc || a.start()
    }
    ;
    WK = function() {
        var a = _.Ya();
        _.kl(TK, function(b) {
            YK(b, a)
        });
        _.lb(TK) || XK()
    }
    ;
    ZK = function() {
        _.Kg.call(this);
        this.i = 0;
        this.endTime = this.h = null
    }
    ;
    $K = function(a, b, c, d) {
        ZK.call(this);
        if (!_.Pa(a) || !_.Pa(b))
            throw Error("Start and end parameters must be arrays");
        if (a.length != b.length)
            throw Error("Start and end points must be the same length");
        this.l = a;
        this.R = b;
        this.duration = c;
        this.H = d;
        this.coords = [];
        this.progress = 0;
        this.J = null
    }
    ;
    aL = function(a) {
        if (0 == a.i)
            a.progress = 0,
            a.coords = a.l;
        else if (1 == a.i)
            return;
        VK(a);
        var b = _.Ya();
        a.h = b;
        -1 == a.i && (a.h -= a.duration * a.progress);
        a.endTime = a.h + a.duration;
        a.J = a.h;
        a.progress || a.g("begin");
        a.g("play");
        -1 == a.i && a.g("resume");
        a.i = 1;
        var c = _.Va(a);
        c in TK || (TK[c] = a);
        XK();
        YK(a, b)
    }
    ;
    YK = function(a, b) {
        b < a.h && (a.endTime = b + a.endTime - a.h,
        a.h = b);
        a.progress = (b - a.h) / (a.endTime - a.h);
        1 < a.progress && (a.progress = 1);
        a.J = b;
        bL(a, a.progress);
        1 == a.progress ? (a.i = 0,
        VK(a),
        a.g("finish"),
        a.g("end")) : 1 == a.i && a.g("animate")
    }
    ;
    bL = function(a, b) {
        _.Ra(a.H) && (b = a.H(b));
        a.coords = Array(a.l.length);
        for (var c = 0; c < a.l.length; c++)
            a.coords[c] = (a.R[c] - a.l[c]) * b + a.l[c]
    }
    ;
    cL = function(a, b) {
        _.gg.call(this, a);
        this.coords = b.coords;
        this.x = b.coords[0];
        this.y = b.coords[1];
        this.z = b.coords[2];
        this.duration = b.duration;
        this.progress = b.progress;
        this.state = b.i
    }
    ;
    dL = function(a) {
        return 3 * a * a - 2 * a * a * a
    }
    ;
    eL = _.p(".gm-control-active>img{box-sizing:content-box;display:none;left:50%;pointer-events:none;position:absolute;top:50%;transform:translate(-50%,-50%)}.gm-control-active>img:nth-child(1){display:block}.gm-control-active:hover>img:nth-child(1),.gm-control-active:active>img:nth-child(1){display:none}.gm-control-active:hover>img:nth-child(2),.gm-control-active:active>img:nth-child(3){display:block}\n");
    hL = function(a) {
        _.sD.call(this, a, fL);
        _.rC(a, fL) || _.qC(a, fL, {
            options: 0
        }, ["div", , 1, 0, [" ", ["img", 8, 1, 1], " ", ["button", , 1, 2, [" ", ["img", 8, 1, 3], " ", ["img", 8, 1, 4], " ", ["img", 8, 1, 5], " "]], " ", ["button", , , 12, [" ", ["img", 8, 1, 6], " ", ["img", 8, 1, 7], " ", ["img", 8, 1, 8], " "]], " ", ["button", , , 13, [" ", ["img", 8, 1, 9], " ", ["img", 8, 1, 10], " ", ["img", 8, 1, 11], " "]], " <div> ", ["div", , , 14, " Rotate the view "], " ", ["div", , , 15], " ", ["div", , , 16], " </div> "]], [], gL())
    }
    ;
    iL = function(a) {
        return _.W(a.options, "", -7, -3)
    }
    ;
    jL = function(a) {
        return _.W(a.options, "", -8, -3)
    }
    ;
    kL = function(a) {
        return _.W(a.options, "", -9, -3)
    }
    ;
    gL = function() {
        return [["$t", "t-avKK8hDgg9Q", "$a", [7, , , , , "gm-compass"]], ["$a", [8, , , , function(a) {
            return _.W(a.options, "", -3, -3)
        }
        , "src", , , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "48", "width", , 1]], ["$a", [7, , , , , "gm-control-active", , 1], "$a", [7, , , , , "gm-compass-needle", , 1], "$a", [5, 5, , , function(a) {
            return a.qa ? _.Vz("-webkit-transform", "rotate(" + String(_.W(a.options, 0, -1)) + "deg)") : "rotate(" + String(_.W(a.options, 0, -1)) + "deg)"
        }
        , "-webkit-transform", , , 1], "$a", [5, 5, , , function(a) {
            return a.qa ? _.Vz("-ms-transform", "rotate(" + String(_.W(a.options, 0, -1)) + "deg)") : "rotate(" + String(_.W(a.options, 0, -1)) + "deg)"
        }
        , "-ms-transform", , , 1], "$a", [5, 5, , , function(a) {
            return a.qa ? _.Vz("-moz-transform", "rotate(" + String(_.W(a.options, 0, -1)) + "deg)") : "rotate(" + String(_.W(a.options, 0, -1)) + "deg)"
        }
        , "-moz-transform", , , 1], "$a", [5, 5, , , function(a) {
            return a.qa ? _.Vz("transform", "rotate(" + String(_.W(a.options, 0, -1)) + "deg)") : "rotate(" + String(_.W(a.options, 0, -1)) + "deg)"
        }
        , "transform", , , 1], "$a", [0, , , , "button", "type", , 1], "$a", [22, , , , "compass.north", "jsaction", , 1]], ["$a", [8, , , , function(a) {
            return _.W(a.options, "", -4, -3)
        }
        , "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "20", "width", , 1]], ["$a", [8, , , , function(a) {
            return _.W(a.options, "", -5, -3)
        }
        , "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "20", "width", , 1]], ["$a", [8, , , , function(a) {
            return _.W(a.options, "", -6, -3)
        }
        , "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "20", "width", , 1]], ["$a", [8, , , , iL, "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "14", "width", , 1]], ["$a", [8, , , , jL, "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "14", "width", , 1]], ["$a", [8, , , , kL, "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "14", "width", , 1]], ["$a", [8, , , , iL, "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "14", "width", , 1]], ["$a", [8, , , , jL, "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "14", "width", , 1]], ["$a", [8, , , , kL, "src", , , 1], "$a", [0, , , , "false", "draggable", , 1], "$a", [0, , , , "48", "height", , 1], "$a", [0, , , , "14", "width", , 1]], ["$a", [7, , , , , "gm-control-active", , 1], "$a", [7, , , , , "gm-compass-turn", , 1], "$a", [0, , , , "button", "type", , 1], "$a", [22, , , , "compass.counterclockwise", "jsaction", , 1]], ["$a", [7, , , , , "gm-control-active", , 1], "$a", [7, , , , , "gm-compass-turn", , 1], "$a", [7, , , , , "gm-compass-turn-opposite", , 1], "$a", [0, , , , "button", "type", , 1], "$a", [22, , , , "compass.clockwise", "jsaction", , 1]], ["$a", [7, , , , , "gm-compass-tooltip-text", , 1]], ["$a", [7, , , , , "gm-compass-arrow-right", , 1], "$a", [7, , , , , "gm-compass-arrow-right-outer", , 1]], ["$a", [7, , , , , "gm-compass-arrow-right", , 1], "$a", [7, , , , , "gm-compass-arrow-right-inner", , 1]]]
    }
    ;
    lL = function(a) {
        _.E(this, a, 9)
    }
    ;
    oL = function(a, b, c) {
        var d = this;
        this.h = a;
        b /= 40;
        a.da.style.transform = "scale(" + b + ")";
        a.da.style.transformOrigin = "left";
        a.da.setAttribute("controlWidth", Math.round(48 * b));
        a.da.setAttribute("controlHeight", Math.round(48 * b));
        a.addListener("compass.clockwise", "click", function() {
            return mL(d, !0)
        });
        a.addListener("compass.counterclockwise", "click", function() {
            return mL(d, !1)
        });
        a.addListener("compass.north", "click", function() {
            var e = d.get("pov");
            if (e) {
                var f = _.zx(e.heading);
                nL(d, f, 180 > f ? 0 : 360, e.pitch, 0)
            }
        });
        this.g = null;
        this.i = !1;
        _.em(eL, c)
    }
    ;
    pL = function(a) {
        var b = a.get("mapSize")
          , c = a.get("panControl")
          , d = !!a.get("disableDefaultUI");
        _.oy(a.h.da, !!(c || void 0 === c && !d && b && 200 <= b.width && 200 <= b.height));
        _.N.trigger(a.h.da, "resize")
    }
    ;
    mL = function(a, b) {
        var c = a.get("pov");
        if (c) {
            var d = _.zx(c.heading);
            nL(a, d, b ? 90 * Math.floor((d + 100) / 90) : 90 * Math.ceil((d - 100) / 90), c.pitch, c.pitch)
        }
    }
    ;
    nL = function(a, b, c, d, e) {
        var f = new JK;
        a.g && a.g.stop();
        b = a.g = new $K([b, d],[c, e],1200,dL);
        f.listen(b, "animate", function(g) {
            return qL(a, !1, g)
        });
        LK(f, b, function(g) {
            return qL(a, !0, g)
        });
        aL(b)
    }
    ;
    qL = function(a, b, c) {
        a.i = !0;
        var d = a.get("pov");
        d && (a.set("pov", {
            heading: c.coords[0],
            pitch: c.coords[1],
            zoom: d.zoom
        }),
        a.i = !1,
        b && (a.g = null))
    }
    ;
    sL = function(a) {
        var b = void 0 === b ? document : b;
        return rL(a, b)
    }
    ;
    rL = function(a, b) {
        return (b = b && (b.fullscreenElement || b.webkitFullscreenElement || b.mozFullScreenElement || b.msFullscreenElement)) ? b === a ? !0 : rL(a, b.shadowRoot) : !1
    }
    ;
    uL = function() {
        return tL.some(function(a) {
            return !!document[a]
        })
    }
    ;
    vL = function(a, b, c, d) {
        a.innerText = "";
        b = _.Ca(b ? 1 == c ? ['<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#666" d="M4,4H0v2h6V0H4V4z M14,4V0h-2v6h6V4H14z M12,18h2v-4h4v-2h-6V18z M0,14h4v4h2v-6H0V14z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#B1B1B1" d="M4,4H0v2h6V0H4V4z M14,4V0h-2v6h6V4H14z M12,18h2v-4h4v-2h-6V18z M0,14h4v4h2v-6H0V14z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#E4E4E4" d="M4,4H0v2h6V0H4V4z M14,4V0h-2v6h6V4H14z M12,18h2v-4h4v-2h-6V18z M0,14h4v4h2v-6H0V14z"/>\n</svg>\n'] : ['<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#666" d="M4,4H0v2h6V0H4V4z M14,4V0h-2v6h6V4H14z M12,18h2v-4h4v-2h-6V18z M0,14h4v4h2v-6H0V14z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#333" d="M4,4H0v2h6V0H4V4z M14,4V0h-2v6h6V4H14z M12,18h2v-4h4v-2h-6V18z M0,14h4v4h2v-6H0V14z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#111" d="M4,4H0v2h6V0H4V4z M14,4V0h-2v6h6V4H14z M12,18h2v-4h4v-2h-6V18z M0,14h4v4h2v-6H0V14z"/>\n</svg>\n'] : 1 == c ? ['<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 018 18">\n  <path fill="#666" d="M0,0v2v4h2V2h4V0H2H0z M16,0h-4v2h4v4h2V2V0H16z M16,16h-4v2h4h2v-2v-4h-2V16z M2,12H0v4v2h2h4v-2H2V12z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#B1B1B1" d="M0,0v2v4h2V2h4V0H2H0z M16,0h-4v2h4v4h2V2V0H16z M16,16h-4v2h4h2v-2v-4h-2V16z M2,12H0v4v2h2h4v-2H2V12z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#E4E4E4" d="M0,0v2v4h2V2h4V0H2H0z M16,0h-4v2h4v4h2V2V0H16z M16,16h-4v2h4h2v-2v-4h-2V16z M2,12H0v4v2h2h4v-2H2V12z"/>\n</svg>\n'] : ['<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 018 18">\n  <path fill="#666" d="M0,0v2v4h2V2h4V0H2H0z M16,0h-4v2h4v4h2V2V0H16z M16,16h-4v2h4h2v-2v-4h-2V16z M2,12H0v4v2h2h4v-2H2V12z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#333" d="M0,0v2v4h2V2h4V0H2H0z M16,0h-4v2h4v4h2V2V0H16z M16,16h-4v2h4h2v-2v-4h-2V16z M2,12H0v4v2h2h4v-2H2V12z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#111" d="M0,0v2v4h2V2h4V0H2H0z M16,0h-4v2h4v4h2V2V0H16z M16,16h-4v2h4h2v-2v-4h-2V16z M2,12H0v4v2h2h4v-2H2V12z"/>\n</svg>\n']);
        for (c = b.next(); !c.done; c = b.next()) {
            c = c.value;
            var e = document.createElement("img");
            e.style.width = e.style.height = _.Q(HK(d));
            e.src = _.wD(c);
            a.appendChild(e)
        }
    }
    ;
    BL = function(a, b, c, d) {
        var e = this;
        this.j = a;
        this.C = d;
        this.h = b;
        b.style.cursor = "pointer";
        this.F = c;
        this.g = sL(this.j);
        this.F.set(this.g);
        this.i = uL();
        this.o = [];
        this.H = function() {
            _.N.trigger(e.j, "resize");
            e.g = sL(e.j);
            e.g || wL(e);
            e.F.set(e.g);
            var f = e.get("controlStyle") || 0;
            e.i && vL(e.h, e.g, f, e.C)
        }
        ;
        this.l = function() {
            var f = e.get("display")
              , g = !!e.get("disableDefaultUI");
            _.ky(e.h, (void 0 === f && !g || !!f) && e.i);
            _.N.trigger(e.h, "resize")
        }
        ;
        this.i && (_.em(eL, a),
        b.setAttribute("class", "gm-control-active gm-fullscreen-control"),
        wK(b, _.Q(_.FJ(d))),
        b.style.width = b.style.height = _.Q(d),
        _.Dy(b, "0 1px 4px -1px rgba(0,0,0,0.3)"),
        a = this.get("controlStyle") || 0,
        vL(b, this.g, a, d),
        b.style.overflow = "hidden",
        _.N.addDomListener(b, "click", function() {
            if (e.g)
                for (var f = _.Ca(xL), g = f.next(); !g.done; g = f.next()) {
                    if (g = g.value,
                    g in document) {
                        document[g]();
                        break
                    }
                }
            else {
                f = _.Ca(yL);
                for (g = f.next(); !g.done; g = f.next())
                    e.o.push(_.N.addDomListener(document, g.value, e.H));
                f = e.j;
                g = _.Ca(zL);
                for (var h = g.next(); !h.done; h = g.next())
                    if (h = h.value,
                    h in f) {
                        f[h]();
                        break
                    }
            }
        }));
        _.N.addListener(this, "disabledefaultui_changed", this.l);
        _.N.addListener(this, "display_changed", this.l);
        _.N.addListener(this, "maptypeid_changed", function() {
            var f = "streetview" == e.get("mapTypeId") ? 1 : 0;
            e.set("controlStyle", f);
            e.h.style.margin = _.Q(e.C >> 2);
            e.l()
        });
        _.N.addListener(this, "controlstyle_changed", function() {
            var f = e.get("controlStyle");
            null != f && (e.h.style.backgroundColor = AL[f].backgroundColor,
            e.i && vL(e.h, e.g, f, e.C))
        });
        this.l()
    }
    ;
    wL = function(a) {
        for (var b = _.Ca(a.o), c = b.next(); !c.done; c = b.next())
            _.N.removeListener(c.value);
        a.o.length = 0
    }
    ;
    CL = function(a, b, c) {
        this.g = a;
        this.h = [];
        this.l = c || 0;
        this.j = (0,
        _.z)(3 == b || 12 == b || 6 == b || 9 == b ? qK : _.B, this, this.h);
        a.setAttribute("controlWidth", 0);
        a.setAttribute("controlHeight", 0)
    }
    ;
    DL = function(a, b) {
        var c = document.createElement("div");
        c.className = "infomsg";
        a.appendChild(c);
        var d = c.style;
        d.background = "#F9EDBE";
        d.border = "1px solid #F0C36D";
        d.borderRadius = "2px";
        d.boxSizing = "border-box";
        d.boxShadow = "0 2px 4px rgba(0,0,0,0.2)";
        d.fontFamily = "Roboto,Arial,sans-serif";
        d.fontSize = "12px";
        d.fontWeight = "400";
        d.left = "10%";
        d.g = "2px";
        d.padding = "5px 14px";
        d.position = "absolute";
        d.textAlign = "center";
        d.top = "10px";
        d.webkitBorderRadius = "2px";
        d.width = "80%";
        d.zIndex = 24601;
        c.innerText = "You are using a browser that is not supported by the Google Maps JavaScript API. Consider changing your browser.";
        d = document.createElement("a");
        b && (c.appendChild(d),
        d.innerText = "Learn more",
        d.href = b,
        d.target = "_blank");
        b = document.createElement("a");
        c.appendChild(b);
        b.innerText = "Dismiss";
        b.target = "_blank";
        d.style.paddingLeft = b.style.paddingLeft = "0.8em";
        d.style.boxSizing = b.style.boxSizing = "border-box";
        d.style.color = b.style.color = "black";
        d.style.cursor = b.style.cursor = "pointer";
        d.style.textDecoration = b.style.textDecoration = "underline";
        b.onmouseup = function() {
            a.removeChild(c)
        }
    }
    ;
    EL = function(a) {
        this.g = a.replace("www.google", "maps.google")
    }
    ;
    FL = function(a) {
        a.style.marginLeft = _.Q(5);
        a.style.marginRight = _.Q(5);
        _.Tn(a, 1E6);
        this.i = a;
        a = this.h = _.Sn("a", a);
        var b = a.style;
        b.position = "static";
        b.overflow = "visible";
        _.vK(a, "none");
        a.style.display = "inline";
        a.setAttribute("target", "_blank");
        a.setAttribute("rel", "noopener");
        b = _.Sn("div");
        var c = new _.J(66,26);
        _.sh(b, c);
        a.appendChild(b);
        this.g = _.UD(null, b, _.jk, c);
        _.Vn(b);
        _.py(b, "pointer")
    }
    ;
    GL = function(a, b) {
        a = a.g;
        _.SD(a, b ? _.to("api-3/images/google_white5", !0) : _.to("api-3/images/google4", !0), a.i)
    }
    ;
    IL = function(a, b, c) {
        function d() {
            var g = f.get("hasCustomStyles")
              , h = a.getMapTypeId();
            GL(e, g || "satellite" == h || "hybrid" == h)
        }
        var e = HL(a, b, c)
          , f = a.__gm;
        _.N.addListener(f, "hascustomstyles_changed", d);
        _.N.addListener(a, "maptypeid_changed", d);
        d();
        return e
    }
    ;
    HL = function(a, b, c) {
        function d() {
            var g = c && a.get("passiveLogo");
            f.setUrl(g ? null : b.get("url"))
        }
        var e = _.Sn("div")
          , f = new FL(e);
        _.N.addListener(a, "passivelogo_changed", d);
        _.N.addListener(b, "url_changed", d);
        d();
        return f
    }
    ;
    JL = function(a, b, c, d) {
        function e() {
            0 != f.get("enabled") && (null != d && f.get("active") ? f.set("value", d) : f.set("value", c))
        }
        var f = this;
        _.N.addListener(this, "value_changed", function() {
            f.set("active", f.get("value") == c)
        });
        new _.Qo(a,b,e);
        "click" == b && "button" != a.tagName.toLowerCase() && new _.Qo(a,"keydown",function(g) {
            "Enter" == g.key && e()
        }
        );
        _.N.addListener(this, "display_changed", function() {
            _.ky(a, 0 != f.get("display"))
        })
    }
    ;
    KL = function(a, b, c, d) {
        return new JL(a,b,c,d)
    }
    ;
    ML = function(a, b, c, d, e) {
        var f = this;
        this.g = document.createElement("div");
        a.appendChild(this.g);
        this.g.setAttribute("role", "button");
        this.g.setAttribute("tabindex", 0);
        this.g.setAttribute("title", d.title);
        this.g.setAttribute("aria-label", d.title);
        this.g.setAttribute("aria-pressed", !1);
        _.lE(this.g);
        _.dx(this.g);
        this.h = this.g.style;
        this.h.overflow = "hidden";
        d.Bf ? pK(this.g) : this.h.textAlign = "center";
        d.height && (this.h.height = _.Q(d.height),
        this.h.display = "table-cell",
        this.h.verticalAlign = "middle");
        this.h.position = "relative";
        BK(this.g, d);
        d.He && zK(this.g);
        d.fg && AK(this.g);
        this.g.style.webkitBackgroundClip = "padding-box";
        this.g.style.backgroundClip = "padding-box";
        this.g.style.MozBackgroundClip = "padding";
        this.j = d.Gg || !1;
        this.l = d.He || !1;
        _.Dy(this.g, "0 1px 4px -1px rgba(0,0,0,0.3)");
        this.g.appendChild(b);
        d.tk ? (a = _.UD(_.to("arrow-down"), this.g),
        _.Rn(a, new _.I(6,0), !_.Ft.g),
        a.style.top = "50%",
        a.style.marginTop = _.Q(-2),
        this.set("active", !1)) : (a = e(this.g, "click", c),
        a.bindTo("value", this),
        this.bindTo("active", a),
        a.bindTo("enabled", this));
        d.Gg && (this.h.fontWeight = "500");
        this.i = _.Jx(this.h.paddingLeft) || 0;
        d.Bf || (this.h.fontWeight = "500",
        d = this.g.offsetWidth - this.i - (_.Jx(this.h.paddingRight) || 0),
        this.h.fontWeight = "",
        _.pd(d) && 0 <= d && (this.h.minWidth = _.Q(d)));
        new _.Qo(this.g,"mousedown",function(g) {
            0 != f.get("enabled") && _.N.trigger(f, "mousedown", g)
        }
        );
        new _.Qo(this.g,"mouseover",function() {
            return LL(f, !0)
        }
        );
        new _.Qo(this.g,"mouseout",function() {
            return LL(f, !1)
        }
        );
        _.N.addListener(this, "enabled_changed", function() {
            return LL(f, !1)
        });
        _.N.addListener(this, "active_changed", function() {
            return LL(f, !1)
        })
    }
    ;
    LL = function(a, b) {
        var c = !!a.get("active") || a.j;
        0 == a.get("enabled") ? (a.h.color = "gray",
        b = c = !1) : (a.h.color = c || b ? "#000" : "#565656",
        a.g.setAttribute("aria-pressed", c));
        a.l || (a.h.borderLeft = "0");
        _.pd(a.i) && (a.h.paddingLeft = _.Q(a.i));
        a.h.fontWeight = c ? "500" : "";
        a.h.backgroundColor = b ? "#ebebeb" : "#fff"
    }
    ;
    _.NL = function(a, b, c, d) {
        return new ML(a,b,c,d,KL)
    }
    ;
    QL = function(a, b, c, d, e) {
        a = this.j = _.Sn("div", a);
        BK(a, e);
        e = _.Ft.g;
        _.dx(a);
        pK(a);
        var f = this.g = _.Sn("span", a);
        f.setAttribute("role", "checkbox");
        this.h = new Image;
        this.i = new Image;
        var g = this.h
          , h = this.i;
        g.src = _.wD('<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" fill="#000000">\n    <path d="M0 0h24v24H0z" fill="none"/>\n    <path d="M19 3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.11 0 2-.9 2-2V5c0-1.1-.89-2-2-2zm-9 14l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/>\n</svg>\n');
        f.appendChild(g);
        h.src = _.wD('<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" fill="#000000">\n    <path d="M19 5v14H5V5h14m0-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2z"/>\n    <path d="M0 0h24v24H0z" fill="none"/>\n</svg>\n');
        f.appendChild(h);
        h.style.height = g.style.height = "1em";
        h.style.width = g.style.width = "1em";
        h.style.transform = g.style.transform = "translateY(0.15em)";
        g = _.Sn("label", a);
        g.innerHTML = b;
        f.style.verticalAlign = g.style.verticalAlign = "middle";
        _.py(g, "pointer");
        a.style.backgroundColor = "#fff";
        a.style.whiteSpace = "nowrap";
        a.style[e ? "paddingLeft" : "paddingRight"] = _.Q(8);
        var k = this;
        _.N.ra(k, "active_changed", function() {
            f.checked = !!k.get("active");
            OL(k)
        });
        _.N.addDomListener(a, "mouseover", function() {
            PL(k, !0)
        });
        _.N.addDomListener(a, "mouseout", function() {
            PL(k, !1)
        });
        b = KL(a, "click", c, d);
        b.bindTo("value", this);
        b.bindTo("display", this);
        this.bindTo("active", b)
    }
    ;
    PL = function(a, b) {
        a.j.style.backgroundColor = b ? "#ebebeb" : "#fff";
        OL(a)
    }
    ;
    OL = function(a) {
        var b = a.g.checked;
        _.ky(a.h, b);
        _.ky(a.i, !b)
    }
    ;
    RL = function(a, b, c, d) {
        var e = _.Sn("div", a);
        BK(e, d);
        _.Nn(b, e);
        e.style.backgroundColor = "#fff";
        _.N.bind(this, "active_changed", this, function() {
            e.style.fontWeight = this.get("active") ? "500" : ""
        });
        _.N.bind(this, "enabled_changed", this, function() {
            var f = 0 != this.get("enabled");
            e.style.color = f ? "black" : "gray";
            (f = f ? d.title : d.Ij) && e.setAttribute("title", f)
        });
        a = KL(e, "mouseup", c);
        a.bindTo("value", this);
        a.bindTo("display", this);
        a.bindTo("enabled", this);
        this.bindTo("active", a);
        _.N.ua(e, "mouseover", this, function() {
            0 != this.get("enabled") && (e.style.backgroundColor = "#ebebeb",
            e.style.color = "#000")
        });
        _.N.addDomListener(e, "mouseout", function() {
            e.style.backgroundColor = "#fff";
            e.style.color = "#565656"
        })
    }
    ;
    SL = function(a) {
        var b = _.Sn("div", a);
        b.style.margin = "1px 0";
        b.style.borderTop = "1px solid #ebebeb";
        _.N.bind(this, "display_changed", this, function() {
            _.ky(b, 0 != this.get("display"))
        })
    }
    ;
    UL = function(a, b, c, d, e) {
        this.i = b;
        e = e || {};
        b = this.g = _.Sn("div", b);
        b.style.backgroundColor = "white";
        _.Tn(b, -1);
        b.style.padding = _.Q(2);
        yK(b, _.Q(_.FJ(d)));
        _.Dy(b, "0 1px 4px -1px rgba(0,0,0,0.3)");
        e.position ? _.Rn(b, e.position, e.g) : (b.style.position = "absolute",
        b.style.top = "100%",
        b.style.left = "0",
        b.style.right = "0");
        pK(b);
        for (_.ly(b); _.gd(c); ) {
            e = c.shift();
            for (var f = 0; f < _.gd(e); ++f) {
                var g = e[f], h, k = {
                    title: g.alt,
                    Ij: g.j || void 0,
                    fontSize: HK(d),
                    padding: [1 + d >> 3]
                };
                null != g.i ? h = new QL(b,g.label,g.g,g.i,k) : h = new RL(b,g.label,g.g,k);
                h.bindTo("value", a, g.Eb);
                h.bindTo("display", g);
                h.bindTo("enabled", g)
            }
            var l = [];
            _.B(c, function(m) {
                l = l.concat(m)
            });
            l.length && (f = new SL(b),
            TL(f, e, l))
        }
    }
    ;
    TL = function(a, b, c) {
        function d() {
            function e(f) {
                for (var g = 0; g < _.gd(f); ++g)
                    if (0 != f[g].get("display"))
                        return !0;
                return !1
            }
            a.set("display", e(b) && e(c))
        }
        _.B(b.concat(c), function(e) {
            _.N.addListener(e, "display_changed", d)
        })
    }
    ;
    VL = function(a) {
        var b = a.g;
        if (!b.listeners) {
            var c = a.i;
            b.listeners = [_.N.addDomListener(c, "mouseout", function() {
                b.timeout = window.setTimeout(function() {
                    a.set("active", !1)
                }, 1E3)
            }), _.N.ua(c, "mouseover", a, a.h), _.N.addDomListener(document.body, "mouseup", function(d) {
                for (d = d.target; d; ) {
                    if (d == c)
                        return;
                    d = d.parentNode
                }
                a.set("active", !1)
            })]
        }
        _.my(b)
    }
    ;
    WL = _.p(".gm-style .gm-style-mtc label,.gm-style .gm-style-mtc div{font-weight:400}\n");
    ZL = function(a, b, c, d) {
        var e = this;
        this.h = a;
        this.i = d;
        this.g = [];
        _.N.addListener(this, "fontloaded_changed", function() {
            if (e.get("fontLoaded")) {
                for (var h = e.g.length, k = 0, l = 0; l < h; ++l) {
                    var m = _.th(e.g[l].parentNode)
                      , q = l == h - 1;
                    e.g[l].fh && _.Rn(e.g[l].fh.g, new _.I(q ? 0 : k,m.height), q);
                    k += m.width
                }
                e.g.length = 0
            }
        });
        _.N.addListener(this, "mapsize_changed", function() {
            return XL(e)
        });
        _.N.addListener(this, "display_changed", function() {
            return XL(e)
        });
        d = b.length;
        for (var f = 0, g = 0; g < d; ++g)
            f = YL(this, c, b[g], f, 0 == g, g == d - 1);
        _.Cy();
        _.py(a, "pointer")
    }
    ;
    YL = function(a, b, c, d, e, f) {
        var g = document.createElement("div");
        a.h.appendChild(g);
        _.vK(g, "left");
        _.em(WL, a.h);
        _.lm(g, "gm-style-mtc");
        var h = _.Nn(c.label, a.h, !0);
        b = b(g, h, c.g, {
            title: c.alt,
            padding: [0, 17],
            height: a.i,
            fontSize: HK(a.i),
            He: e,
            fg: f
        });
        g.style.position = "relative";
        e = b.Ja();
        new _.Qo(e,"focusin",function() {
            g.style.zIndex = 1
        }
        );
        new _.Qo(e,"focusout",function() {
            g.style.zIndex = 0
        }
        );
        c.Eb && b.bindTo("value", a, c.Eb);
        e = null;
        h = _.th(g);
        c.h && (e = new UL(a,g,c.h,a.i,{
            position: new _.I(f ? 0 : d,h.height),
            g: f
        }),
        $L(g, b, e));
        a.g.push({
            parentNode: g,
            fh: e
        });
        return d += h.width
    }
    ;
    XL = function(a) {
        var b = a.get("mapSize");
        b = !!(a.get("display") || b && 200 <= b.width && 200 <= b.height);
        _.ky(a.h, b);
        _.N.trigger(a.h, "resize")
    }
    ;
    $L = function(a, b, c) {
        new _.Qo(a,"mousedown",function() {
            return c.set("active", !0)
        }
        );
        new _.Qo(a,"mouseover",function() {
            b.get("active") && c.set("active", !0)
        }
        );
        _.N.addDomListener(b, "active_changed", function() {
            b.get("active") || c.set("active", !1)
        })
    }
    ;
    aM = function(a, b, c) {
        var d = this;
        _.Cy();
        _.py(a, "pointer");
        pK(a);
        a.style.width = _.Q(120);
        _.np(WL);
        _.lm(a, "gm-style-mtc");
        var e = _.Nn("", a, !0)
          , f = _.NL(a, e, null, {
            title: "Change map style",
            tk: !0,
            Bf: !0,
            Gg: !0,
            padding: [8, 17],
            fontSize: 18,
            He: !0,
            fg: !0
        })
          , g = {}
          , h = [b];
        b = _.Ca(b);
        for (var k = b.next(); !k.done; k = b.next())
            k = k.value,
            "mapTypeId" == k.Eb && (g[k.g] = k.label),
            k.h && h.push.apply(h, _.Da(k.h));
        this.addListener("maptypeid_changed", function() {
            _.jy(e, g[d.get("mapTypeId")] || "")
        });
        var l = new UL(this,a,h,c);
        f.addListener("mousedown", function() {
            l.set("active", !l.get("active"))
        });
        this.g = a
    }
    ;
    bM = function(a) {
        var b = a.get("mapSize");
        b = !!(a.get("display") || b && 200 <= b.width && 200 <= b.height);
        _.ky(a.g, b);
        _.N.trigger(a.g, "resize")
    }
    ;
    cM = function(a) {
        this.h = a;
        this.g = !1
    }
    ;
    dM = function(a, b, c) {
        a.get(b) !== c && (a.g = !0,
        a.set(b, c),
        a.g = !1)
    }
    ;
    eM = function(a) {
        var b = a.get("internalMapTypeId");
        _.hd(a.h, function(c, d) {
            d.mapTypeId == b && d.Md && a.get(d.Md) == d.value && (b = c)
        });
        dM(a, "mapTypeId", b)
    }
    ;
    fM = function(a, b, c) {
        a.innerText = "";
        b = _.Ca(b ? ['<svg xmlns="http://www.w3.org/2000/svg" width="22px" height="13px" viewBox="0 0 22 13">\n  <path fill="#666" d="M2.75,5H10V0H4.4L2.75,5z M0,13h10V7H2L0,13z M20,7h-8v6h10L20,7z M17.6,0H12v5h7.25L17.6,0z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="22px" height="13px" viewBox="0 0 22 13">\n  <path fill="#333" d="M2.75,5H10V0H4.4L2.75,5z M0,13h10V7H2L0,13z M20,7h-8v6h10L20,7z M17.6,0H12v5h7.25L17.6,0z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="22px" height="13px" viewBox="0 0 22 13">\n  <path fill="#111" d="M2.75,5H10V0H4.4L2.75,5z M0,13h10V7H2L0,13z M20,7h-8v6h10L20,7z M17.6,0H12v5h7.25L17.6,0z"/>\n</svg>\n'] : ['<svg xmlns="http://www.w3.org/2000/svg" width="18px" height="16px" viewBox="0 0 18 16">\n  <path fill="#666" d="M0,16h8V9H0V16z M10,16h8V9h-8V16z M0,7h8V0H0V7z M10,0v7h8V0H10z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18px" height="16px" viewBox="0 0 18 16">\n  <path fill="#333" d="M0,16h8V9H0V16z M10,16h8V9h-8V16z M0,7h8V0H0V7z M10,0v7h8V0H10z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18px" height="16px" viewBox="0 0 18 16">\n  <path fill="#111" d="M0,16h8V9H0V16z M10,16h8V9h-8V16z M0,7h8V0H0V7z M10,0v7h8V0H10z"/>\n</svg>\n']);
        for (var d = b.next(); !d.done; d = b.next()) {
            d = d.value;
            var e = document.createElement("img");
            e.style.width = _.Q(HK(c));
            e.src = _.wD(d);
            a.appendChild(e)
        }
    }
    ;
    hM = function(a, b, c, d) {
        var e = this;
        c = _.oh[43] ? "rgb(34, 34, 34)" : "rgb(255, 255, 255)";
        this.l = b;
        this.g = _.mE("Rotate map 90 degrees");
        this.h = _.mE("Tilt map");
        this.C = a;
        this.j = _.Sn("div", a);
        this.i = !0;
        _.em(eL, d);
        _.sh(this.g, new _.J(b,b));
        _.sh(this.h, new _.J(b,b));
        this.g.style.left = this.g.style.top = "0";
        this.h.style.left = this.h.style.top = "0";
        this.g.style.backgroundColor = this.h.style.backgroundColor = c;
        this.j.appendChild(this.g);
        this.j.appendChild(this.h);
        a = _.Ca(['<svg xmlns="http://www.w3.org/2000/svg" width="24" height="22" viewBox="0 0 24 22">\n  <path fill="#666" fill-rule="evenodd" d="M20 10c0-5.52-4.48-10-10-10s-10 4.48-10 10v5h5v-5c0-2.76 2.24-5 5-5s5 2.24 5 5v5h-4l6.5 7 6.5-7h-4v-5z" clip-rule="evenodd"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="22" viewBox="0 0 24 22">\n  <path fill="#333" fill-rule="evenodd" d="M20 10c0-5.52-4.48-10-10-10s-10 4.48-10 10v5h5v-5c0-2.76 2.24-5 5-5s5 2.24 5 5v5h-4l6.5 7 6.5-7h-4v-5z" clip-rule="evenodd"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="22" viewBox="0 0 24 22">\n  <path fill="#111" fill-rule="evenodd" d="M20 10c0-5.52-4.48-10-10-10s-10 4.48-10 10v5h5v-5c0-2.76 2.24-5 5-5s5 2.24 5 5v5h-4l6.5 7 6.5-7h-4v-5z" clip-rule="evenodd"/>\n</svg>\n']);
        for (d = a.next(); !d.done; d = a.next())
            d = d.value,
            c = document.createElement("img"),
            c.style.width = c.style.height = _.Q(HK(b)),
            c.src = _.wD(d),
            this.g.appendChild(c);
        this.g.style.overflow = "hidden";
        this.g.setAttribute("class", "gm-control-active");
        this.g.style.marginBottom = _.Q(12 + (b >> 1));
        fM(this.h, !1, b);
        this.h.style.overflow = "hidden";
        this.h.setAttribute("class", "gm-tilt gm-control-active");
        _.Dy(this.g, "0 1px 4px -1px rgba(0,0,0,0.3)");
        _.Dy(this.h, "0 1px 4px -1px rgba(0,0,0,0.3)");
        wK(this.g, _.Q(_.FJ(b)));
        wK(this.h, _.Q(_.FJ(b)));
        _.Vn(this.g);
        _.Vn(this.h);
        _.py(this.g, "pointer");
        _.py(this.h, "pointer");
        _.N.ua(this.g, "click", this, this.o);
        _.N.ua(this.h, "click", this, this.F);
        _.N.addListener(this, "aerialavailableatzoom_changed", function() {
            return gM(e)
        });
        _.N.addListener(this, "tilt_changed", function() {
            e.i = 0 != e.get("tilt");
            gM(e)
        });
        _.N.addListener(this, "mapsize_changed", function() {
            gM(e)
        });
        _.N.addListener(this, "rotatecontrol_changed", function() {
            gM(e)
        })
    }
    ;
    gM = function(a) {
        var b = a.get("mapSize")
          , c = !!a.get("aerialAvailableAtZoom");
        b = !!a.get("rotateControl") || b && 200 <= b.width && 200 <= b.height;
        c = c && b;
        b = a.C;
        fM(a.h, a.i, a.l);
        a.g.style.display = a.i ? "block" : "none";
        var d = a.l
          , e = a.i ? 12 + Math.floor(2.25 * a.l) : a.l;
        a.j.style.width = _.Q(d);
        a.j.style.height = _.Q(e);
        b.setAttribute("controlWidth", d);
        b.setAttribute("controlHeight", e);
        _.ky(b, c);
        _.N.trigger(b, "resize")
    }
    ;
    iM = function(a, b, c) {
        a = new hM(a,b,{
            cache: !0
        },c);
        a.bindTo("mapSize", this);
        a.bindTo("rotateControl", this);
        a.bindTo("aerialAvailableAtZoom", this);
        a.bindTo("heading", this);
        a.bindTo("tilt", this)
    }
    ;
    jM = function(a, b, c, d) {
        a.innerText = "";
        b = _.Ca(0 == b ? 1 == c ? ['<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <polygon fill="#666" points="18,7 11,7 11,0 7,0 7,7 0,7 0,11 7,11 7,18 11,18 11,11 18,11"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <polygon fill="#B1B1B1" points="18,7 11,7 11,0 7,0 7,7 0,7 0,11 7,11 7,18 11,18 11,11 18,11"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <polygon fill="#E4E4E4" points="18,7 11,7 11,0 7,0 7,7 0,7 0,11 7,11 7,18 11,18 11,11 18,11"/>\n</svg>\n'] : ['<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <polygon fill="#666" points="18,7 11,7 11,0 7,0 7,7 0,7 0,11 7,11 7,18 11,18 11,11 18,11"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <polygon fill="#333" points="18,7 11,7 11,0 7,0 7,7 0,7 0,11 7,11 7,18 11,18 11,11 18,11"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <polygon fill="#111" points="18,7 11,7 11,0 7,0 7,7 0,7 0,11 7,11 7,18 11,18 11,11 18,11"/>\n</svg>\n'] : 1 == c ? ['<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#666" d="M0,7h18v4H0V7z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#B1B1B1" d="M0,7h18v4H0V7z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#E4E4E4" d="M0,7h18v4H0V7z"/>\n</svg>\n'] : ['<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#666" d="M0,7h18v4H0V7z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#333" d="M0,7h18v4H0V7z"/>\n</svg>\n', '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">\n  <path fill="#111" d="M0,7h18v4H0V7z"/>\n</svg>\n']);
        for (c = b.next(); !c.done; c = b.next()) {
            c = c.value;
            var e = document.createElement("img");
            e.style.width = e.style.height = _.Q(HK(d));
            e.src = _.wD(c);
            a.appendChild(e)
        }
    }
    ;
    nM = function(a, b, c, d) {
        var e = this;
        this.j = a;
        this.h = b;
        this.g = _.Sn("div", a);
        _.Vn(this.g);
        _.Un(this.g);
        _.Dy(this.g, "0 1px 4px -1px rgba(0,0,0,0.3)");
        wK(this.g, _.Q(_.FJ(b)));
        this.g.style.cursor = "pointer";
        _.em(eL, d);
        _.N.addDomListener(this.g, "mouseover", function() {
            e.set("mouseover", !0)
        });
        _.N.addDomListener(this.g, "mouseout", function() {
            e.set("mouseover", !1)
        });
        this.l = kM(this, this.g, 0);
        this.i = _.Sn("div", this.g);
        this.i.style.position = "relative";
        this.i.style.overflow = "hidden";
        this.i.style.width = _.Q(3 * b / 4);
        this.i.style.height = _.Q(1);
        this.i.style.margin = "0 5px";
        this.o = kM(this, this.g, 1);
        _.N.addListener(this, "display_changed", function() {
            return lM(e)
        });
        _.N.addListener(this, "mapsize_changed", function() {
            return lM(e)
        });
        _.N.addListener(this, "maptypeid_changed", function() {
            var f = e.get("mapTypeId");
            e.set("controlStyle", ("satellite" == f || "hybrid" == f) && _.oh[43] || "streetview" == f ? 1 : 0)
        });
        _.N.addListener(this, "controlstyle_changed", function() {
            var f = e.get("controlStyle");
            if (null != f) {
                var g = mM[f];
                jM(e.l, 0, f, e.h);
                jM(e.o, 1, f, e.h);
                e.g.style.backgroundColor = g.backgroundColor;
                e.i.style.backgroundColor = g.bh
            }
        })
    }
    ;
    kM = function(a, b, c) {
        var d = _.mE(0 == c ? "Zoom in" : "Zoom out");
        b.appendChild(d);
        _.N.addDomListener(d, "click", function() {
            var e = 0 == c ? 1 : -1;
            a.set("zoom", a.get("zoom") + e)
        });
        d.setAttribute("class", "gm-control-active");
        d.style.overflow = "hidden";
        b = a.get("controlStyle");
        jM(d, c, b, a.h);
        return d
    }
    ;
    lM = function(a) {
        var b = a.get("mapSize");
        if (b && 200 <= b.width && 200 <= b.height || a.get("display")) {
            _.my(a.j);
            b = a.h;
            var c = 2 * a.h + 1;
            a.g.style.width = _.Q(b);
            a.g.style.height = _.Q(c);
            a.j.setAttribute("controlWidth", b);
            a.j.setAttribute("controlHeight", c);
            _.N.trigger(a.j, "resize");
            b = a.l.style;
            b.width = _.Q(a.h);
            b.height = _.Q(a.h);
            b.left = b.top = "0";
            a.i.style.top = "0";
            b = a.o.style;
            b.width = _.Q(a.h);
            b.height = _.Q(a.h);
            b.left = b.top = "0"
        } else
            _.ly(a.j)
    }
    ;
    oM = function(a, b, c, d) {
        a = this.g = _.Sn("div");
        _.sy(a);
        b = new nM(a,b,c,d);
        b.bindTo("mapSize", this);
        b.bindTo("display", this, "display");
        b.bindTo("mapTypeId", this);
        b.bindTo("zoom", this);
        this.Td = b
    }
    ;
    pM = function(a) {
        a.Td && (a.Td.unbindAll(),
        a.Td = null)
    }
    ;
    qM = function(a, b) {
        _.sy(a);
        _.Tn(a, 1000001);
        this.g = a;
        this.h = _.AJ(a, b);
        this.i = a = _.Sn("a", this.h);
        a.style.textDecoration = "none";
        _.py(a, "pointer");
        _.On(a, "Terms of Use");
        mK(a, _.Kt);
        a.target = "_blank";
        a.setAttribute("rel", "noopener");
        a.style.color = "#444";
        this.Pf()
    }
    ;
    rM = function(a, b) {
        var c = a.C;
        if (c)
            b(c);
        else {
            var d = d ? Math.min(d, screen.width) : screen.width;
            var e = _.Sn("div", document.body, new _.I(-screen.width,-screen.height), new _.J(d,screen.height));
            e.style.visibility = "hidden";
            a.l ? a.l++ : (a.l = 1,
            _.Sn("div", e, _.jk).appendChild(a));
            window.setTimeout(function() {
                c = a.C;
                if (!c) {
                    var f = a.parentNode
                      , g = a.offsetWidth
                      , h = a.offsetHeight;
                    if (1 == _.zi.type && 9 == document.documentMode || 4 == _.zi.g)
                        ++g,
                        ++h;
                    c = new _.J(Math.min(d, g),Math.min(screen.height, h));
                    for (a.C = c; f.firstChild; )
                        f.removeChild(f.firstChild);
                    _.An(f)
                }
                a.l--;
                a.l || (a.C = null);
                _.An(e);
                e = null;
                b(c)
            }, 0)
        }
    }
    ;
    uM = function(a, b) {
        _.sy(a);
        _.Tn(a, 1000001);
        this.g = a;
        var c = _.Sn("div", a);
        a = _.AJ(c, b);
        this.o = c;
        this.l = _.AJ(_.Sn("div"), b);
        b = _.Sn("a", a);
        _.On(b, "Map Data");
        b.style.textDecoration = "none";
        _.py(b, "pointer");
        _.N.Yc(b, "click", this);
        this.i = b;
        this.h = _.Sn("span", a);
        this.j = sM(this);
        tM(this)
    }
    ;
    tM = function(a) {
        var b = a.get("size");
        b && rM(a.l, (0,
        _.z)(function(c) {
            var d = vM(this);
            _.dy(this.h, d);
            c = c.width > b.width - this.j;
            var e = !this.get("hide");
            _.ky(this.g, e && !!d);
            _.ky(this.i, !(!d || !c));
            _.ky(this.h, !(!d || c));
            this.g.style.width = _.Q(12 + _.th(this.h).width + _.th(this.i).width);
            _.N.trigger(this.g, "resize")
        }, a))
    }
    ;
    vM = function(a) {
        return a.get("attributionText") || "Image may be subject to copyright"
    }
    ;
    sM = function(a) {
        var b = a.get("rmiWidth") || 0
          , c = a.get("tosWidth") || 0;
        a = a.get("scaleWidth") || 0;
        return b + c + a
    }
    ;
    AM = function(a) {
        var b = this;
        this.g = wM(a);
        xM(this.g);
        this.h = yM(this.g);
        _.xE(this.g, function() {
            _.ly(b.g)
        });
        zM(this)
    }
    ;
    wM = function(a) {
        a = _.Sn("div", a);
        a.style.backgroundColor = "white";
        a.style.padding = _.Q(15) + " " + _.Q(21);
        a.style.border = _.Q(1) + " solid #ababab";
        a.style.fontFamily = "Roboto,Arial,sans-serif";
        a.style.color = "#222";
        a.style.boxSizing = "border-box";
        _.Dy(a, "0 4px 16px rgba(0,0,0,0.2)");
        _.Tn(a, 10000002);
        return a
    }
    ;
    xM = function(a) {
        a = _.Sn("div", a);
        a.style.padding = "0 0 10px 0";
        a.style.fontSize = "16px";
        a.style.boxSizing = "border-box";
        _.Nn("Map Data", a)
    }
    ;
    yM = function(a) {
        a = _.Sn("div", a);
        a.style.fontSize = "13px";
        return _.Nn("", a)
    }
    ;
    zM = function(a) {
        var b;
        if (b = (b = a.get("size")) ? new _.J(Math.min(300, b.width - 10),Math.min(180, b.height - 10)) : null) {
            _.sh(a.g, new _.J(Math.max(0, b.width),Math.max(0, b.height)));
            var c = a.get("size");
            _.Rn(a.g, new _.I((c.width - b.width) / 2,(c.height - b.height) / 2))
        }
    }
    ;
    BM = function(a) {
        _.cx(a, "gmnoprint");
        _.lm(a, "gmnoscreen");
        this.g = a;
        a = this.h = _.Sn("div", a);
        a.style.fontFamily = "Roboto,Arial,sans-serif";
        a.style.fontSize = _.Q(11);
        a.style.color = "#444";
        a.style.direction = "ltr";
        a.style.textAlign = "right";
        a.style.backgroundColor = "#f5f5f5"
    }
    ;
    CM = function(a, b) {
        var c = new uM(document.createElement("div"),a);
        c.bindTo("size", this);
        c.bindTo("rmiWidth", this);
        c.bindTo("attributionText", this);
        c.bindTo("fontLoaded", this);
        c.bindTo("isCustomPanorama", this);
        var d = new AM(a);
        d.bindTo("size", this);
        d.bindTo("attributionText", this);
        _.N.addListener(c, "click", (0,
        _.z)(d.set, d, "visible", !0));
        d = new BM(document.createElement("div"));
        d.bindTo("attributionText", this);
        a = new qM(document.createElement("div"),a);
        a.bindTo("fontLoaded", this);
        a.bindTo("mapTypeId", this);
        c.bindTo("tosWidth", a, "width");
        c.bindTo("mapTypeId", this);
        c.bindTo("scaleWidth", this);
        b && _.oh[28] ? (c.bindTo("hide", b, "hideLegalNotices"),
        d.bindTo("hide", b, "hideLegalNotices"),
        a.bindTo("hide", b, "hideLegalNotices")) : (c.bindTo("isCustomPanorama", this),
        d.bindTo("hide", this, "isCustomPanorama"));
        this.g = c;
        this.h = d;
        this.i = a
    }
    ;
    DM = function(a, b) {
        _.Vn(a);
        _.Un(a);
        a.style.fontFamily = "Roboto,Arial,sans-serif";
        a.style.fontSize = _.Q(Math.round(11 * b / 40));
        a.style.textAlign = "center";
        _.Dy(a, "rgba(0, 0, 0, 0.3) 0px 1px 4px -1px");
        a.setAttribute("controlWidth", _.Q(25));
        _.py(a, "pointer");
        this.g = [];
        this.h = b;
        this.i = a
    }
    ;
    EM = function(a, b, c) {
        _.N.addDomListener(b, "mouseover", function() {
            b.style.color = "#bbb";
            b.style.fontWeight = "bold"
        });
        _.N.addDomListener(b, "mouseout", function() {
            b.style.color = "#999";
            b.style.fontWeight = "400"
        });
        _.N.ua(b, "click", a, function() {
            this.set("pano", c)
        })
    }
    ;
    IM = function(a, b) {
        var c = this;
        this.l = a;
        _.lm(a, "gm-svpc");
        a.setAttribute("dir", "ltr");
        a.setAttribute("title", "Drag Pegman onto the map to open Street View");
        a.style.backgroundColor = "#fff";
        this.g = {
            oe: null,
            active: null,
            je: null
        };
        this.h = b;
        this.i = !0;
        FM(this);
        this.set("position", _.lK.Kh.offset);
        _.N.ua(a, "mouseover", this, this.o);
        _.N.ua(a, "mouseout", this, this.C);
        a = this.j = new _.KE(a);
        a.bindTo("position", this);
        _.N.forward(a, "dragstart", this);
        _.N.forward(a, "drag", this);
        _.N.forward(a, "dragend", this);
        var d = this;
        _.N.addListener(a, "dragend", function() {
            d.set("position", _.lK.Kh.offset)
        });
        _.N.addListener(this, "mode_changed", function() {
            var e = c.get("mode");
            c.j.get("enabled") || c.j.set("enabled", !0);
            GM(c, e)
        });
        _.N.addListener(this, "display_changed", function() {
            return HM(c)
        });
        _.N.addListener(this, "mapsize_changed", function() {
            return HM(c)
        });
        this.set("mode", 1)
    }
    ;
    FM = function(a) {
        for (var b in a.g) {
            var c = a.g[b];
            c && c.parentNode && _.pc(c);
            a.g[b] = null
        }
        b = a.l;
        if (a.i) {
            _.my(b);
            c = new _.J(a.h,a.h);
            _.Dy(b, "0 1px 4px -1px rgba(0,0,0,0.3)");
            wK(b, _.Q(40 < a.h ? Math.round(a.h / 20) : 2));
            b.style.width = _.Q(c.width);
            b.style.height = _.Q(c.height);
            var d = 32 > a.h ? a.h - 2 : 40 > a.h ? 30 : 10 + a.h / 2
              , e = _.Sn("div", b);
            e.style.position = "absolute";
            e.style.left = "50%";
            e.style.top = "50%";
            var f = document.createElement("img");
            a.g.oe = f;
            f.src = _.wD('<svg xmlns="http://www.w3.org/2000/svg" width="23" height="38" viewBox="0 0 23 38">\n<path d="M16.6,38.1h-5.5l-0.2-2.9-0.2,2.9h-5.5L5,25.3l-0.8,2a1.53,1.53,0,0,1-1.9.9l-1.2-.4a1.58,1.58,0,0,1-1-1.9v-0.1c0.3-.9,3.1-11.2,3.1-11.2a2.66,2.66,0,0,1,2.3-2l0.6-.5a6.93,6.93,0,0,1,4.7-12,6.8,6.8,0,0,1,4.9,2,7,7,0,0,1,2,4.9,6.65,6.65,0,0,1-2.2,5l0.7,0.5a2.78,2.78,0,0,1,2.4,2s2.9,11.2,2.9,11.3a1.53,1.53,0,0,1-.9,1.9l-1.3.4a1.63,1.63,0,0,1-1.9-.9l-0.7-1.8-0.1,12.7h0Zm-3.6-2h1.7L14.9,20.3l1.9-.3,2.4,6.3,0.3-.1c-0.2-.8-0.8-3.2-2.8-10.9a0.63,0.63,0,0,0-.6-0.5h-0.6l-1.1-.9h-1.9l-0.3-2a4.83,4.83,0,0,0,3.5-4.7A4.78,4.78 0 0,0 11 2.3H10.8a4.9,4.9,0,0,0-1.4,9.6l-0.3,2h-1.9l-1,.9h-0.6a0.74,0.74,0,0,0-.6.5c-2,7.5-2.7,10-3,10.9l0.3,0.1,2.5-6.3,1.9,0.3,0.2,15.8h1.6l0.6-8.4a1.52,1.52,0,0,1,1.5-1.4,1.5,1.5,0,0,1,1.5,1.4l0.9,8.4h0Zm-10.9-9.6h0Zm17.5-.1h0Z" style="fill:#333;opacity:0.7;isolation:isolate"/>\n<path d="M5.9,13.6l1.1-.9h7.8l1.2,0.9" style="fill:#ce592c"/>\n<ellipse cx="10.9" cy="13.1" rx="2.7" ry="0.3" style="fill:#ce592c;opacity:0.5;isolation:isolate"/>\n<path d="M20.6,26.1l-2.9-11.3a1.71,1.71,0,0,0-1.6-1.2H5.7a1.69,1.69,0,0,0-1.5,1.3l-3.1,11.3a0.61,0.61,0,0,0,.3.7l1.1,0.4a0.61,0.61,0,0,0,.7-0.3l2.7-6.7,0.2,16.8h3.6l0.6-9.3a0.47,0.47,0,0,1,.44-0.5h0.06c0.4,0,.4.2,0.5,0.5l0.6,9.3h3.6L15.7,20.3l2.5,6.6a0.52,0.52,0,0,0,.66.31h0l1.2-.4a0.57,0.57,0,0,0,.5-0.7h0Z" style="fill:#fdbf2d"/>\n<path d="M7,13.6l3.9,6.7,3.9-6.7" style="fill:#cf572e;opacity:0.6;isolation:isolate"/>\n<circle cx="10.9" cy="7" r="5.9" style="fill:#fdbf2d"/>\n</svg>\n');
            f.style.width = f.style.height = _.Q(d);
            f.style.position = "absolute";
            f.style.transform = "translate(-50%, -50%)";
            f.style.pointerEvents = "none";
            e.appendChild(f);
            f = document.createElement("img");
            a.g.active = f;
            f.src = _.wD('<svg width="24px" height="38px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 38">\n<path d="M22,26.6l-2.9-11.3a2.78,2.78,0,0,0-2.4-2l-0.7-.5a6.82,6.82,0,0,0,2.2-5,6.9,6.9,0,0,0-13.8,0,7,7,0,0,0,2.2,5.1l-0.6.5a2.55,2.55,0,0,0-2.3,2s-3,11.1-3,11.2v0.1a1.58,1.58,0,0,0,1,1.9l1.2,0.4a1.63,1.63,0,0,0,1.9-.9l0.8-2,0.2,12.8h11.3l0.2-12.6,0.7,1.8a1.54,1.54,0,0,0,1.5,1,1.09,1.09,0,0,0,.5-0.1l1.3-.4a1.85,1.85,0,0,0,.7-2h0Zm-1.2.9-1.2.4a0.61,0.61,0,0,1-.7-0.3l-2.5-6.6-0.2,16.8h-9.4L6.6,21l-2.7,6.7a0.52,0.52,0,0,1-.66.31h0l-1.1-.4a0.52,0.52,0,0,1-.31-0.66v0l3.1-11.3a1.69,1.69,0,0,1,1.5-1.3h0.2l1-.9h2.3a5.9,5.9,0,1,1,3.2,0h2.3l1.1,0.9h0.2a1.71,1.71,0,0,1,1.6,1.2l2.9,11.3a0.84,0.84,0,0,1-.4.7h0Z" style="fill:#333;fill-opacity:0.2"/>"\n</svg>\n\n');
            f.style.display = "none";
            f.style.width = f.style.height = _.Q(d);
            f.style.position = "absolute";
            f.style.transform = "translate(-50%, -50%)";
            f.style.pointerEvents = "none";
            e.appendChild(f);
            f = document.createElement("img");
            a.g.je = f;
            f.style.display = "none";
            f.style.width = f.style.height = _.Q(4 * d / 3);
            f.style.position = "absolute";
            f.style.transform = "translate(-60%, -45%)";
            f.style.pointerEvents = "none";
            e.appendChild(f);
            f.src = _.wD('<svg width="40px" height="50px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 40 50">\n<path d="M34.00,-30.40l-2.9-11.3a2.78,2.78,0,0,0-2.4-2l-0.7-.5a6.82,6.82,0,0,0,2.2-5,6.9,6.9,0,0,0-13.8,0,7,7,0,0,0,2.2,5.1l-0.6.5a2.55,2.55,0,0,0-2.3,2s-3,11.1-3,11.2v0.1a1.58,1.58,0,0,0,1,1.9l1.2,0.4a1.63,1.63,0,0,0,1.9-.9l0.8-2,0.2,12.8h11.3l0.2-12.6,0.7,1.8a1.54,1.54,0,0,0,1.5,1,1.09,1.09,0,0,0,.5-0.1l1.3-.4a1.85,1.85,0,0,0,.7-2h0Zm-1.2.9-1.2.4a0.61,0.61,0,0,1-.7-0.3l-2.5-6.6-0.2,16.8h-9.4L18.60,-36.00l-2.7,6.7a0.52,0.52,0,0,1-.66.31h0l-1.1-.4a0.52,0.52,0,0,1-.31-0.66v0l3.1-11.3a1.69,1.69,0,0,1,1.5-1.3h0.2l1-.9h2.3a5.9,5.9,0,1,1,3.2,0h2.3l1.1,0.9h0.2a1.71,1.71,0,0,1,1.6,1.2l2.9,11.3a0.84,0.84,0,0,1-.4.7h0Zm1.2,59.1-2.9-11.3a2.78,2.78,0,0,0-2.4-2l-0.7-.5a6.82,6.82,0,0,0,2.2-5,6.9,6.9,0,0,0-13.8,0,7,7,0,0,0,2.2,5.1l-0.6.5a2.55,2.55,0,0,0-2.3,2s-3,11.1-3,11.2v0.1a1.58,1.58,0,0,0,1,1.9l1.2,0.4a1.63,1.63,0,0,0,1.9-.9l0.8-2,0.2,12.8h11.3l0.2-12.6,0.7,1.8a1.54,1.54,0,0,0,1.5,1,1.09,1.09,0,0,0,.5-0.1l1.3-.4a1.85,1.85,0,0,0,.7-2h0Zm-1.2.9-1.2.4a0.61,0.61,0,0,1-.7-0.3l-2.5-6.6-0.2,16.8h-9.4L18.60,24.00l-2.7,6.7a0.52,0.52,0,0,1-.66.31h0l-1.1-.4a0.52,0.52,0,0,1-.31-0.66v0l3.1-11.3a1.69,1.69,0,0,1,1.5-1.3h0.2l1-.9h2.3a5.9,5.9,0,1,1,3.2,0h2.3l1.1,0.9h0.2a1.71,1.71,0,0,1,1.6,1.2l2.9,11.3a0.84,0.84,0,0,1-.4.7h0Z" style="fill:#333;fill-opacity:0.2"></path>\n<path d="M15.40,38.80h-4a1.64,1.64,0,0,1-1.4-1.1l-3.1-8a0.9,0.9,0,0,1-.5.1l-1.4.1a1.62,1.62,0,0,1-1.6-1.4l-1.1-13.1,1.6-1.3a6.87,6.87,0,0,1-3-4.6A7.14,7.14 0 0,1 2 4a7.6,7.6,0,0,1,4.7-3.1,7.14,7.14,0,0,1,5.5,1.1,7.28,7.28,0,0,1,2.3,9.6l2.1-.1,0.1,1c0,0.2.1,0.5,0.1,0.8a2.41,2.41,0,0,1,1,1s1.9,3.2,2.8,4.9c0.7,1.2,2.1,4.2,2.8,5.9a2.1,2.1,0,0,1-.8,2.6l-0.6.4a1.63,1.63,0,0,1-1.5.2l-0.6-.3a8.93,8.93,0,0,0,.5,1.3,7.91,7.91,0,0,0,1.8,2.6l0.6,0.3v4.6l-4.5-.1a7.32,7.32,0,0,1-2.5-1.5l-0.4,3.6h0Zm-10-19.2,3.5,9.8,2.9,7.5h1.6V35l-1.9-9.4,3.1,5.4a8.24,8.24,0,0,0,3.8,3.8h2.1v-1.4a14,14,0,0,1-2.2-3.1,44.55,44.55,0,0,1-2.2-8l-1.3-6.3,3.2,5.6c0.6,1.1,2.1,3.6,2.8,4.9l0.6-.4c-0.8-1.6-2.1-4.6-2.8-5.8-0.9-1.7-2.8-4.9-2.8-4.9a0.54,0.54,0,0,0-.4-0.3l-0.7-.1-0.1-.7a4.33,4.33,0,0,0-.1-0.5l-5.3.3,2.2-1.9a4.3,4.3,0,0,0,.9-1,5.17,5.17,0,0,0,.8-4,5.67,5.67,0,0,0-2.2-3.4,5.09,5.09,0,0,0-4-.8,5.67,5.67,0,0,0-3.4,2.2,5.17,5.17,0,0,0-.8,4,5.67,5.67,0,0,0,2.2,3.4,3.13,3.13,0,0,0,1,.5l1.6,0.6-3.2,2.6,1,11.5h0.4l-0.3-8.2h0Z" style="fill:#333"></path>\n<path d="M3.35,15.90l1.1,12.5a0.39,0.39,0,0,0,.36.42l0.14,0,1.4-.1a0.66,0.66,0,0,0,.5-0.4l-0.2-3.8-3.3-8.6h0Z" style="fill:#fdbf2d"></path>\n<path d="M5.20,28.80l1.1-.1a0.66,0.66,0,0,0,.5-0.4l-0.2-3.8-1.2-3.1Z" style="fill:#ce592b;fill-opacity:0.25"></path>\n<path d="M21.40,35.70l-3.8-1.2-2.7-7.8L12.00,15.5l3.4-2.9c0.2,2.4,2.2,14.1,3.7,17.1,0,0,1.3,2.6,2.3,3.1v2.9m-8.4-8.1-2-.3,2.5,10.1,0.9,0.4v-2.9" style="fill:#e5892b"></path>\n<path d="M17.80,25.40c-0.4-1.5-.7-3.1-1.1-4.8-0.1-.4-0.1-0.7-0.2-1.1l-1.1-2-1.7-1.6s0.9,5,2.4,7.1a19.12,19.12,0,0,0,1.7,2.4h0Z" style="fill:#cf572e;opacity:0.6;isolation:isolate"></path>\n<path d="M14.40,37.80h-3a0.43,0.43,0,0,1-.4-0.4l-3-7.8-1.7-4.8-3-9,8.9-.4s2.9,11.3,4.3,14.4c1.9,4.1,3.1,4.7,5,5.8h-3.2s-4.1-1.2-5.9-7.7a0.59,0.59,0,0,0-.6-0.4,0.62,0.62,0,0,0-.3.7s0.5,2.4.9,3.6a34.87,34.87,0,0,0,2,6h0Z" style="fill:#fdbf2d"></path>\n<path d="M15.40,12.70l-3.3,2.9-8.9.4,3.3-2.7" style="fill:#ce592b"></path>\n<path d="M9.10,21.10l1.4-6.2-5.9.5" style="fill:#cf572e;opacity:0.6;isolation:isolate"></path>\n<path d="M12.00,13.5a4.75,4.75,0,0,1-2.6,1.1c-1.5.3-2.9,0.2-2.9,0s1.1-.6,2.7-1" style="fill:#bb3d19"></path>\n<circle cx="7.92" cy="8.19" r="6.3" style="fill:#fdbf2d"></circle>\n<path d="M4.70,13.60a6.21,6.21,0,0,0,8.4-1.9v-0.1a8.89,8.89,0,0,1-8.4,2h0Z" style="fill:#ce592b;fill-opacity:0.25"></path>\n<path d="M21.20,27.20l0.6-.4a1.09,1.09,0,0,0,.4-1.3c-0.7-1.5-2.1-4.6-2.8-5.8-0.9-1.7-2.8-4.9-2.8-4.9a1.6,1.6,0,0,0-2.17-.65l-0.23.15a1.68,1.68,0,0,0-.4,2.1s2.3,3.9,3.1,5.3c0.6,1,2.1,3.7,2.9,5.1a0.94,0.94,0,0,0,1.24.49l0.16-.09h0Z" style="fill:#fdbf2d"></path>\n<path d="M19.40,19.80c-0.9-1.7-2.8-4.9-2.8-4.9a1.6,1.6,0,0,0-2.17-.65l-0.23.15-0.3.3c1.1,1.5,2.9,3.8,3.9,5.4,1.1,1.8,2.9,5,3.8,6.7l0.1-.1a1.09,1.09,0,0,0,.4-1.3,57.67,57.67,0,0,0-2.7-5.6h0Z" style="fill:#ce592b;fill-opacity:0.25"></path>\n</svg>\n');
            a.g.oe.setAttribute("aria-label", "Street View Pegman Control");
            a.g.active.setAttribute("aria-label", "Pegman is on top of the Map");
            a.g.je.setAttribute("aria-label", "Street View Pegman Control");
            b.setAttribute("controlWidth", c.width);
            b.setAttribute("controlHeight", c.height);
            _.N.trigger(b, "resize");
            GM(a, a.get("mode"))
        } else
            _.ly(b),
            _.N.trigger(b, "resize")
    }
    ;
    GM = function(a, b) {
        a.i && (a = a.g,
        a.oe.style.display = a.je.style.display = a.active.style.display = "none",
        1 == b ? a.oe.style.display = "" : 2 == b ? a.je.style.display = "" : a.active.style.display = "")
    }
    ;
    HM = function(a) {
        var b = a.get("mapSize");
        b = !!a.get("display") || !!(b && 200 <= b.width && b && 200 <= b.height);
        a.i != b && (a.i = b,
        FM(a))
    }
    ;
    JM = function(a) {
        a = {
            clickable: !1,
            crossOnDrag: !1,
            draggable: !0,
            map: a,
            mapOnly: !0,
            pegmanMarker: !0,
            zIndex: 1E6
        };
        this.R = _.lK.xc;
        this.ja = _.lK.$l;
        this.j = 0;
        this.F = this.o = -1;
        this.i = 0;
        this.l = this.C = null;
        this.h = _.Fe("mode");
        this.g = _.Ge("mode");
        var b = this.ga = new _.Pf(a);
        b.setDraggable(!0);
        var c = this.H = new _.Pf(a)
          , d = this.J = new _.Pf(a);
        this.g(1);
        this.set("heading", 0);
        b.bindTo("icon", this, "pegmanIcon");
        b.bindTo("position", this, "dragPosition");
        b.bindTo("dragging", this);
        var e = this;
        c.bindTo("icon", this, "lilypadIcon");
        _.N.addListener(this, "position_changed", function() {
            c.set("position", e.get("position"))
        });
        c.bindTo("dragging", this);
        d.set("cursor", _.ps);
        d.set("icon", IK(this.ja, 0));
        _.N.addListener(this, "dragposition_changed", function() {
            d.set("position", e.get("dragPosition"))
        });
        d.bindTo("dragging", this);
        _.N.addListener(this, "dragstart", this.Tk);
        _.N.addListener(this, "drag", this.Uk);
        _.N.addListener(this, "dragend", this.Sk);
        _.N.forward(b, "dragstart", this);
        _.N.forward(b, "drag", this);
        _.N.forward(b, "dragend", this)
    }
    ;
    MM = function(a) {
        var b = a.h()
          , c = _.JJ(b);
        a.ga.setVisible(c || 7 == b);
        a.set("pegmanIcon", c ? KM(a) : 7 == b ? LM(a) : void 0)
    }
    ;
    NM = function(a) {
        a.H.setVisible(!1);
        a.J.setVisible(_.JJ(a.h()))
    }
    ;
    KM = function(a) {
        var b = a.h() - 3;
        return IK(a.R, b)
    }
    ;
    LM = function(a) {
        var b = OM(a);
        a.F != b && (a.F = b,
        a.C = {
            url: _.wD(PM[b]),
            scaledSize: new _.J(49,52),
            anchor: new _.I(25,35)
        });
        return a.C
    }
    ;
    RM = function(a) {
        var b = OM(a);
        a.o != b && (a.o = b,
        a.l = {
            url: _.wD(QM[b]),
            scaledSize: new _.J(49,52),
            anchor: new _.I(25,35)
        });
        return a.l
    }
    ;
    OM = function(a) {
        (a = _.Jx(a.get("heading")) % 360) || (a = 0);
        0 > a && (a += 360);
        return Math.round(a / 360 * 16) % 16
    }
    ;
    TM = function(a, b, c, d, e, f, g, h, k) {
        this.g = a;
        this.J = f;
        this.C = e;
        this.o = g;
        this.R = h;
        this.ga = k || null;
        this.ja = d;
        this.l = this.i = !1;
        this.F = null;
        this.bf(1);
        SM(this, c, b);
        this.sa = new _.HJ;
        this.sa.bindTo("mapHeading", this);
        this.sa.bindTo("tilt", this);
        this.sa.bindTo("client", this);
        this.sa.bindTo("client", a, "svClient");
        this.h = this.H = null;
        this.j = _.zy(c, d)
    }
    ;
    UM = function(a, b) {
        return _.kd(b - (a || 0), 0, 360)
    }
    ;
    SM = function(a, b, c) {
        var d = a.g.__gm
          , e = new IM(b,a.R);
        e.bindTo("mode", a);
        e.bindTo("mapSize", a);
        e.bindTo("display", a);
        var f = new JM(a.g);
        f.bindTo("mode", a);
        f.bindTo("dragPosition", a);
        f.bindTo("position", a);
        var g = new _.Qy(["mapHeading", "streetviewHeading"],"heading",UM);
        g.bindTo("streetviewHeading", a, "heading");
        g.bindTo("mapHeading", a.g, "heading");
        f.bindTo("heading", g);
        a.bindTo("pegmanDragging", f, "dragging");
        d.bindTo("pegmanDragging", a);
        _.N.bind(e, "dragstart", a, function() {
            var h = this;
            this.j = _.zy(b, this.ja);
            _.P("streetview").then(function(k) {
                if (!h.H) {
                    var l = (0,
                    _.z)(h.C.getUrl, h.C)
                      , m = d.get("panes");
                    k = h.H = new k.bj(m.floatPane,l,h.J);
                    k.bindTo("description", h);
                    k.bindTo("mode", h);
                    k.bindTo("thumbnailPanoId", h, "panoId");
                    k.bindTo("pixelBounds", d);
                    l = new _.nE(function(q) {
                        q = new _.uo(h.g,h.o,q);
                        h.o.ta(q);
                        return q
                    }
                    );
                    l.bindTo("latLngPosition", f, "dragPosition");
                    k.bindTo("pixelPosition", l)
                }
            })
        });
        _.B(["dragstart", "drag", "dragend"], function(h) {
            _.N.addListener(e, h, function() {
                _.N.trigger(f, h, {
                    latLng: f.get("position"),
                    pixel: e.get("position")
                })
            })
        });
        _.N.addListener(e, "position_changed", function() {
            var h = e.get("position");
            (h = c({
                clientX: h.x + a.j.x,
                clientY: h.y + a.j.y
            })) && f.set("dragPosition", h)
        });
        _.N.addListener(f, "dragend", (0,
        _.z)(a.Ih, a, !1));
        _.N.addListener(f, "hover", (0,
        _.z)(a.Ih, a, !0))
    }
    ;
    VM = function(a) {
        var b = a.g.overlayMapTypes
          , c = a.sa;
        b.forEach(function(d, e) {
            d == c && b.removeAt(e)
        });
        a.i = !1
    }
    ;
    WM = function(a) {
        var b = a.get("projection");
        b && b.h && (a.g.overlayMapTypes.push(a.sa),
        a.i = !0)
    }
    ;
    XM = _.p("@media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}@media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}");
    YM = function(a, b, c) {
        this.l = a;
        this.o = c;
        this.h = _.Re(0);
        c = new tK(_.tm(b));
        this.C = _.mc(c.g, "span");
        c.appendChild(b, this.C);
        this.g = _.mc(c.g, "div");
        c.appendChild(b, this.g);
        EK(this.g, "position", "relative");
        EK(this.g, "display", "inline-block");
        this.g.style.height = _.Ey(8, !0);
        EK(this.g, "bottom", "-1px");
        b = _.mc(c.g, "div");
        c.appendChild(this.g, b);
        _.Fy(b, "100%", 4);
        EK(b, "position", "absolute");
        FK(b, 0, 0);
        b = _.mc(c.g, "div");
        c.appendChild(this.g, b);
        _.Fy(b, 4, 8);
        FK(b, 0, 0);
        EK(b, "backgroundColor", "#fff");
        b = _.mc(c.g, "div");
        c.appendChild(this.g, b);
        _.Fy(b, 4, 8);
        EK(b, "position", "absolute");
        EK(b, "backgroundColor", "#fff");
        EK(b, "right", "0px");
        EK(b, "bottom", "0px");
        b = _.mc(c.g, "div");
        c.appendChild(this.g, b);
        EK(b, "position", "absolute");
        EK(b, "backgroundColor", "#666");
        b.style.height = _.Ey(2, !0);
        EK(b, "left", "1px");
        EK(b, "bottom", "1px");
        EK(b, "right", "1px");
        b = _.mc(c.g, "div");
        c.appendChild(this.g, b);
        EK(b, "position", "absolute");
        _.Fy(b, 2, 6);
        FK(b, 1, 1);
        EK(b, "backgroundColor", "#666");
        b = _.mc(c.g, "div");
        c.appendChild(this.g, b);
        _.Fy(b, 2, 6);
        EK(b, "position", "absolute");
        EK(b, "backgroundColor", "#666");
        EK(b, "bottom", "1px");
        EK(b, "right", "1px");
        this.i = !0;
        this.j = 0;
        _.sg(a, "click", (0,
        _.z)(this.H, this));
        this.o.ra((0,
        _.z)(this.F, this))
    }
    ;
    ZM = function(a, b, c, d) {
        var e = a;
        1 > a && (e = c,
        b = d);
        for (a = 1; e >= 10 * a; )
            a *= 10;
        e >= 5 * a && (a *= 5);
        e >= 2 * a && (a *= 2);
        return {
            Kl: Math.round(80 * a / e),
            Jj: a + " " + b
        }
    }
    ;
    iN = function(a) {
        var b = this;
        this.Z = new _.bh(function() {
            b.i[1] && $M(b);
            b.i[0] && aN(b);
            if (b.i[2]) {
                if (b.Da) {
                    var e = b.Da;
                    EK(e.l, "display", "none");
                    e.h.set(0);
                    b.Da = null
                }
                b.C && (b.h.Rb(b.C),
                b.C = null);
                e = b.get("scaleControl");
                void 0 !== e && _.Ei(b.g, e ? "Csy" : "Csn");
                if (e) {
                    b.C = _.Sn("div");
                    b.h.addElement(b.C, 12, !0, -1001);
                    _.Un(b.C);
                    _.Vn(b.C);
                    e = b.C;
                    var f = _.AJ(b.C, b.H);
                    var g = _.Vp(b, "projection");
                    var h = _.Vp(b, "bottomRight")
                      , k = _.Vp(b, "zoom");
                    g = new _.Sp([g, h, k],SK);
                    b.Da = new YM(e,f,g);
                    _.N.trigger(b.C, "resize");
                    b.Jb && _.Tp(b.Jb, "scaleWidth", b.Da.h)
                }
            }
            b.i[3] && bN(b);
            b.i = {};
            b.get("disableDefaultUI") && !b.o && _.Ei(b.g, "Cdn")
        }
        ,0);
        this.h = a.Ah || null;
        this.Ek = a.Ld;
        this.Lb = a.Pk || null;
        this.j = a.controlSize;
        this.Xb = a.Bj || null;
        this.g = a.map || null;
        this.o = a.qm || null;
        this.Vk = a.rm || null;
        this.Dk = a.pm || null;
        this.yk = a.va || null;
        this.ih = this.Uc = this.gh = !1;
        this.l = this.mh = null;
        this.H = a.lh;
        this.gc = _.mE("Toggle fullscreen view");
        this.R = null;
        this.gk = a.qe;
        this.F = null;
        this.Hb = !1;
        this.Jb = this.C = this.Da = null;
        this.xb = [];
        this.ja = null;
        this.bk = {};
        this.i = {};
        this.ga = this.rb = this.qb = this.wb = null;
        this.Mb = _.Sn("div");
        this.J = null;
        this.Kb = !1;
        _.Vn(this.Mb);
        _.em(XM, this.H);
        var c = this.Nb = new EL(_.F(_.$c(_.H), 14));
        c.bindTo("center", this);
        c.bindTo("zoom", this);
        c.bindTo("mapTypeId", this);
        c.bindTo("pano", this);
        c.bindTo("position", this);
        c.bindTo("pov", this);
        c.bindTo("heading", this);
        c.bindTo("tilt", this);
        a.map && _.N.addListener(c, "url_changed", function() {
            a.map.set("mapUrl", c.get("url"))
        });
        var d = new GK(_.$c(_.H));
        d.bindTo("center", this);
        d.bindTo("zoom", this);
        d.bindTo("mapTypeId", this);
        d.bindTo("pano", this);
        d.bindTo("heading", this);
        this.Kk = d;
        cN(this);
        dN(this);
        bN(this);
        eN(this, a.Vg);
        a.ai && fN(this);
        _.oh[35] && gN(this);
        hN(this)
    }
    ;
    hN = function(a) {
        _.P("util").then(function(b) {
            b.g.g(function() {
                a.Kb = !0;
                jN(a);
                a.J && (a.J.set("display", !1),
                a.J.unbindAll(),
                a.J = null)
            })
        })
    }
    ;
    pN = function(a) {
        if (kN(a) != a.mh || lN(a) != a.gh || mN(a) != a.ih || nN(a) != a.Hb || oN(a) != a.Uc)
            a.i[1] = !0;
        a.i[0] = !0;
        _.ch(a.Z)
    }
    ;
    qN = function(a) {
        return a.get("disableDefaultUI")
    }
    ;
    nN = function(a) {
        var b = a.get("streetViewControl")
          , c = a.get("disableDefaultUI")
          , d = !!a.get("size");
        (void 0 !== b || c) && _.Ei(a.g, b ? "Cvy" : "Cvn");
        null == b && (b = !c);
        a = d && !a.o;
        return b && a
    }
    ;
    rN = function(a) {
        return !a.get("disableDefaultUI") && !!a.o
    }
    ;
    eN = function(a, b) {
        var c = a.h;
        _.B(b, function(d, e) {
            if (d) {
                var f = function(g) {
                    if (g) {
                        var h = g.index;
                        _.pd(h) || (h = 1E3);
                        h = Math.max(h, -999);
                        _.Tn(g, Math.min(999999, g.style.zIndex || 0));
                        c.addElement(g, e, !1, h)
                    }
                };
                d.forEach(f);
                _.N.addListener(d, "insert_at", function(g) {
                    f(d.getAt(g))
                });
                _.N.addListener(d, "remove_at", function(g, h) {
                    c.Rb(h)
                })
            }
        })
    }
    ;
    gN = function(a) {
        if (a.g) {
            var b = new RK(document.createElement("div"));
            b.bindTo("card", a.g.__gm);
            b = b.getDiv();
            a.h.addElement(b, 1, !0, .1)
        }
    }
    ;
    bN = function(a) {
        a.R && (a.R.unbindAll(),
        wL(a.R),
        a.R = null,
        a.h.Rb(a.gc));
        var b = _.mE("Toggle fullscreen view")
          , c = new BL(a.H,b,a.gk,a.j);
        c.bindTo("display", a, "fullscreenControl");
        c.bindTo("disableDefaultUI", a);
        c.bindTo("mapTypeId", a);
        var d = a.get("fullscreenControlOptions") || {};
        a.h.addElement(b, d && d.position || 7, !0, -1007);
        a.R = c;
        a.gc = b
    }
    ;
    dN = function(a) {
        var b = new CM(a.Ek,a.g || a.o);
        b.bindTo("size", a);
        b.bindTo("rmiWidth", a);
        b.bindTo("attributionText", a);
        b.bindTo("fontLoaded", a);
        b.bindTo("mapTypeId", a);
        b.bindTo("isCustomPanorama", a);
        var c = b.g.getDiv();
        a.h.addElement(c, 12, !0, -1E3);
        c = b.h.getDiv();
        a.h.addElement(c, 12, !0, -1005);
        c = b.i.getDiv();
        a.h.addElement(c, 12, !0, -1002);
        a.Jb = b
    }
    ;
    cN = function(a) {
        if (!_.oh[2]) {
            var b = !!_.oh[21];
            a.g ? b = IL(a.g, a.Nb, b) : (b = HL(a.o, a.Nb, b),
            GL(b, !0));
            b = b.getDiv();
            a.h.addElement(b, 10, !0, -1E3)
        }
    }
    ;
    fN = function(a) {
        var b = _.$c(_.H);
        if (!_.Ln()) {
            var c = document.createElement("div")
              , d = new _.DJ(c,a.g,_.F(b, 14));
            a.h.addElement(c, 12, !0, -1003);
            d.bindTo("available", a, "rmiAvailable");
            d.bindTo("bounds", a);
            _.oh[17] ? (d.bindTo("enabled", a, "reportErrorControl"),
            a.g.bindTo("rmiLinkData", d)) : d.set("enabled", !0);
            d.bindTo("mapSize", a, "size");
            d.bindTo("mapTypeId", a);
            d.bindTo("sessionState", a.Kk);
            a.bindTo("rmiWidth", d, "width");
            _.N.addListener(d, "rmilinkdata_changed", function() {
                var e = d.get("rmiLinkData");
                a.g.set("rmiUrl", e && e.url)
            })
        }
    }
    ;
    jN = function(a) {
        a.sb && (a.sb.unbindAll && a.sb.unbindAll(),
        a.sb = null);
        a.wb && (a.wb.unbindAll(),
        a.wb = null);
        a.qb && (a.qb.unbindAll(),
        a.qb = null);
        a.ja && (sN(a, a.ja),
        _.Th(a.ja.da),
        a.ja = null)
    }
    ;
    aN = function(a) {
        jN(a);
        if (a.Lb && !a.Kb) {
            var b = tN(a);
            if (b) {
                var c = _.Sn("div");
                _.sy(c);
                c.style.margin = _.Q(a.j >> 2);
                _.N.addDomListener(c, "mouseover", function() {
                    _.Tn(c, 1E6)
                });
                _.N.addDomListener(c, "mouseout", function() {
                    _.Tn(c, 0)
                });
                _.Tn(c, 0);
                var d = a.get("mapTypeControlOptions") || {}
                  , e = a.qb = new QK(a.Lb,d.mapTypeIds);
                e.bindTo("aerialAvailableAtZoom", a);
                e.bindTo("zoom", a);
                var f = e.j;
                a.h.addElement(c, d.position || 1, !1, .2);
                d = null;
                2 == b ? (d = new aM(c,f,a.j),
                e.bindTo("mapTypeId", d)) : d = new ZL(c,f,_.NL,a.j);
                b = a.wb = new cM(e.i);
                b.set("labels", !0);
                d.bindTo("mapTypeId", b, "internalMapTypeId");
                d.bindTo("labels", b);
                d.bindTo("terrain", b);
                d.bindTo("tilt", a, "desiredTilt");
                d.bindTo("fontLoaded", a);
                d.bindTo("mapSize", a, "size");
                d.bindTo("display", a, "mapTypeControl");
                b.bindTo("mapTypeId", a);
                _.N.trigger(c, "resize");
                a.ja = {
                    da: c,
                    ue: null
                };
                a.sb = d
            }
        }
    }
    ;
    tN = function(a) {
        if (!a.Lb)
            return null;
        var b = (a.get("mapTypeControlOptions") || {}).style || 0
          , c = a.get("mapTypeControl")
          , d = qN(a);
        if (void 0 === c && d || void 0 !== c && !c)
            return _.Ei(a.g, "Cmn"),
            null;
        1 == b ? _.Ei(a.g, "Cmh") : 2 == b && _.Ei(a.g, "Cmd");
        return 2 == b || 1 == b ? b : 1
    }
    ;
    uN = function(a, b) {
        b = a.F = new oM(b,a.j,_.Ft.g,a.H);
        b.bindTo("zoomRange", a);
        b.bindTo("display", a, "zoomControl");
        b.bindTo("disableDefaultUI", a);
        b.bindTo("mapSize", a, "size");
        b.bindTo("mapTypeId", a);
        b.bindTo("zoom", a);
        return b.getDiv()
    }
    ;
    vN = function(a) {
        var b = new _.aE(hL,{
            Hc: _.Ft.g
        })
          , c = new oL(b,a.j,a.H);
        c.bindTo("pov", a);
        c.bindTo("disableDefaultUI", a);
        c.bindTo("panControl", a);
        c.bindTo("mapSize", a, "size");
        return b.da
    }
    ;
    wN = function(a) {
        var b = _.Sn("div");
        _.sy(b);
        a.l = new iM(b,a.j,a.H);
        a.l.bindTo("mapSize", a, "size");
        a.l.bindTo("rotateControl", a);
        a.l.bindTo("heading", a);
        a.l.bindTo("tilt", a);
        a.l.bindTo("aerialAvailableAtZoom", a);
        return b
    }
    ;
    xN = function(a) {
        var b = _.Sn("div")
          , c = a.rb = new DM(b,a.j);
        c.bindTo("pano", a);
        c.bindTo("floors", a);
        c.bindTo("floorId", a);
        return b
    }
    ;
    yN = function(a) {
        a.i[1] = !0;
        _.ch(a.Z)
    }
    ;
    $M = function(a) {
        function b(m, q) {
            if (!l[m]) {
                var r = a.j >> 2
                  , v = 12 + (a.j >> 1)
                  , u = document.createElement("div");
                _.sy(u);
                _.lm(u, "gm-bundled-control");
                10 == m || 11 == m || 12 == m || 6 == m || 9 == m ? _.lm(u, "gm-bundled-control-on-bottom") : _.cx(u, "gm-bundled-control-on-bottom");
                u.style.margin = _.Q(r);
                _.Un(u);
                l[m] = new CL(u,m,v);
                a.h.addElement(u, m, !1, .1)
            }
            m = l[m];
            m.add(q);
            a.xb.push({
                da: q,
                ue: m
            })
        }
        function c(m) {
            return (a.get(m) || {}).position
        }
        a.F && (pM(a.F),
        a.F.unbindAll(),
        a.F = null);
        a.l && (a.l.unbindAll(),
        a.l = null);
        a.rb && (a.rb.unbindAll(),
        a.rb = null);
        for (var d = _.Ca(a.xb), e = d.next(); !e.done; e = d.next())
            sN(a, e.value);
        a.xb = [];
        d = a.gh = lN(a);
        var f = a.mh = kN(a)
          , g = a.Hb = nN(a)
          , h = a.ih = mN(a);
        a.Uc = oN(a);
        e = d && (c("panControlOptions") || 9);
        d = f && (c("zoomControlOptions") || 3 == f && 6 || 9);
        var k = 3 == f || _.Ln();
        g = g && (c("streetViewControlOptions") || 9);
        h = h && (c("rotateControlOptions") || k && 6 || 9);
        var l = a.bk;
        d && (f = uN(a, f),
        b(d, f));
        g && (zN(a),
        b(g, a.Mb));
        e && a.o && _.Rk.h && (f = vN(a),
        b(e, f));
        h && (e = wN(a),
        b(h, e));
        a.ga && (a.ga.remove(),
        a.ga = null);
        if (e = rN(a) && 9)
            f = xN(a),
            b(e, f);
        a.l && a.F && a.F.Td && h == d && a.l.bindTo("mouseover", a.F.Td);
        d = _.Ca(a.xb);
        for (e = d.next(); !e.done; e = d.next())
            _.N.trigger(e.value.da, "resize")
    }
    ;
    lN = function(a) {
        var b = a.get("panControl")
          , c = qN(a);
        if (void 0 !== b || c)
            return a.o || _.Ei(a.g, b ? "Cpy" : "Cpn"),
            !!b;
        b = a.get("size");
        return _.Ln() || !b ? !1 : 400 <= b.width && 370 <= b.height || !!a.o
    }
    ;
    oN = function(a) {
        return a.o ? !1 : qN(a) ? 1 == a.get("myLocationControl") : 0 != a.get("myLocationControl")
    }
    ;
    mN = function(a) {
        var b = a.get("rotateControl")
          , c = qN(a);
        (void 0 !== b || c) && _.Ei(a.g, b ? "Cry" : "Crn");
        return !a.get("size") || a.o ? !1 : c ? 1 == b : 0 != b
    }
    ;
    kN = function(a) {
        var b = a.get("zoomControl")
          , c = qN(a);
        return 0 == b || c && void 0 === b ? (a.o || _.Ei(a.g, "Czn"),
        null) : a.get("size") ? 1 : null
    }
    ;
    zN = function(a) {
        if (!a.J && !a.Kb && a.Xb && a.g) {
            var b = a.J = new TM(a.g,a.Xb,a.Mb,a.H,a.Vk,_.H,a.yk,a.j,a.Dk || void 0);
            b.bindTo("mapHeading", a, "heading");
            b.bindTo("tilt", a);
            b.bindTo("projection", a.g);
            b.bindTo("mapTypeId", a);
            a.bindTo("panoramaVisible", b);
            b.bindTo("mapSize", a, "size");
            b.bindTo("display", a, "streetViewControl");
            b.bindTo("disableDefaultUI", a);
            AN(a)
        }
    }
    ;
    AN = function(a) {
        var b = a.J;
        if (b) {
            var c = b.F
              , d = a.get("streetView");
            if (d != c) {
                if (c) {
                    var e = c.__gm;
                    e.unbind("result");
                    e.unbind("heading");
                    c.unbind("passiveLogo");
                    c.g.removeListener(a.fi, a);
                    c.g.set(!1)
                }
                d && (c = d.__gm,
                null != c.get("result") && b.set("result", c.get("result")),
                c.bindTo("result", b),
                null != c.get("heading") && b.set("heading", c.get("heading")),
                c.bindTo("heading", b),
                d.bindTo("passiveLogo", a),
                d.g.addListener(a.fi, a),
                a.set("panoramaVisible", d.get("visible")),
                b.bindTo("client", d));
                b.F = d
            }
        }
    }
    ;
    sN = function(a, b) {
        b.ue ? (b.ue.remove(b.da),
        delete b.ue) : a.h.Rb(b.da)
    }
    ;
    BN = function(a) {
        var b = this;
        this.h = a;
        this.Z = new _.bh(function() {
            return b.i()
        }
        ,0);
        _.N.ua(a, "resize", this, this.i);
        var c = this.g = {};
        _.B([1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 12, 13], function(d) {
            c[d] = []
        })
    }
    ;
    CN = function(a) {
        for (var b = 0, c = 0, d = a.length; c < d; ++c)
            b = Math.max(a[c].height, b);
        var e = d = 0;
        for (c = a.length; 0 < c; --c) {
            var f = a[c - 1];
            if (b == f.height) {
                f.width > e && f.width > f.height ? e = f.height : d = f.width;
                break
            } else
                e = Math.max(f.height, e)
        }
        return new _.J(d,e)
    }
    ;
    NN = function(a, b, c, d) {
        for (var e = 0, f = 0, g, h = [], k = 0, l = a.length; k < l; ++k) {
            var m = a[k].element;
            g = DN(m);
            var q = DN(m, !0)
              , r = MN(m)
              , v = MN(m, !0)
              , u = m.style;
            u[b] = _.Q("left" == b ? e : e + (g - q));
            u[c] = _.Q("top" == c ? 0 : r - v);
            g = e + g;
            r > f && (f = r,
            d.push({
                minWidth: e,
                height: f
            }));
            e = g;
            a[k].border || h.push(new _.J(e,r));
            uK(m)
        }
        return CN(h)
    }
    ;
    ON = function(a, b, c, d) {
        for (var e = 0, f = [], g = 0, h = a.length; g < h; ++g) {
            for (var k = a[g].element, l = DN(k), m = MN(k), q = DN(k, !0), r = MN(k, !0), v = 0, u = 0, w = d.length; u < w && d[u].minWidth <= l; ++u)
                v = d[u].height;
            e = Math.max(v, e);
            v = k.style;
            v[c] = _.Q("top" == c ? e : e + m - r);
            v[b] = _.Q("left" == b ? 0 : l - q);
            e += m;
            a[g].border || f.push(new _.J(l,e));
            uK(k)
        }
        return CN(f)
    }
    ;
    PN = function(a, b, c, d) {
        for (var e = 0, f = 0, g = 0, h = a.length; g < h; ++g) {
            var k = a[g].element
              , l = DN(k)
              , m = MN(k)
              , q = DN(k, !0);
            "left" == b ? k.style.left = 0 : "right" == b ? k.style.right = _.Q(l - q) : k.style.left = _.Q((c - q) / 2);
            e += m;
            a[g].border || (f = Math.max(l, f))
        }
        b = (d - e) / 2;
        g = 0;
        for (h = a.length; g < h; ++g)
            k = a[g].element,
            k.style.top = _.Q(b),
            b += MN(k),
            uK(k);
        return f
    }
    ;
    QN = function(a, b, c) {
        for (var d = 0, e = 0, f = 0, g = a.length; f < g; ++f) {
            var h = a[f].element
              , k = DN(h)
              , l = MN(h)
              , m = MN(h, !0);
            h.style[b] = _.Q("top" == b ? 0 : l - m);
            d += k;
            a[f].border || (e = Math.max(l, e))
        }
        b = (c - d) / 2;
        f = 0;
        for (g = a.length; f < g; ++f)
            h = a[f].element,
            h.style.left = _.Q(b),
            b += DN(h),
            uK(h);
        return e
    }
    ;
    DN = function(a, b) {
        if (!_.ny(a))
            return 0;
        b = !b && _.Jx(a.getAttribute("controlWidth"));
        if (!_.pd(b) || isNaN(b))
            b = a.offsetWidth;
        a = _.ty(a);
        b += _.Jx(a.marginLeft) || 0;
        return b += _.Jx(a.marginRight) || 0
    }
    ;
    MN = function(a, b) {
        if (!_.ny(a))
            return 0;
        b = !b && _.Jx(a.getAttribute("controlHeight"));
        if (!_.pd(b) || isNaN(b))
            b = a.offsetHeight;
        a = _.ty(a);
        b += _.Jx(a.marginTop) || 0;
        return b += _.Jx(a.marginBottom) || 0
    }
    ;
    RN = _.p(".dismissButton{background-color:#fff;border:1px solid #dadce0;color:#1a73e8;border-radius:4px;font-family:Roboto,sans-serif;font-size:14px;height:36px;cursor:pointer;padding:0 24px}.dismissButton:hover{background-color:rgba(66,133,244,0.04);border:1px solid #d2e3fc}.dismissButton:focus{background-color:rgba(66,133,244,0.12);border:1px solid #d2e3fc;outline:0}.dismissButton:hover:focus{background-color:rgba(66,133,244,0.16);border:1px solid #d2e2fd}.dismissButton:active{background-color:rgba(66,133,244,0.16);border:1px solid #d2e2fd;box-shadow:0 1px 2px 0 rgba(60,64,67,0.3),0 1px 3px 1px rgba(60,64,67,0.15)}.dismissButton:disabled{background-color:#fff;border:1px solid #f1f3f4;color:#3c4043}\n");
    _.SN = function(a, b) {
        var c = document.createElement("div")
          , d = c.style;
        d.backgroundColor = "white";
        d.fontWeight = "500";
        d.fontFamily = "Roboto, sans-serif";
        d.padding = "15px 25px";
        d.boxSizing = "border-box";
        d.top = "5px";
        d = document.createElement("div");
        var e = document.createElement("img");
        e.alt = "";
        e.src = _.so + "api-3/images/google_gray.svg";
        e.style.border = e.style.margin = e.style.padding = 0;
        e.style.height = "17px";
        e.style.verticalAlign = "middle";
        e.style.width = "52px";
        _.Un(e);
        d.appendChild(e);
        c.appendChild(d);
        d = document.createElement("div");
        d.style.lineHeight = "20px";
        d.style.margin = "15px 0";
        e = document.createElement("span");
        e.style.color = "rgba(0,0,0,0.87)";
        e.style.fontSize = "14px";
        e.innerText = "This page can't load Google Maps correctly.";
        d.appendChild(e);
        c.appendChild(d);
        d = document.createElement("table");
        d.style.width = "100%";
        e = document.createElement("tr");
        var f = document.createElement("td");
        f.style.lineHeight = "16px";
        f.style.verticalAlign = "middle";
        var g = document.createElement("a");
        mK(g, b);
        g.innerText = "Do you own this website?";
        g.target = "_blank";
        g.setAttribute("rel", "noopener");
        g.style.color = "rgba(0, 0, 0, 0.54)";
        g.style.fontSize = "12px";
        g.onclick = function() {
            _.Ei(a, "Dl")
        }
        ;
        f.appendChild(g);
        e.appendChild(f);
        _.np(RN);
        b = document.createElement("td");
        b.style.textAlign = "right";
        f = document.createElement("button");
        f.className = "dismissButton";
        f.innerText = _.ia;
        f.onclick = function() {
            a.removeChild(c);
            _.N.trigger(a, "dmd");
            _.Ei(a, "Dd")
        }
        ;
        b.appendChild(f);
        e.appendChild(b);
        d.appendChild(e);
        c.appendChild(d);
        a.appendChild(c);
        _.Ei(a, "D0");
        return c
    }
    ;
    TN = function(a) {
        this.F = a;
        this.g = 0;
        this.h = null;
        _.N.ua(a, "keydown", this, this.o);
        _.N.ua(a, "keypress", this, this.l);
        _.N.ua(a, "keyup", this, this.C);
        this.i = {}
    }
    ;
    UN = function(a) {
        var b = a.get("zoom");
        _.pd(b) && a.set("zoom", b + 1)
    }
    ;
    VN = function(a) {
        var b = a.get("zoom");
        _.pd(b) && a.set("zoom", b - 1)
    }
    ;
    WN = function(a, b, c) {
        _.N.trigger(a, "panbyfraction", b, c)
    }
    ;
    XN = function(a, b) {
        return !!(b.target != a.F || b.ctrlKey || b.altKey || b.metaKey || 0 == a.get("enabled") || a.get("streetViewDisable"))
    }
    ;
    YN = _.n();
    _.ub.prototype.g = _.Uk(7, _.p(1));
    _.Nb.prototype.g = _.Uk(6, _.pa("i"));
    _.Jw.prototype.g = _.Uk(5, _.p(1));
    tK.prototype.Ja = function(a) {
        return "string" === typeof a ? this.g.getElementById(a) : a
    }
    ;
    tK.prototype.appendChild = function(a, b) {
        a.appendChild(b)
    }
    ;
    tK.prototype.append = function(a, b) {
        _.Bl(_.tm(a), a, arguments, 1)
    }
    ;
    tK.prototype.contains = _.sm;
    var CK = {};
    _.A(GK, _.O);
    GK.prototype.changed = function(a) {
        if ("sessionState" != a) {
            a = new _.KI;
            var b = this.get("zoom")
              , c = this.get("center")
              , d = this.get("pano");
            if (null != b && null != c || null != d) {
                var e = this.g;
                (new _.UF(_.G(a, 1))).m[0] = _.Zc(e);
                (new _.UF(_.G(a, 1))).m[1] = _.F(e, 1);
                e = _.hJ(a);
                var f = this.get("mapTypeId");
                "hybrid" == f || "satellite" == f ? e.m[0] = 3 : (e.m[0] = 0,
                "terrain" == f && (f = new _.SF(_.G(a, 4)),
                _.Uc(f, 0, 4)));
                f = new _.EF(_.G(e, 1));
                f.m[0] = 2;
                if (c) {
                    var g = c.lng();
                    f.m[1] = g;
                    c = c.lat();
                    f.m[2] = c
                }
                "number" === typeof b && (f.m[5] = b);
                f.setHeading(this.get("heading") || 0);
                d && ((new _.jG(_.G(e, 2))).m[0] = d);
                this.set("sessionState", a)
            } else
                this.set("sessionState", null)
        }
    }
    ;
    var ZN = [37, 38, 39, 40]
      , $N = {
        38: [0, -1],
        40: [0, 1],
        37: [-1, 0],
        39: [1, 0]
    }
      , aO = [];
    _.A(JK, _.fg);
    JK.prototype.listen = function(a, b, c, d) {
        _.Pa(b) || (b && (aO[0] = b.toString()),
        b = aO);
        for (var e = 0; e < b.length; e++) {
            var f = _.sg(a, b[e], c || this.handleEvent, d || !1, this.h || this);
            if (!f)
                break;
            this.g[f.key] = f
        }
        return this
    }
    ;
    JK.prototype.ub = function() {
        JK.Fb.ub.call(this);
        MK(this)
    }
    ;
    JK.prototype.handleEvent = function() {
        throw Error("EventHandler.handleEvent not implemented");
    }
    ;
    _.A(NK, _.O);
    _.Vk(QK, _.O);
    _.A(RK, _.O);
    RK.prototype.card_changed = function() {
        var a = this.get("card");
        this.g && this.h.removeChild(this.g);
        if (a) {
            var b = this.g = _.Sn("div");
            b.style.backgroundColor = "white";
            b.appendChild(a);
            b.style.margin = _.Q(10);
            b.style.padding = _.Q(1);
            _.Dy(b, "0 1px 4px -1px rgba(0,0,0,0.3)");
            wK(b, _.Q(2));
            this.h.appendChild(b);
            this.g = b
        } else
            this.g = null
    }
    ;
    RK.prototype.getDiv = _.pa("h");
    var TK = {}
      , UK = null;
    _.A(ZK, _.Kg);
    ZK.prototype.g = function(a) {
        oK(this, a)
    }
    ;
    _.A($K, ZK);
    $K.prototype.stop = function(a) {
        VK(this);
        this.i = 0;
        a && (this.progress = 1);
        bL(this, this.progress);
        this.g("stop");
        this.g("end")
    }
    ;
    $K.prototype.ub = function() {
        0 == this.i || this.stop(!1);
        this.g("destroy");
        $K.Fb.ub.call(this)
    }
    ;
    $K.prototype.g = function(a) {
        oK(this, new cL(a,this))
    }
    ;
    _.A(cL, _.gg);
    _.A(hL, _.vD);
    hL.prototype.fill = function(a) {
        _.tD(this, 0, _.ZA(a))
    }
    ;
    var fL = "t-avKK8hDgg9Q";
    _.A(lL, _.C);
    lL.prototype.getHeading = function() {
        return _.Sc(this, 0)
    }
    ;
    lL.prototype.setHeading = function(a) {
        this.m[0] = a
    }
    ;
    _.Vk(oL, _.O);
    oL.prototype.changed = function() {
        function a(d) {
            return _.mz(_.Vy(_.wD(d)))
        }
        !this.i && this.g && (this.g.stop(),
        this.g = null);
        var b = this.get("pov");
        if (b) {
            var c = new lL;
            c.setHeading(_.kd(-b.heading, 0, 360));
            _.Kl(new _.lz(_.G(c, 2)), a('<svg xmlns="http://www.w3.org/2000/svg" width="100px" height="100px" viewBox="0 0 100 100" >\n  <circle fill="#222222" cx="50" cy="50" r="50"/>\n  <circle fill="#595959" cx="50" cy="50" r="22"/>\n</svg>\n'));
            _.Kl(new _.lz(_.G(c, 3)), a('<svg xmlns="http://www.w3.org/2000/svg" width="40px" height="100px" viewBox="0 0 40 100">\n  <polygon fill="#C1272D" points="10,50 20,18 30,50"/>\n  <polygon fill="#D1D1D1" points="30,50 20,82 10,50"/>\n</svg>\n'));
            _.Kl(new _.lz(_.G(c, 4)), a('<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="40px" height="100px" viewBox="0 0 40 100">\n  <image overflow="visible" opacity="0.75" width="65" height="109" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEEAAABtCAYAAAD+mQwIAAAACXBIWXMAAAsSAAALEgHS3X78AAAA\nGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAB4dJREFUeNrsnItu4zoMRPVK//97\n17Z0b4B4wXI5JPWwi11YgJG2SZPoaDikJNshPO1pT3va0572NKHFuz6otdbzeS3G+G9A6Oz4jwGJ\nP9B56zPb3TDiTZ33/K05gSyHES8GEJXPsiA07bmVIOJFAKSfRyEgGMtAxAsBRAVCdPhBMx6XgYg3\nAIiGIoKhAPp4CYiyECICEAEMDwRklpE8F/8fjCkQZVIFwRj595GcikAj34BffAOhpNZLleAZeQ2E\nBEECUBXF/O78e1BG1VAmVWABSAKEaECQFIBgUBDDaigLvSAIAJIAIgkq4p3lKqif/6taRhlVQ1mg\nggAUgI7zeQ1CJaMbAIjGPn9YDWWBCiwA+XMk9jwKh0oO/poKjPU3gBE1lAUqCMroZwYhC/4gGeH7\nOJR0WpXs0q2GslgFEQAoDAQNCdqx9un82clDMUPY2V41lEUqsAAUQRVRiPkz7g/heZ41JBBD3lAu\n9oLCDgohAQg7eL4pIKy1iHkIrDoMDhhZgPAif9MgpA+IaNQPDYx6t0GWThXEzoxAAbzI7wjCITxH\nDTORNIkKr26DnC2bLRVkAoCCyEJHTwi70KnKlCKBuG7uoBhiECZKWVHCF4OQAQQJTgUgkEl2hURZ\nYIjREQpf5JGHRCCp0QuhGmHRFRJlQShofkDD4ItByGwED5IZpFA4Pv9zgILr8vWE2OEFUlagEF4C\nhLOjmamDAjgEEJo3uEOidC6cRKNUzooSaFi8BE/goUABlI9KsjAZi7MhUToU0FMuF0ENXywksuAJ\nmXxpWjwVBkJSw23La976QDNGbo68RpBSJgdhqaErJIozNUZlzpCMKvElKOEFlKBB2IX5RwJq6AqJ\nckEoaMbI6wWuhMh+f3d8AxMwzRMunUpbKvAYowWBq+BFQPTAmDNGEAre5TMtJF6saNIg7KzzXgBi\nSGi+UAZ2pnpDoTA/+FIgBEEF0nQcDUBVQgIqokxkBs/skYKQJlKJFEs7M8ldmHQhY4wzFeRMikyG\nL1ggzo7xNcMqpEVpUSYrALp8oQz4wUidUJQpNYVwquA0wxfwgwyW8od8oXT6AYKTwcJqUYyShwM3\nxQLeayZVioooC/0ggUWVAo4XM8bA5goFAEjK7tbtnqCtJXhAZBYOHEJ2KCCBlet4FYSoFEvRqBlQ\nMZWYTK2lek8IdBdNZXD0PaGRjYoyCxD4TDE5j2jMcVRzLI6Oj9YLCaw78jQXWGbIYB+zp/PRWBNt\nEIKyv+DZfUL1QzKUcjbP6HtU6aoSNSVYK8qhIywieER5vQKviWBHG50CdHl2QBsyHpUk8LfgHN2o\nbAZNtRSuadqXj05lhYmR7oKTLgLQW4X2Km2JAq6EYJ2E2Rx/Q+8ThPdE36Hd4QnWlwxKRy0Qnue7\nO+tVQnOQ9X75Ch6l10in6/CfLUjDUL5BcGxeSpKUOlCNfcTZQwPiGVRXODTF1JoxonTniP9Mt9Ok\ncxMO8P8SgDoYJkNT6eY8pC98KAc9v0h7LQKiwYAm6V1U6Q0FS7oWBLquSDdbDkEdkmJQZkHZZjo7\nWGFwKJ2hO0mJzBf4uuIuvA8CUp3esCRFWmFwgC++gwOtKEmvlYAuBVFAh6MDiCV/BGIjoUD3Hs/n\n6ONuAPCYZD+Et3F8ptTNmRW02Kcd39jiahP2HTgsKTwOpy8Eb8qc8YTKwqGC+N/YlloylLApijgM\nRahFVe82XA+IqvjCJuwpShDO///1OTYjNKwCaokxtuC/MoWDkGRNt9fpIoqmhM0Iid7qsQ+C4QvB\noQQJBD9FB0H4JQCQVIDCAs0kl9UJSBGH4gcoFKoQDpsAYhv0hG+dHzpdxxESVnWIVGBB+OUMh2O2\nSDIhkJAIbAMDwdAAoDNY+e8bMUcJxuGYWHXPJr0TKM9p91XIDOXzmBmE+nmOn8e4KwBQ0TScGq9I\nkdUAwU/UpFe38BO1aFggAEtCwQOBq8AbEjvZUtvYfgHfaeJK2O4MBRMCS5VRmUkiJWRBBfwCDg5h\nV9Lk8lCYWWhFfpAYhMQ6S0NBut5hB75gFUvhynDwhEQN389UlwCga52kiz42wxS1+mDpGmNvSHA1\npCBf1WZd4XKAWaRUKC0JhRX7Dh4Q0vVMKeDLf3iW8FaKl4YDCgk+hzg3WKWRlkJBuy4SrSl41hW7\nQsENAYQEMkia98MghKNjVal7rjC72uxRQwz4Ym9uihIEtFi7bGF1GIJTDRxEEPyAhg4H1NgqlZYa\nrc2XS5TgUYN1D5Qa/rxwKwBzraOGeOn9Exxq0ACgq9coUDQX8W7MhnDTnTSQGqz7njTFD7gvWDtb\nSwxxGIJSPPERDaA+qAYEa4dbG/lb767DASBl8NdLoeBZ0vfsQt97nyVBDWgEKplrWDebsla0PSdo\nhDuVwAFYILw3ovOcASOmwpl7r83ehc86t9BzWl4wUq4E5o/X/8gN6BRvaMbreiBI6lgKYFoJHzXw\n97nzppTvMJgum3/q9qQ9EDTz+/k7cxogPGC8EJaHwCUQFBAWnODs+CUAlkNwwPB85t998+pOGO63\n+StvY74AyK03tH/a0572tKc97WlPQ+0/AQYALf6OfNkZY7AAAAAASUVORK5CYII=" transform="matrix(0.9846 0 0 0.9908 -11.6 -3.6)"/>\n  <polygon fill="#FFFFFF" points="20,18 10,50 20,82 30,50"/>\n  <polygon fill="#C1272D" points="10,50 20,18 30,50"/>\n  <polygon fill="#D1D1D1" points="30,50 20,82 10,50"/>\n</svg>\n'));
            _.Kl(new _.lz(_.G(c, 5)), a('<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="40px" height="100px" viewBox="0 0 40 100">\n  <image overflow="visible" opacity="0.75" width="65" height="109" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEEAAABtCAYAAAD+mQwIAAAACXBIWXMAAAsSAAALEgHS3X78AAAA\nGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAB4dJREFUeNrsnItu4zoMRPVK//97\n17Z0b4B4wXI5JPWwi11YgJG2SZPoaDikJNshPO1pT3va0572NKHFuz6otdbzeS3G+G9A6Oz4jwGJ\nP9B56zPb3TDiTZ33/K05gSyHES8GEJXPsiA07bmVIOJFAKSfRyEgGMtAxAsBRAVCdPhBMx6XgYg3\nAIiGIoKhAPp4CYiyECICEAEMDwRklpE8F/8fjCkQZVIFwRj595GcikAj34BffAOhpNZLleAZeQ2E\nBEECUBXF/O78e1BG1VAmVWABSAKEaECQFIBgUBDDaigLvSAIAJIAIgkq4p3lKqif/6taRhlVQ1mg\nggAUgI7zeQ1CJaMbAIjGPn9YDWWBCiwA+XMk9jwKh0oO/poKjPU3gBE1lAUqCMroZwYhC/4gGeH7\nOJR0WpXs0q2GslgFEQAoDAQNCdqx9un82clDMUPY2V41lEUqsAAUQRVRiPkz7g/heZ41JBBD3lAu\n9oLCDgohAQg7eL4pIKy1iHkIrDoMDhhZgPAif9MgpA+IaNQPDYx6t0GWThXEzoxAAbzI7wjCITxH\nDTORNIkKr26DnC2bLRVkAoCCyEJHTwi70KnKlCKBuG7uoBhiECZKWVHCF4OQAQQJTgUgkEl2hURZ\nYIjREQpf5JGHRCCp0QuhGmHRFRJlQShofkDD4ItByGwED5IZpFA4Pv9zgILr8vWE2OEFUlagEF4C\nhLOjmamDAjgEEJo3uEOidC6cRKNUzooSaFi8BE/goUABlI9KsjAZi7MhUToU0FMuF0ENXywksuAJ\nmXxpWjwVBkJSw23La976QDNGbo68RpBSJgdhqaErJIozNUZlzpCMKvElKOEFlKBB2IX5RwJq6AqJ\nckEoaMbI6wWuhMh+f3d8AxMwzRMunUpbKvAYowWBq+BFQPTAmDNGEAre5TMtJF6saNIg7KzzXgBi\nSGi+UAZ2pnpDoTA/+FIgBEEF0nQcDUBVQgIqokxkBs/skYKQJlKJFEs7M8ldmHQhY4wzFeRMikyG\nL1ggzo7xNcMqpEVpUSYrALp8oQz4wUidUJQpNYVwquA0wxfwgwyW8od8oXT6AYKTwcJqUYyShwM3\nxQLeayZVioooC/0ggUWVAo4XM8bA5goFAEjK7tbtnqCtJXhAZBYOHEJ2KCCBlet4FYSoFEvRqBlQ\nMZWYTK2lek8IdBdNZXD0PaGRjYoyCxD4TDE5j2jMcVRzLI6Oj9YLCaw78jQXWGbIYB+zp/PRWBNt\nEIKyv+DZfUL1QzKUcjbP6HtU6aoSNSVYK8qhIywieER5vQKviWBHG50CdHl2QBsyHpUk8LfgHN2o\nbAZNtRSuadqXj05lhYmR7oKTLgLQW4X2Km2JAq6EYJ2E2Rx/Q+8ThPdE36Hd4QnWlwxKRy0Qnue7\nO+tVQnOQ9X75Ch6l10in6/CfLUjDUL5BcGxeSpKUOlCNfcTZQwPiGVRXODTF1JoxonTniP9Mt9Ok\ncxMO8P8SgDoYJkNT6eY8pC98KAc9v0h7LQKiwYAm6V1U6Q0FS7oWBLquSDdbDkEdkmJQZkHZZjo7\nWGFwKJ2hO0mJzBf4uuIuvA8CUp3esCRFWmFwgC++gwOtKEmvlYAuBVFAh6MDiCV/BGIjoUD3Hs/n\n6ONuAPCYZD+Et3F8ptTNmRW02Kcd39jiahP2HTgsKTwOpy8Eb8qc8YTKwqGC+N/YlloylLApijgM\nRahFVe82XA+IqvjCJuwpShDO///1OTYjNKwCaokxtuC/MoWDkGRNt9fpIoqmhM0Iid7qsQ+C4QvB\noQQJBD9FB0H4JQCQVIDCAs0kl9UJSBGH4gcoFKoQDpsAYhv0hG+dHzpdxxESVnWIVGBB+OUMh2O2\nSDIhkJAIbAMDwdAAoDNY+e8bMUcJxuGYWHXPJr0TKM9p91XIDOXzmBmE+nmOn8e4KwBQ0TScGq9I\nkdUAwU/UpFe38BO1aFggAEtCwQOBq8AbEjvZUtvYfgHfaeJK2O4MBRMCS5VRmUkiJWRBBfwCDg5h\nV9Lk8lCYWWhFfpAYhMQ6S0NBut5hB75gFUvhynDwhEQN389UlwCga52kiz42wxS1+mDpGmNvSHA1\npCBf1WZd4XKAWaRUKC0JhRX7Dh4Q0vVMKeDLf3iW8FaKl4YDCgk+hzg3WKWRlkJBuy4SrSl41hW7\nQsENAYQEMkia98MghKNjVal7rjC72uxRQwz4Ym9uihIEtFi7bGF1GIJTDRxEEPyAhg4H1NgqlZYa\nrc2XS5TgUYN1D5Qa/rxwKwBzraOGeOn9Exxq0ACgq9coUDQX8W7MhnDTnTSQGqz7njTFD7gvWDtb\nSwxxGIJSPPERDaA+qAYEa4dbG/lb767DASBl8NdLoeBZ0vfsQt97nyVBDWgEKplrWDebsla0PSdo\nhDuVwAFYILw3ovOcASOmwpl7r83ehc86t9BzWl4wUq4E5o/X/8gN6BRvaMbreiBI6lgKYFoJHzXw\n97nzppTvMJgum3/q9qQ9EDTz+/k7cxogPGC8EJaHwCUQFBAWnODs+CUAlkNwwPB85t998+pOGO63\n+StvY74AyK03tH/a0572tKc97WlPQ+0/AQYALf6OfNkZY7AAAAAASUVORK5CYII=" transform="matrix(0.9846 0 0 0.9908 -11.6 -3.6)"/>\n  <polygon fill="#FFFFFF" points="20,18 10,50 20,82 30,50"/>\n  <polygon fill="#E53935" points="10,50 20,18 30,50"/>\n  <polygon fill="#D1D1D1" points="30,50 20,82 10,50"/>\n</svg>\n'));
            _.Kl(new _.lz(_.G(c, 6)), a('<svg xmlns="http://www.w3.org/2000/svg" width="30px" height="100px" viewBox="0 0 30 100">\n  <path fill="#666" d="M24.84,69.76L24,58l-4.28,2.34C18.61,57.09,18,53.62,18,50c0-6.17,1.75-11.93,4.78-16.82l-2.5-1.66C16.94,36.88,15,43.21,15,50c0,4.14,0.72,8.11,2.04,11.79L13,64l7.7,5.13L25,72L24.84,69.76z"/>\n</svg>\n'));
            _.Kl(new _.lz(_.G(c, 7)), a('<svg xmlns="http://www.w3.org/2000/svg" width="30px" height="100px" viewBox="0 0 30 100">\n  <path fill="#B1B1B1" d="M24.84,69.76L24,58l-4.28,2.34C18.61,57.09,18,53.62,18,50c0-6.17,1.75-11.93,4.78-16.82l-2.5-1.66C16.94,36.88,15,43.21,15,50c0,4.14,0.72,8.11,2.04,11.79L13,64l7.7,5.13L25,72L24.84,69.76z"/>\n</svg>\n'));
            _.Kl(new _.lz(_.G(c, 8)), a('<svg xmlns="http://www.w3.org/2000/svg" width="30px" height="100px" viewBox="0 0 30 100">\n  <path fill="#E4E4E4" d="M24.84,69.76L24,58l-4.28,2.34C18.61,57.09,18,53.62,18,50c0-6.17,1.75-11.93,4.78-16.82l-2.5-1.66C16.94,36.88,15,43.21,15,50c0,4.14,0.72,8.11,2.04,11.79L13,64l7.7,5.13L25,72L24.84,69.76z"/>\n</svg>\n'));
            _.bE(this.h, [c])
        }
    }
    ;
    oL.prototype.mapSize_changed = function() {
        pL(this)
    }
    ;
    oL.prototype.disableDefaultUI_changed = function() {
        pL(this)
    }
    ;
    oL.prototype.panControl_changed = function() {
        pL(this)
    }
    ;
    var xL = Object.freeze(["exitFullscreen", "webkitExitFullscreen", "mozCancelFullScreen", "msExitFullscreen"])
      , yL = Object.freeze(["fullscreenchange", "webkitfullscreenchange", "mozfullscreenchange", "MSFullscreenChange"])
      , tL = Object.freeze(["fullscreenEnabled", "webkitFullscreenEnabled", "mozFullScreenEnabled", "msFullscreenEnabled"])
      , zL = Object.freeze(["requestFullscreen", "webkitRequestFullscreen", "mozRequestFullScreen", "msRequestFullscreen"]);
    _.Vk(BL, _.O);
    var AL = [{
        Tj: -52,
        close: -78,
        top: -86,
        backgroundColor: "#fff"
    }, {
        Tj: 0,
        close: -26,
        top: -86,
        backgroundColor: "#222"
    }];
    CL.prototype.add = function(a) {
        this.g.appendChild(a);
        a.style.position = "absolute";
        a = {
            element: a
        };
        this.h.push(a);
        a.eg = _.N.addListener(a.element, "resize", (0,
        _.z)(this.i, this, a));
        this.i(a)
    }
    ;
    CL.prototype.remove = function(a) {
        this.g.removeChild(a);
        qK(this.h, (0,
        _.z)(function(b, c) {
            b.element == a && (this.h.splice(c, 1),
            b && (this.i(b),
            b.eg && (_.N.removeListener(b.eg),
            delete b.eg)))
        }, this))
    }
    ;
    CL.prototype.i = function(a) {
        a.width = _.Jx(a.element.getAttribute("controlWidth"));
        a.height = _.Jx(a.element.getAttribute("controlHeight"));
        a.width || (a.width = a.element.offsetWidth);
        a.height || (a.height = a.element.offsetHeight);
        var b = 0;
        _.B(this.h, function(h) {
            var k = h.element;
            _.ny(k) && "hidden" != k.style.visibility && (b = Math.max(b, h.width))
        });
        var c = 0
          , d = this.l
          , e = !1;
        this.j(function(h) {
            var k = h.element;
            _.ny(k) && "hidden" != k.style.visibility && (e ? c += d : e = !0,
            k = k.style,
            k.left = _.Q((b - h.width) / 2),
            k.top = _.Q(c),
            c += h.height)
        });
        a = this.g;
        var f = b
          , g = c;
        a.setAttribute("controlWidth", f);
        a.setAttribute("controlHeight", g);
        _.ky(this.g, f || g);
        _.N.trigger(this.g, "resize")
    }
    ;
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{filter:url(#Adobe_OpacityMaskFilter);} .st1{fill:#FFFFFF;} .st2{mask:url(#b);fill:#666666;}</style><title>My Location 4</title><g transform="translate(1 1)"><defs><filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22"><feColorMatrix values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0"/></filter></defs><mask maskUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22" id="b"><g class="st0"><path id="a" class="st1" d="M21 21H-1V-1h22v22z"/></g></mask><path class="st2" d="M10 17c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7zm8.9-8c-.5-4.2-3.7-7.4-7.9-7.9V-1H9v2.1C4.8 1.6 1.6 4.8 1.1 9H-1v2h2.1c.5 4.2 3.7 7.4 7.9 7.9V21h2v-2.1c4.2-.5 7.4-3.7 7.9-7.9H21V9h-2.1zM10 6c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/></g></svg>\n');
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{filter:url(#Adobe_OpacityMaskFilter);} .st1{fill:#FFFFFF;} .st2{mask:url(#b);fill:#333333;}</style><title>My Location 5</title><g transform="translate(1 1)"><defs><filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22"><feColorMatrix values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0"/></filter></defs><mask maskUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22" id="b"><g class="st0"><path id="a" class="st1" d="M21 21H-1V-1h22v22z"/></g></mask><path class="st2" d="M10 17c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7zm8.9-8c-.5-4.2-3.7-7.4-7.9-7.9V-1H9v2.1C4.8 1.6 1.6 4.8 1.1 9H-1v2h2.1c.5 4.2 3.7 7.4 7.9 7.9V21h2v-2.1c4.2-.5 7.4-3.7 7.9-7.9H21V9h-2.1zM10 6c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/></g></svg>\n');
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{filter:url(#Adobe_OpacityMaskFilter);} .st1{fill:#FFFFFF;} .st2{mask:url(#b);fill:#111111;}</style><title>My Location 6</title><g transform="translate(1 1)"><defs><filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22"><feColorMatrix values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0"/></filter></defs><mask maskUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22" id="b"><g class="st0"><path id="a" class="st1" d="M21 21H-1V-1h22v22z"/></g></mask><path class="st2" d="M10 17c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7zm8.9-8c-.5-4.2-3.7-7.4-7.9-7.9V-1H9v2.1C4.8 1.6 1.6 4.8 1.1 9H-1v2h2.1c.5 4.2 3.7 7.4 7.9 7.9V21h2v-2.1c4.2-.5 7.4-3.7 7.9-7.9H21V9h-2.1zM10 6c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/></g></svg>\n');
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{filter:url(#Adobe_OpacityMaskFilter);} .st1{fill:#FFFFFF;} .st2{mask:url(#b);fill:#B3B3B3;}</style><title>My Location 3</title><g transform="translate(1 1)"><defs><filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22"><feColorMatrix values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0"/></filter></defs><mask maskUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22" id="b"><g class="st0"><path id="a" class="st1" d="M21 10v11H-1V-1h22v11z"/></g></mask><path class="st2" d="M10 17c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7zm8.9-8c-.5-4.2-3.7-7.4-7.9-7.9V-1H9v2.1C4.8 1.6 1.6 4.8 1.1 9H-1v2h2.1c.5 4.2 3.7 7.4 7.9 7.9V21h2v-2.1c4.2-.5 7.4-3.7 7.9-7.9H21V9h-2.1zM10 6c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/></g></svg>\n');
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{fill:#E6E6E6;}</style><title>My Location 2</title><path class="st0" d="M10 3h2V0h-2v3zm9 9h3v-2h-3v2zM0 12h3v-2H0v2zm10 10h2v-3h-2v3z"/><path class="st0" d="M11 18c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7m0-16c-5 0-9 4-9 9s4 9 9 9 9-4 9-9-4-9-9-9"/><path class="st0" d="M11 7c2.2 0 4 1.8 4 4s-1.8 4-4 4-4-1.8-4-4 1.8-4 4-4"/></svg>\n');
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{filter:url(#Adobe_OpacityMaskFilter);} .st1{fill:#FFFFFF;} .st2{mask:url(#b);fill:#FFFFFF;}</style><title>My Location 1</title><g transform="translate(1 1)"><defs><filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22"><feColorMatrix values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0"/></filter></defs><mask maskUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22" id="b"><g class="st0"><path id="a" class="st1" d="M21 21H-1V-1h22v22z"/></g></mask><path class="st2" d="M10 17c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7zm8.9-8c-.5-4.2-3.7-7.4-7.9-7.9V-1H9v2.1C4.8 1.6 1.6 4.8 1.1 9H-1v2h2.1c.5 4.2 3.7 7.4 7.9 7.9V21h2v-2.1c4.2-.5 7.4-3.7 7.9-7.9H21V9h-2.1zM10 6c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/></g></svg>\n');
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{filter:url(#Adobe_OpacityMaskFilter);} .st1{fill:#FFFFFF;} .st2{mask:url(#b);fill:#4285F4;}</style><title>My Location Blue 1</title><g transform="translate(1 1)"><defs><filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22"><feColorMatrix values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0"/></filter></defs><mask maskUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22" id="b"><g class="st0"><path id="a" class="st1" d="M21 21H-1V-1h22v22z"/></g></mask><path class="st2" d="M10 17c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7zm8.9-8c-.5-4.2-3.7-7.4-7.9-7.9V-1H9v2.1C4.8 1.6 1.6 4.8 1.1 9H-1v2h2.1c.5 4.2 3.7 7.4 7.9 7.9V21h2v-2.1c4.2-.5 7.4-3.7 7.9-7.9H21V9h-2.1zM10 6c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/></g></svg>\n');
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{filter:url(#Adobe_OpacityMaskFilter);} .st1{fill:#FFFFFF;} .st2{mask:url(#b);fill:#3367D6;}</style><title>My Location Blue 2</title><g transform="translate(1 1)"><defs><filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22"><feColorMatrix values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0"/></filter></defs><mask maskUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22" id="b"><g class="st0"><path id="a" class="st1" d="M21 21H-1V-1h22v22z"/></g></mask><path class="st2" d="M10 17c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7zm8.9-8c-.5-4.2-3.7-7.4-7.9-7.9V-1H9v2.1C4.8 1.6 1.6 4.8 1.1 9H-1v2h2.1c.5 4.2 3.7 7.4 7.9 7.9V21h2v-2.1c4.2-.5 7.4-3.7 7.9-7.9H21V9h-2.1zM10 6c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/></g></svg>\n');
    _.wD('<svg id="Layer_1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 22"><style>.st0{filter:url(#Adobe_OpacityMaskFilter);} .st1{fill:#FFFFFF;} .st2{mask:url(#b);fill:#2A56C6;}</style><title>My Location Blue 3</title><g transform="translate(1 1)"><defs><filter id="Adobe_OpacityMaskFilter" filterUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22"><feColorMatrix values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0"/></filter></defs><mask maskUnits="userSpaceOnUse" x="-1" y="-1" width="22" height="22" id="b"><g class="st0"><path id="a" class="st1" d="M21 21H-1V-1h22v22z"/></g></mask><path class="st2" d="M10 17c-3.9 0-7-3.1-7-7s3.1-7 7-7 7 3.1 7 7-3.1 7-7 7zm8.9-8c-.5-4.2-3.7-7.4-7.9-7.9V-1H9v2.1C4.8 1.6 1.6 4.8 1.1 9H-1v2h2.1c.5 4.2 3.7 7.4 7.9 7.9V21h2v-2.1c4.2-.5 7.4-3.7 7.9-7.9H21V9h-2.1zM10 6c-2.2 0-4 1.8-4 4s1.8 4 4 4 4-1.8 4-4-1.8-4-4-4z"/></g></svg>\n');
    _.A(EL, _.O);
    EL.prototype.changed = function(a) {
        if ("url" != a)
            if (this.get("pano"))
                c = this.get("pov"),
                b = this.get("position"),
                c && b && (a = _.yJ(c, b, this.get("pano"), this.g),
                this.set("url", a));
            else {
                a = {};
                if (c = this.get("center"))
                    c = new _.L(c.lat(),c.lng()),
                    a.ll = c.toUrlValue();
                c = this.get("zoom");
                _.pd(c) && (a.z = c);
                c = this.get("mapTypeId");
                "terrain" == c ? b = "p" : "hybrid" == c ? b = "h" : b = _.tt[c];
                b && (a.t = b);
                if (c = this.get("pano")) {
                    a.z = 17;
                    a.layer = "c";
                    var b = this.get("position");
                    b && (a.cbll = b.toUrlValue());
                    a.panoid = c;
                    var c = this.get("pov");
                    c && (a.cbp = "12," + c.heading + ",," + Math.max(c.zoom - 3) + "," + -c.pitch)
                }
                a.hl = _.Zc(_.$c(_.H));
                a.gl = _.F(_.$c(_.H), 1);
                45 == this.get("tilt") && (a.deg = this.get("heading") || 0);
                a.mapclient = _.oh[35] ? "embed" : "apiv3";
                var d = [];
                _.hd(a, function(e, f) {
                    d.push(e + "=" + f)
                });
                this.set("url", this.g + "?" + d.join("&"))
            }
    }
    ;
    FL.prototype.getDiv = _.pa("i");
    FL.prototype.setUrl = function(a) {
        a ? (this.h.setAttribute("href", a),
        this.h.setAttribute("title", "Open this area in Google Maps (opens a new window)")) : (this.h.removeAttribute("title"),
        this.h.removeAttribute("href"))
    }
    ;
    _.Vk(JL, _.O);
    _.Vk(ML, _.O);
    ML.prototype.Ja = _.pa("g");
    _.A(QL, _.O);
    _.A(RL, _.O);
    _.A(SL, _.O);
    _.A(UL, _.O);
    UL.prototype.h = function() {
        var a = this.g;
        a.timeout && (window.clearTimeout(a.timeout),
        a.timeout = null)
    }
    ;
    UL.prototype.active_changed = function() {
        this.h();
        if (this.get("active"))
            VL(this);
        else {
            var a = this.g;
            a.listeners && (_.B(a.listeners, _.N.removeListener),
            a.listeners = null);
            _.ly(a)
        }
    }
    ;
    _.Vk(ZL, _.O);
    _.Vk(aM, _.O);
    aM.prototype.mapSize_changed = function() {
        bM(this)
    }
    ;
    aM.prototype.display_changed = function() {
        bM(this)
    }
    ;
    _.A(cM, _.O);
    cM.prototype.changed = function(a) {
        if (!this.g)
            if ("mapTypeId" == a) {
                a = this.get("mapTypeId");
                var b = this.h[a];
                b && b.mapTypeId && (a = b.mapTypeId);
                dM(this, "internalMapTypeId", a);
                b && b.Md && dM(this, b.Md, b.value)
            } else
                eM(this)
    }
    ;
    _.Vk(hM, _.O);
    hM.prototype.o = function() {
        var a = +this.get("heading") || 0;
        this.set("heading", (a + 270) % 360)
    }
    ;
    hM.prototype.F = function() {
        this.i = !this.i;
        this.set("tilt", this.i ? 45 : 0)
    }
    ;
    _.A(iM, _.O);
    var mM = {}
      , bO = mM[0] = {};
    bO.backgroundColor = "#fff";
    bO.bh = "#e6e6e6";
    var cO = mM[1] = {};
    cO.backgroundColor = "#222";
    cO.bh = "#1a1a1a";
    _.Vk(nM, _.O);
    _.A(oM, _.O);
    oM.prototype.getDiv = _.pa("g");
    _.A(qM, _.O);
    _.t = qM.prototype;
    _.t.hide_changed = function() {
        var a = !this.get("hide");
        _.ky(this.g, a);
        this.Pf();
        a && _.Cy()
    }
    ;
    _.t.Pf = function() {
        this.set("width", _.th(this.h).width)
    }
    ;
    _.t.mapTypeId_changed = function() {
        "streetview" == this.get("mapTypeId") && (_.BJ(this.g),
        this.i.style.color = "#fff")
    }
    ;
    _.t.fontLoaded_changed = qM.prototype.Pf;
    _.t.getDiv = _.pa("g");
    _.A(uM, _.O);
    _.t = uM.prototype;
    _.t.fontLoaded_changed = uM.prototype.size_changed = function() {
        tM(this)
    }
    ;
    _.t.attributionText_changed = function() {
        _.dy(this.l, vM(this));
        tM(this)
    }
    ;
    _.t.$f = function() {
        this.j = sM(this);
        tM(this)
    }
    ;
    _.t.rmiWidth_changed = uM.prototype.$f;
    _.t.tosWidth_changed = uM.prototype.$f;
    _.t.scaleWidth_changed = uM.prototype.$f;
    _.t.hide_changed = function() {
        var a = !this.get("hide");
        _.ky(this.g, a);
        a && _.Cy()
    }
    ;
    _.t.mapTypeId_changed = function() {
        "streetview" == this.get("mapTypeId") && _.BJ(this.o)
    }
    ;
    _.t.getDiv = _.pa("g");
    _.A(AM, _.O);
    AM.prototype.visible_changed = function() {
        this.get("visible") ? (_.Cy(),
        _.my(this.g)) : _.ly(this.g)
    }
    ;
    AM.prototype.attributionText_changed = function() {
        var a = this.get("attributionText") || "";
        _.jy(this.h, a);
        a || _.ly(this.g)
    }
    ;
    AM.prototype.size_changed = function() {
        zM(this)
    }
    ;
    _.A(BM, _.O);
    BM.prototype.attributionText_changed = function() {
        var a = this.get("attributionText") || "";
        _.On(this.h, a)
    }
    ;
    BM.prototype.hide_changed = function() {
        var a = !this.get("hide");
        _.ky(this.g, a);
        a && _.Cy()
    }
    ;
    BM.prototype.getDiv = _.pa("g");
    _.A(CM, _.O);
    _.A(DM, _.O);
    DM.prototype.floors_changed = function() {
        var a = this.get("floorId")
          , b = this.get("floors")
          , c = this.i;
        if (1 < _.gd(b)) {
            _.my(c);
            _.B(this.g, function(g) {
                _.An(g)
            });
            this.g = [];
            for (var d = b.length, e = d - 1; 0 <= e; --e) {
                var f = _.Sn("div", c);
                b[e].nf == a ? (f.style.color = "#aaa",
                f.style.fontWeight = "bold",
                f.style.backgroundColor = "#333") : (EM(this, f, b[e].Jl),
                f.style.color = "#999",
                f.style.fontWeight = "400",
                f.style.backgroundColor = "#222");
                f.style.padding = "5px";
                e == d - 1 ? xK(f, _.Q(_.FJ(this.h))) : 0 == e && yK(f, _.Q(_.FJ(this.h)));
                _.Nn(b[e].mj, f);
                f.setAttribute("title", b[e].description);
                this.g.push(f)
            }
            setTimeout(function() {
                _.N.trigger(c, "resize")
            })
        } else
            _.ly(c)
    }
    ;
    _.Vk(IM, _.O);
    IM.prototype.o = function() {
        1 == this.get("mode") && this.set("mode", 2)
    }
    ;
    IM.prototype.C = function() {
        2 == this.get("mode") && this.set("mode", 1)
    }
    ;
    var QM = '<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M35.16,40.25c-0.04,0-0.09-0.01-0.13-0.02c-1.06-0.28-4.04-1.01-5.03-1.01c-0.88,0-3.66,0.64-4.66,0.89\n    c-0.19,0.05-0.38-0.02-0.51-0.17c-0.12-0.15-0.15-0.35-0.07-0.53l4.78-10.24c0.08-0.17,0.25-0.29,0.45-0.29\n    c0.14,0,0.37,0.11,0.45,0.28l5.16,10.37c0.09,0.18,0.06,0.39-0.06,0.54C35.45,40.19,35.3,40.25,35.16,40.25z M30,38.22\n    c0.9,0,2.96,0.47,4.22,0.78l-4.21-8.46l-3.9,8.36C27.3,38.62,29.2,38.22,30,38.22z"/>\n  <path fill="#3F3F3F" d="M25.22,39.62c0,0,3.64-0.9,4.78-0.9c1.16,0,5.16,1.03,5.16,1.03L30,29.39L25.22,39.62z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M34.82,41.4c-0.21,0-0.39-0.13-0.47-0.32c-0.58-1.56-1.42-3.02-1.79-3.13c-0.42-0.13-2.39,0.7-4.22,1.77\n    c-0.21,0.12-0.48,0.08-0.63-0.11c-0.16-0.18-0.16-0.45-0.01-0.64L35.9,29c0.14-0.17,0.38-0.23,0.58-0.14\n    c0.2,0.09,0.33,0.3,0.3,0.52l-1.46,11.59c-0.03,0.23-0.21,0.41-0.44,0.43C34.85,41.39,34.83,41.4,34.82,41.4z M32.51,36.94\n    c0.13,0,0.24,0.01,0.34,0.04c0.62,0.19,1.24,1.13,1.7,2.05l1.02-8.07l-5.54,6.74C30.93,37.29,31.87,36.94,32.51,36.94z"/>\n  <path fill="#3F3F3F" d="M34.82,40.9c0,0-1.09-3.12-2.11-3.43c-1.02-0.31-4.62,1.82-4.62,1.82l8.2-9.97\n    C36.29,29.32,34.82,40.9,34.82,40.9z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.95,33.64,41.84,27.19,30.6,27.19z M30.48,55.03\n    c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M35.45,41.88c-0.04,0-0.08,0-0.12-0.01c-0.18-0.04-0.32-0.18-0.36-0.36c-0.12-0.44-0.52-1.68-1-2.16\n    c-0.31-0.31-2.4-0.5-4.56-0.42c-0.25,0.02-0.46-0.16-0.51-0.4c-0.05-0.24,0.08-0.48,0.3-0.57l13.95-5.63\n    c0.22-0.09,0.47-0.01,0.6,0.18s0.12,0.45-0.04,0.62l-7.88,8.59C35.73,41.82,35.59,41.88,35.45,41.88L35.45,41.88z M31.9,37.94\n    c1.16,0.07,2.34,0.26,2.77,0.69c0.44,0.44,0.78,1.19,1,1.77l5.81-6.33C41.48,34.07,31.9,37.94,31.9,37.94z"/>\n  <path fill="#3F3F3F" d="M35.45,41.38c0,0-0.38-1.63-1.13-2.39c-0.75-0.75-4.93-0.57-4.93-0.57l13.95-5.63L35.45,41.38L35.45,41.38z\n    "/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M34.92,42.6c-0.11,0-0.22-0.04-0.32-0.11c-0.15-0.12-0.21-0.31-0.17-0.49c0-0.01,0.17-0.84-0.01-1.83\n    c-0.08-0.43-1.23-1.06-2.26-1.39c-0.23-0.07-0.37-0.29-0.35-0.53c0.02-0.24,0.21-0.42,0.44-0.45l15.03-1.64\n    c0.24-0.03,0.47,0.13,0.54,0.37c0.06,0.24-0.06,0.49-0.28,0.59l-12.42,5.44C35.06,42.59,34.99,42.6,34.92,42.6L34.92,42.6z\n     M34.19,38.6c0.58,0.36,1.1,0.82,1.21,1.39c0.09,0.49,0.11,0.95,0.1,1.32l8.65-3.79L34.19,38.6L34.19,38.6z"/>\n  <path fill="#3F3F3F" d="M34.92,42.1c0,0,0.22-0.92-0.01-2.03c-0.22-1.04-2.6-1.78-2.6-1.78l15.03-1.64L34.92,42.1z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M33.69,43.9c-0.19,0-0.36-0.1-0.45-0.27c-0.1-0.19-0.06-0.42,0.08-0.57c0.01-0.01,0.76-0.81,1.19-1.75\n    c0.29-0.63-0.76-1.38-0.77-1.39c-0.19-0.13-0.26-0.38-0.18-0.59s0.3-0.34,0.53-0.32l14.81,1.91c0.25,0.03,0.44,0.24,0.44,0.5\n    c0,0.25-0.19,0.46-0.44,0.5l-15.16,1.99C33.73,43.89,33.71,43.9,33.69,43.9L33.69,43.9z M35.32,40.17c0.25,0.46,0.36,1,0.11,1.55\n    c-0.17,0.37-0.38,0.73-0.59,1.03l10.13-1.33L35.32,40.17z"/>\n  <path fill="#3F3F3F" d="M33.69,43.4c0,0,0.81-0.86,1.28-1.89c0.47-1.03-0.94-2.01-0.94-2.01l14.81,1.91L33.69,43.4L33.69,43.4z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M47.73,45.15l-15.9-0.08c-0.22,0-0.42-0.15-0.48-0.37s0.03-0.45,0.23-0.56c0.66-0.39,2.48-1.56,2.96-2.25\n    c0.57-0.8,0.71-2.24,0.71-2.26c0.01-0.16,0.1-0.3,0.24-0.38c0.14-0.08,0.3-0.09,0.45-0.03l11.98,4.97c0.22,0.09,0.35,0.33,0.3,0.56\n    C48.18,44.99,47.97,45.15,47.73,45.15z M33.51,44.09l11.68,0.06l-9.04-3.75c-0.11,0.59-0.34,1.45-0.79,2.08\n    C35,42.98,34.22,43.59,33.51,44.09L33.51,44.09z"/>\n  <path fill="#3F3F3F" d="M31.84,44.58c0,0,2.46-1.47,3.12-2.39c0.66-0.93,0.8-2.5,0.8-2.5l11.98,4.97\n    C47.74,44.66,31.84,44.58,31.84,44.58z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.95,33.64,41.84,27.19,30.6,27.19z M30.48,55.03\n    c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M45.08,48.74c-0.04,0-0.08,0-0.11-0.01l-14.45-3.4c-0.22-0.05-0.38-0.25-0.39-0.48\n    c0-0.23,0.15-0.43,0.37-0.49c0.86-0.24,3.23-0.97,3.87-1.51c0.63-0.53,1.11-1.63,1.25-2.01c0.05-0.15,0.18-0.27,0.33-0.31\n    c0.16-0.04,0.32-0.01,0.45,0.09l8.99,7.24c0.18,0.15,0.24,0.4,0.14,0.61C45.45,48.63,45.27,48.74,45.08,48.74L45.08,48.74z\n     M32.53,44.77l10.53,2.48l-6.76-5.44c-0.26,0.54-0.7,1.31-1.28,1.8C34.53,44.01,33.47,44.44,32.53,44.77z"/>\n  <path fill="#3F3F3F" d="M30.63,44.83c0,0,3.19-0.88,4.06-1.61c0.87-0.73,1.4-2.22,1.4-2.22l8.99,7.24L30.63,44.83z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M40.4,52.96c-0.09,0-0.18-0.02-0.26-0.07l-12.27-7.33c-0.19-0.12-0.29-0.35-0.22-0.56\n    c0.06-0.22,0.26-0.37,0.48-0.37c1.18,0.01,4.24-0.05,5.06-0.32c0.68-0.22,1.74-1.35,2.26-2.02c0.11-0.14,0.28-0.21,0.45-0.19\n    s0.32,0.13,0.4,0.29l4.55,9.86c0.09,0.2,0.04,0.43-0.12,0.58C40.64,52.92,40.52,52.96,40.4,52.96z M29.9,45.6l9.36,5.6l-3.54-7.68\n    c-0.55,0.61-1.42,1.47-2.21,1.73C32.83,45.48,31.2,45.57,29.9,45.6L29.9,45.6z"/>\n  <path fill="#3F3F3F" d="M28.13,45.13c0,0,4.14,0.01,5.22-0.35c1.08-0.35,2.5-2.18,2.5-2.18l4.55,9.86L28.13,45.13z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.95,33.64,41.84,27.19,30.6,27.19L30.6,27.19z M30.48,55.03\n    c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M31.05,54.8c-0.18,0-0.35-0.1-0.43-0.25l-5.83-10.24c-0.1-0.17-0.08-0.38,0.03-0.54\n    c0.12-0.16,0.31-0.23,0.51-0.19c1.16,0.25,4.37,0.89,5.26,0.89c0.98,0,3.52-0.73,4.42-1.01c0.18-0.05,0.39,0,0.52,0.14\n    s0.17,0.34,0.1,0.52l-4.11,10.37c-0.07,0.18-0.24,0.3-0.43,0.31L31.05,54.8L31.05,54.8z M26.2,44.77l4.76,8.37l3.34-8.44\n    c-1.1,0.31-2.84,0.76-3.73,0.76C29.77,45.46,27.55,45.04,26.2,44.77z"/>\n  <path fill="#3F3F3F" d="M25.22,44.06c0,0,4.29,0.9,5.43,0.9c1.16,0,4.5-1.03,4.5-1.03L31.04,54.3L25.22,44.06z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M20.55,52.96c-0.12,0-0.24-0.04-0.33-0.13c-0.16-0.15-0.21-0.38-0.12-0.58l4.55-9.86\n    c0.07-0.16,0.22-0.27,0.4-0.29c0.17-0.02,0.35,0.05,0.45,0.19c0.37,0.48,1.49,1.76,2.26,2.02c0.82,0.27,3.93,0.32,5.06,0.32\n    c0.22,0,0.42,0.15,0.48,0.37s-0.03,0.45-0.22,0.56l-12.27,7.33C20.73,52.94,20.64,52.96,20.55,52.96L20.55,52.96z M25.23,43.52\n    l-3.54,7.68l9.36-5.6c-1.3-0.04-2.93-0.12-3.6-0.35C26.65,45,25.77,44.13,25.23,43.52L25.23,43.52z"/>\n  <path fill="#3F3F3F" d="M32.81,45.13c0,0-4.14,0.01-5.22-0.35c-1.08-0.35-2.5-2.18-2.5-2.18l-4.55,9.86L32.81,45.13z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M15.86,48.74c-0.19,0-0.36-0.11-0.45-0.28c-0.1-0.21-0.05-0.46,0.14-0.61l9-7.24\n    c0.12-0.1,0.29-0.14,0.45-0.09c0.16,0.04,0.28,0.16,0.33,0.31c0,0.01,0.5,1.37,1.25,2.01c0.64,0.54,3.01,1.28,3.87,1.51\n    c0.22,0.06,0.37,0.26,0.37,0.49s-0.16,0.42-0.39,0.48l-14.45,3.4C15.93,48.73,15.9,48.74,15.86,48.74z M24.65,41.8l-6.76,5.44\n    l10.53-2.48c-0.94-0.33-2-0.75-2.49-1.16C25.35,43.11,24.91,42.34,24.65,41.8L24.65,41.8z"/>\n  <path fill="#3F3F3F" d="M30.31,44.83c0,0-3.19-0.88-4.06-1.61c-0.87-0.73-1.4-2.22-1.4-2.22l-8.99,7.24L30.31,44.83L30.31,44.83z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.95,33.64,41.84,27.19,30.6,27.19z M30.48,55.03\n    c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M13.21,45.15c-0.24,0-0.44-0.17-0.49-0.4c-0.05-0.23,0.08-0.47,0.3-0.56L25,39.22\n    c0.15-0.06,0.31-0.05,0.45,0.03s0.23,0.22,0.24,0.38c0,0.01,0.14,1.46,0.71,2.26c0.49,0.69,2.31,1.86,2.96,2.25\n    c0.19,0.12,0.29,0.34,0.23,0.56s-0.26,0.37-0.48,0.37C29.11,45.07,13.21,45.15,13.21,45.15z M24.79,40.39l-9.04,3.75l11.68-0.06\n    c-0.71-0.5-1.49-1.11-1.85-1.61C25.14,41.85,24.91,40.98,24.79,40.39z"/>\n  <path fill="#3F3F3F" d="M29.11,44.58c0,0-2.46-1.47-3.12-2.39c-0.66-0.93-0.8-2.5-0.8-2.5l-11.98,4.97L29.11,44.58L29.11,44.58z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.84,27.19,30.6,27.19z M30.48,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.03,30.48,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M27.25,43.9h-0.06l-15.16-1.99c-0.25-0.03-0.44-0.25-0.44-0.5s0.19-0.46,0.44-0.5L26.84,39\n    c0.21-0.03,0.45,0.1,0.53,0.32s0.01,0.46-0.18,0.59c-0.01,0.01-1.05,0.76-0.77,1.39c0.43,0.94,1.18,1.75,1.19,1.75\n    c0.14,0.15,0.18,0.38,0.08,0.57C27.61,43.79,27.44,43.9,27.25,43.9L27.25,43.9z M15.97,41.41l10.13,1.33\n    c-0.2-0.3-0.42-0.65-0.59-1.02c-0.25-0.55-0.14-1.09,0.11-1.55L15.97,41.41z"/>\n  <path fill="#3F3F3F" d="M27.25,43.4c0,0-0.81-0.86-1.28-1.89s0.94-2.01,0.94-2.01L12.1,41.41L27.25,43.4L27.25,43.4z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.2c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.95,33.65,41.84,27.2,30.6,27.2z M30.48,55.04c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.04,30.48,55.04z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.51" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M26.02,42.6c-0.07,0-0.14-0.01-0.2-0.04L13.4,37.12c-0.23-0.1-0.35-0.35-0.28-0.59\n    c0.06-0.24,0.3-0.4,0.54-0.37l15.03,1.64c0.24,0.03,0.42,0.21,0.44,0.45s-0.12,0.45-0.35,0.53c-1.03,0.33-2.18,0.96-2.26,1.39\n    c-0.19,1.01-0.02,1.82-0.01,1.83c0.04,0.18-0.03,0.37-0.17,0.49C26.25,42.57,26.13,42.6,26.02,42.6L26.02,42.6z M16.79,37.52\n    l8.65,3.79c-0.01-0.37,0.01-0.82,0.1-1.32c0.1-0.56,0.63-1.03,1.21-1.39L16.79,37.52L16.79,37.52z"/>\n  <path fill="#3F3F3F" d="M26.02,42.1c0,0-0.22-0.92,0.01-2.03c0.22-1.04,2.6-1.78,2.6-1.78L13.6,36.65L26.02,42.1L26.02,42.1z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.2c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.95,33.65,41.84,27.2,30.6,27.2z M30.48,55.04c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.04,30.48,55.04z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.51" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M25.49,41.88c-0.14,0-0.27-0.06-0.37-0.16l-7.88-8.59c-0.16-0.17-0.18-0.43-0.04-0.62\n    c0.13-0.19,0.38-0.26,0.6-0.18l13.95,5.63c0.22,0.09,0.35,0.33,0.3,0.57s-0.25,0.41-0.51,0.4c-2.16-0.08-4.25,0.11-4.56,0.42\n    c-0.49,0.49-0.89,1.73-1,2.16c-0.05,0.18-0.19,0.31-0.36,0.36C25.57,41.88,25.53,41.88,25.49,41.88z M19.47,34.08l5.81,6.33\n    c0.21-0.58,0.55-1.33,1-1.77c0.43-0.43,1.61-0.62,2.77-0.69C29.05,37.95,19.47,34.08,19.47,34.08z"/>\n  <path fill="#3F3F3F" d="M25.49,41.38c0,0,0.38-1.63,1.13-2.39c0.75-0.75,4.93-0.57,4.93-0.57L17.6,32.79L25.49,41.38z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.6,27.2c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.95,33.65,41.84,27.2,30.6,27.2z M30.48,55.04c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S41.23,55.04,30.48,55.04z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.48" cy="41.51" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M25.49,41.88c-0.21,0-0.4-0.13-0.47-0.33l-4.3-11.67c-0.08-0.21,0-0.45,0.18-0.58s0.44-0.12,0.61,0.03\n    l10.37,8.71c0.16,0.14,0.22,0.36,0.15,0.56c-0.08,0.2-0.26,0.31-0.49,0.32c-2.16-0.08-4.25,0.11-4.56,0.42\n    c-0.49,0.49-0.89,1.73-1,2.16c-0.05,0.21-0.24,0.36-0.46,0.37C25.51,41.88,25.5,41.88,25.49,41.88z M22.31,31.3l3.17,8.6\n    c0.2-0.46,0.47-0.94,0.79-1.27c0.58-0.58,2.47-0.71,3.89-0.73L22.31,31.3z"/>\n  <path fill="#3F3F3F" d="M25.49,41.38c0,0,0.38-1.63,1.13-2.39c0.75-0.75,4.93-0.57,4.93-0.57l-10.37-8.71L25.49,41.38L25.49,41.38z"/>\n</svg>\n'.split(";")
      , PM = '<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#333333" d="M34.25,23.78h-8.51c-0.42,0-0.8-0.26-0.94-0.66s-0.02-0.84,0.3-1.11l0.64-0.53\n    c-1.12-1.12-1.77-2.65-1.77-4.25c0-3.3,2.69-5.99,5.98-5.99c1.6,0,3.1,0.63,4.23,1.76s1.75,2.64,1.75,4.24\n    c0,1.45-0.53,2.84-1.49,3.94c-0.03,0.05-0.06,0.09-0.1,0.14l-0.13,0.13l-0.03,0.03L34.86,22c0.34,0.26,0.48,0.71,0.34,1.12\n    C35.06,23.51,34.68,23.78,34.25,23.78z M29.49,21.78h0.93c0.08-0.33,0.33-0.6,0.68-0.71c0.09-0.03,0.17-0.06,0.25-0.1l0.12-0.05\n    c0.25-0.11,0.45-0.21,0.64-0.34c0.01-0.01,0.08-0.05,0.09-0.06c0.16-0.11,0.31-0.24,0.45-0.37c0.01-0.01,0.09-0.08,0.1-0.09\n    l0.05-0.05c0.02-0.02,0.03-0.04,0.05-0.06c0.71-0.75,1.1-1.72,1.1-2.74c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.75-1.17-2.81-1.17\n    C27.79,13.21,26,15,26,17.2c0,1.3,0.64,2.52,1.71,3.27c0.05,0.03,0.09,0.07,0.13,0.11c0.3,0.19,0.64,0.35,1,0.46\n    C29.16,21.18,29.41,21.45,29.49,21.78z"/>\n  <path fill="#333333" d="M33.97,43.59h-3.04c-0.45,0-0.84-0.3-0.96-0.72c-0.12,0.42-0.51,0.72-0.96,0.72h-3\n    c-0.55,0-0.99-0.44-1-0.99l-0.13-9.18l-0.38,0.97c-0.3,0.71-1.04,1.08-1.79,0.89l-1.01-0.33c-0.74-0.27-1.13-1.03-0.94-1.78\n    c0-0.01,0-0.02,0.01-0.02c0.06-0.22,2.59-9.54,2.59-9.54c0.23-0.93,1.04-1.66,1.95-1.79c0.08-0.02,0.17-0.03,0.26-0.03h8.84\n    c0.06,0,0.15,0.01,0.22,0.02c0.96,0.11,1.8,0.83,2.04,1.79c2.15,8.31,2.42,9.38,2.46,9.53c0.2,0.78-0.14,1.5-0.83,1.75l-1.08,0.35\n    c-0.8,0.21-1.55-0.16-1.84-0.85l-0.28-0.73l-0.13,8.96C34.97,43.15,34.52,43.59,33.97,43.59z M31.87,41.59h1.12l0.19-13.22\n    c0.01-0.48,0.35-0.88,0.82-0.97c0.47-0.08,0.93,0.17,1.11,0.62l0.09,0.23l1.86,4.92h0.01c-0.48-1.88-2.34-9.09-2.34-9.09\n    c-0.04-0.16-0.21-0.29-0.33-0.29c-0.03,0-0.06,0-0.09-0.01h-8.6c-0.03,0-0.07,0.01-0.1,0.01c-0.09,0-0.26,0.13-0.31,0.32\n    c-1.6,5.91-2.22,8.19-2.47,9.08l2.06-5.18c0.18-0.44,0.64-0.7,1.11-0.61c0.47,0.09,0.81,0.49,0.82,0.97L27,41.59h1.08l0.48-6.92\n    c0.06-0.79,0.65-1.34,1.43-1.34c0.6,0,1.32,0.36,1.4,1.34L31.87,41.59z M22.7,33.66c0.01-0.01,0.01-0.02,0.01-0.04\n    C22.71,33.64,22.7,33.65,22.7,33.66z"/>\n  <path fill="#CE592C" d="M25.74,22.78l0.9-0.75h6.62l0.99,0.75"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.95" cy="22.37" rx="2.25" ry="0.3"/>\n  <path fill="#FDBF2D" d="M38.15,33.37c0-0.01-2.46-9.53-2.46-9.53c-0.15-0.6-0.72-1.05-1.31-1.05H25.6c-0.59,0-1.13,0.49-1.28,1.08\n    c0,0-2.59,9.54-2.59,9.55c-0.06,0.24,0.04,0.49,0.29,0.58l0.94,0.31c0.25,0.06,0.51-0.05,0.61-0.29l2.24-5.65l0.2,14.21h3\n    l0.55-7.85c0.02-0.21,0.13-0.41,0.44-0.41s0.38,0.2,0.39,0.41l0.54,7.85h3.04l0.2-14.21l2.12,5.61c0.1,0.23,0.36,0.35,0.61,0.29\n    l1.04-0.34C38.18,33.85,38.21,33.6,38.15,33.37z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M34.17,28.38l0.08-5.6h0.17l0.48,5.44l0.45,3.13 M25.81,28.38\n    l-0.08-5.59h-0.17c0,0-0.31,4.2-0.48,5.43c-0.17,1.24-0.45,3.13-0.45,3.13L25.81,28.38z"/>\n  <ellipse fill="#FDBF2D" cx="29.95" cy="17.23" rx="4.98" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M30.35,21.74c-1.18,0.11-2.31-0.06-3.3-0.44\n    c0.94,0.68,2.12,1.04,3.36,0.92c1.27-0.12,2.38-0.71,3.19-1.59C32.69,21.23,31.57,21.63,30.35,21.74z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M34.56,41.4c-0.21,0-0.39-0.13-0.47-0.32c-0.58-1.56-1.42-3.02-1.79-3.13c-0.41-0.13-2.39,0.7-4.22,1.77\n    c-0.21,0.12-0.48,0.08-0.63-0.11c-0.16-0.18-0.16-0.45-0.01-0.64l8.2-9.97c0.14-0.17,0.38-0.23,0.58-0.14\n    c0.2,0.09,0.33,0.3,0.3,0.52l-1.46,11.59c-0.03,0.23-0.21,0.41-0.44,0.43C34.59,41.39,34.57,41.4,34.56,41.4z M32.25,36.94\n    c0.13,0,0.24,0.01,0.34,0.04c0.62,0.19,1.23,1.13,1.7,2.05l1.02-8.07l-5.53,6.74C30.67,37.29,31.61,36.94,32.25,36.94z"/>\n  <path fill="#3F3F3F" d="M34.56,40.9c0,0-1.09-3.12-2.11-3.43s-4.62,1.82-4.62,1.82l8.2-9.97L34.56,40.9z"/>\n  <path fill="#333333" d="M33.37,43.7c-0.18,0-0.35-0.03-0.5-0.09c-0.22-0.06-1.1-0.23-1.82-0.37l-0.22-0.07\n    c-0.28-0.12-0.59-0.39-0.77-0.8c-0.34,0.29-0.41,0.31-0.51,0.36c-0.28,0.12-0.55,0.11-0.69,0.09l-0.29-0.06\n    c-0.38-0.09-2.08-0.44-2.08-0.44l-0.3-0.11c-0.31-0.18-0.65-0.58-0.7-1.17c-0.01-0.12-0.19-3.18-0.42-6.75\n    c-0.14,0.27-0.36,0.54-0.7,0.72c-0.42,0.22-0.91,0.24-1.45,0.06c-1.69-0.54-1.41-1.97-1.3-2.51c0.02-0.09,0.04-0.18,0.05-0.27\n    c0.02-0.12,0.46-2.45,0.68-3.37c0.14-0.58,0.68-3.38,0.89-4.48c0.03-0.36,0.23-1.64,1.31-2.31c0.35-0.22,0.78-0.47,1.15-0.68\n    c-1.08-1.1-1.72-2.6-1.71-4.22c0-1.6,0.62-3.11,1.75-4.24c1.12-1.13,2.62-1.75,4.21-1.75h0.01c1.59,0,3.09,0.63,4.21,1.76\n    s1.74,2.64,1.74,4.24c0,1.43-0.5,2.77-1.37,3.82l0.47,0.01c0.33,0.01,0.65,0.15,0.88,0.39s0.35,0.56,0.34,0.89l-0.02,0.46\n    c0.28,0.37,0.48,0.82,0.55,1.27c0.01,0.01,0.49,2.04,0.89,4.51c0.3,1.87,0.67,4.54,0.75,5.23c0.13,0.8-0.27,1.48-0.98,1.67\n    c-0.28,0.11-0.97,0.31-1.5,0.23c-0.04-0.01-0.08-0.01-0.13-0.02l-0.17,5.13c0.03,0.22,0.01,0.45-0.01,0.65\n    c-0.05,0.52-0.42,1.1-1.09,1.72l-0.13,0.29l-0.45,0.12C33.74,43.67,33.54,43.7,33.37,43.7z M28.51,42.73l0.05,0.02L28.51,42.73z\n     M31.9,41.37c0.71,0.13,1.11,0.22,1.36,0.28c0.16-0.16,0.29-0.31,0.35-0.41l0.3-9.24l1.97-0.19l0.44,1.92\n    c0.01,0,0.03-0.01,0.04-0.01c-0.11-0.83-0.39-2.88-0.7-4.81c-0.39-2.39-0.87-4.42-0.87-4.44c-0.04-0.24-0.15-0.44-0.27-0.55\n    l-0.35-0.31l0.02-0.57l-2.71-0.08l-0.29-1.95c1.62-0.54,2.71-2.07,2.71-3.79c0-1.07-0.41-2.07-1.16-2.83\n    c-0.75-0.75-1.74-1.17-2.79-1.17c-1.06,0-2.05,0.41-2.79,1.16C26.41,15.13,26,16.14,26,17.21c0,1.65,0.98,3.11,2.5,3.72l-0.4,1.93\n    l-0.81-0.02c-0.38,0.21-1.12,0.64-1.68,0.98c-0.25,0.15-0.36,0.61-0.37,0.8l-0.02,0.12c-0.03,0.16-0.73,3.88-0.92,4.64\n    c-0.16,0.65-0.45,2.15-0.58,2.86c0.27-0.72,0.71-1.94,1.1-3.21l1.95,0.23c0.28,4.41,0.6,9.68,0.69,11.21\n    c0.73,0.15,1.15,0.24,1.4,0.3c0.09-0.07,0.18-0.16,0.27-0.23l0.11-4.79l1.99-0.1C31.7,39.55,31.85,40.88,31.9,41.37L31.9,41.37z\n     M36.83,33.58c-0.02,0.01-0.04,0.01-0.06,0.02C36.79,33.6,36.81,33.59,36.83,33.58z"/>\n  <path fill="#FABD2C" d="M22.66,32.44c-0.12,0.73-0.42,1.35,0.57,1.67c0.97,0.31,1.03-0.53,1.15-0.79c0,0,0.79-2.02,1.44-4.14\n    c0,0,0.9-3.69,0.98-4.14c0.26-1.66-0.41-2.27-1.17-2.21c-0.56,0.04-1.2,0.38-1.38,1.75c0,0-0.72,3.85-0.91,4.58\n    C23.11,30.06,22.66,32.44,22.66,32.44z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M25.67,29.87l-0.2-7.11l-0.41,0.31c0,0,0.06,5.4-0.11,6.64\n    s-0.45,3.13-0.45,3.13L25.67,29.87z"/>\n  <path fill="none" d="M27.03,22.08h8.2v20.56h-8.2C27.03,42.64,27.03,22.08,27.03,22.08z"/>\n  <path fill="#E58A2C" d="M35.23,22.08l-6.16,0.37l-2.04,0.32l0.51,18.03l1.43,1.03l0.19-0.02L30.1,41l0.19-8.22l0.24-0.77\n    l1.25,10.05l1.87,0.57c0,0,0.9-0.77,0.95-1.24c0.04-0.44,0-0.47,0-0.47L35.23,22.08"/>\n  <path fill="none" d="M25.39,22.74h8.31V42.7h-8.31V22.74z"/>\n  <path fill="#FABD2C" d="M25.39,22.74l1.1,18.22c0.02,0.27,0.2,0.37,0.2,0.37s2.11,0.44,2.2,0.48h0.28c0,0-0.13-0.04-0.14-0.23\n    c-0.02-0.19,0.27-7.59,0.27-7.59c0.02-0.37,0.12-0.52,0.36-0.53c0.24,0.01,0.35,0.11,0.4,0.76c0,0,0.85,7.05,0.87,7.48\n    s0.31,0.57,0.31,0.57s1.86,0.34,1.99,0.41c0.03,0.02,0.08,0.02,0.13,0.02c0.14,0,0.32-0.05,0.32-0.05s0.03-0.04,0.02-0.32\n    c-0.1-3.46,0.46-4.14-0.04-19.32L25.39,22.74"/>\n  <path fill="none" d="M25.42,21.84h9.81v1.19h-9.81C25.42,23.03,25.42,21.84,25.42,21.84z"/>\n  <path fill="#CE592C" d="M27.03,21.84l-1.61,0.9l8.25,0.29l1.56-0.95L27.03,21.84"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.92" cy="22.37" rx="2.25" ry="0.3"/>\n  <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.93,21.74c-1.19,0-2.3-0.27-3.24-0.75\n    c0.87,0.77,2.01,1.24,3.26,1.24c1.28,0,2.44-0.49,3.32-1.28C32.31,21.45,31.16,21.74,29.93,21.74z"/>\n  <path fill="#FABD2C" d="M33.99,26.06c0.1,1.59,0.92,5.97,0.92,5.97l0.54,2.33c0.08,0.24,0.27,0.33,0.62,0.38\n    c0.35,0.05,1.09-0.21,1.09-0.21c0.23-0.06,0.29-0.3,0.25-0.55c0,0-0.35-2.72-0.75-5.23c-0.4-2.46-0.89-4.51-0.89-4.51\n    c-0.1-0.61-0.59-1.29-1.17-1.34c0,0-0.69,0-0.71,1.06C33.86,25.08,33.99,26.06,33.99,26.06z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M34.41,22.95c-0.2,0.08-0.5,0.32-0.52,1.01\n    c-0.03,1.12,0.1,2.1,0.1,2.1c0.09,1.36,0.7,4.73,0.87,5.7l0.01,0.05C34.88,31.81,34.3,26.32,34.41,22.95z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.68,33.64,41.57,27.19,30.33,27.19z M30.21,55.03\n    c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M35.19,41.88c-0.04,0-0.08,0-0.12-0.01c-0.18-0.04-0.32-0.18-0.36-0.36c-0.12-0.44-0.52-1.68-1-2.16\n    c-0.31-0.31-2.39-0.5-4.56-0.42c-0.22,0.02-0.46-0.16-0.51-0.4c-0.05-0.24,0.08-0.48,0.3-0.57l13.95-5.63\n    c0.22-0.09,0.47-0.01,0.6,0.18s0.12,0.45-0.04,0.62l-7.88,8.59C35.47,41.82,35.33,41.88,35.19,41.88L35.19,41.88z M31.64,37.94\n    c1.16,0.07,2.34,0.26,2.77,0.69c0.44,0.44,0.78,1.19,1,1.77l5.81-6.33L31.64,37.94z"/>\n  <path fill="#3F3F3F" d="M35.19,41.38c0,0-0.38-1.63-1.13-2.39c-0.75-0.75-4.93-0.57-4.93-0.57l13.95-5.63L35.19,41.38L35.19,41.38z\n    "/>\n  <path fill="#333333" d="M32.56,44.49c-0.09,0-0.17-0.01-0.26-0.03c-0.21-0.02-0.37-0.08-0.48-0.14c-0.12-0.06-1.39-0.8-1.6-0.93\n    c-0.39-0.2-0.81-0.67-0.84-1.41c0-0.03-0.01-0.08-0.02-0.16c-0.12,0.04-0.25,0.09-0.37,0.14c-0.11,0.09-0.25,0.16-0.4,0.18\n    c-0.04,0.01-0.14,0.02-0.26,0.03c-0.09,0.01-0.19,0.01-0.28-0.01c-0.11-0.01-0.21-0.04-0.31-0.08s-0.18-0.07-1.57-1.03\n    c-0.24-0.13-0.59-0.54-0.63-1.13c-0.01-0.12-0.2-3.22-0.42-6.77c-0.2-0.32-0.25-0.65-0.28-0.83c-0.04-0.17-0.47-2.07-0.78-4.08\n    c-0.06-0.64-0.34-3.56-0.34-3.99c-0.02-1.62,0.64-2.32,1.14-2.61c0.14-0.12,0.32-0.19,0.5-0.21l0.28-0.08\n    c-1.06-1.11-1.65-2.58-1.65-4.11c0-1.6,0.62-3.11,1.74-4.24c1.12-1.13,2.62-1.76,4.22-1.76h0.01c1.59,0,3.09,0.62,4.21,1.75\n    c1.13,1.13,1.75,2.64,1.75,4.24c0,1.59-0.64,3.12-1.78,4.25l0.9,0.19c0.44,0.09,0.77,0.47,0.8,0.92c0.01,0.14-0.01,0.28-0.06,0.41\n    l-0.06,0.99c0.16,0.45,0.21,0.98,0.14,1.59c0,0-0.07,3.73-0.07,4.47c0.01,0.92,0.11,3.37,0.11,3.37l0.01,0.13\n    c0.02,0.41,0.08,1.51-0.88,2.08l-0.36,6.17c0,0.22-0.04,0.79-0.41,1.3c-0.25,0.34-0.87,0.97-0.99,1.1\n    C33.08,44.39,32.82,44.49,32.56,44.49L32.56,44.49z M31.36,41.75c0.23,0.13,0.63,0.37,0.95,0.55c0.15-0.16,0.28-0.31,0.33-0.38\n    c0.01-0.02,0.03-0.08,0.03-0.11l0.4-6.94c0.03-0.46,0.36-0.84,0.81-0.92c0.01,0,0.02,0,0.04-0.01c0-0.08,0-0.19-0.01-0.27\n    l-0.01-0.16c0,0-0.1-2.5-0.11-3.44c-0.01-0.76,0.07-4.6,0.07-4.6c0.05-0.53-0.01-0.76-0.06-0.88c-0.07-0.15-0.11-0.32-0.1-0.49\n    l0.04-0.65l-2.43-0.5c-0.44-0.09-0.77-0.47-0.8-0.92c-0.03-0.45,0.25-0.86,0.68-1.01l0.11-0.04c0.04-0.01,0.08-0.03,0.12-0.04\n    c0.06-0.02,0.11-0.05,0.17-0.08l0.11-0.06c0.13-0.06,0.26-0.13,0.37-0.2c0.06-0.04,0.13-0.09,0.19-0.14\n    c0.07-0.05,0.12-0.09,0.16-0.12c0.02-0.03,0.05-0.05,0.08-0.07c0.9-0.77,1.41-1.87,1.41-3.03c0-1.07-0.41-2.07-1.16-2.83\n    c-0.75-0.75-1.74-1.16-2.79-1.16c-1.06,0-2.05,0.42-2.8,1.17C26.41,15.18,26,16.18,26,17.25c0,1.15,0.49,2.21,1.37,2.99\n    c0.03,0.02,0.05,0.05,0.08,0.07l0.12,0.09c0,0,0.08,0.06,0.09,0.07c0.06,0.05,0.11,0.09,0.17,0.13c0.11,0.07,0.22,0.12,0.33,0.18\n    l0.14,0.08c0.35,0.2,0.58,0.61,0.53,1.01c-0.02,0.16-0.07,0.31-0.15,0.45c0.13,0.17,0.21,0.39,0.21,0.62c0,0.3-0.14,0.59-0.37,0.78\n    s-0.54,0.27-0.83,0.21l-1.31-0.27c-0.14-0.03-0.27-0.09-0.38-0.17c-0.02-0.01-0.04-0.03-0.05-0.04c-0.02-0.02-0.04-0.03-0.06-0.05\n    c0,0-0.01,0-0.02,0.01c-0.02,0.03-0.15,0.27-0.14,0.85c0,0.24,0.17,2.1,0.33,3.77c0.29,1.87,0.72,3.76,0.73,3.78\n    s0.02,0.11,0.04,0.2c0,0.03,0.01,0.06,0.01,0.09c0.16,0.17,0.26,0.39,0.27,0.63c0.2,3.16,0.37,6.03,0.42,6.86\n    c0.22,0.15,0.53,0.36,0.77,0.52c0.04-0.02,0.09-0.03,0.14-0.05l0.28-3.18c0.04-0.51,0.46-0.9,0.97-0.91\n    c0.56-0.02,0.95,0.36,1.02,0.86C31.19,40.33,31.33,41.39,31.36,41.75L31.36,41.75z M27.24,39.36c0.01,0.01,0.04,0.03,0.1,0.07\n    C27.3,39.41,27.27,39.38,27.24,39.36z"/>\n  <path fill="#E58A2C" d="M34.79,22.64l-4.46-0.83c0,0-2.42,0.35-2.43,0.35l-0.46,17.98l0.78,1.03c0,0,1.02-0.38,1.1-0.41\n    s0.07-0.18,0.07-0.18l0.66-7.54l1.46,9.74l1.04,0.7c0,0,0.68-0.69,0.89-0.98c0.24-0.33,0.22-0.73,0.22-0.73L34.79,22.64\n    L34.79,22.64z"/>\n  <path fill="#FABD2C" d="M34.9,33.46c0.02,0.57,0.16,1.3-0.85,1.48c-0.74,0.13-0.75-0.11-1.02-1.13c0,0-0.47-2.5-0.61-4.71\n    c0,0-0.18-3.31-0.14-3.76c0.12-1.66,0.91-2.11,1.64-1.87c0.53,0.17,1.08,0.65,0.94,2.01c0,0-0.08,3.82-0.07,4.58\n    C34.8,30.98,34.9,33.46,34.9,33.46L34.9,33.46z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M34.9,33.46c0.04,1.16-0.68,1.07-0.93,0.87\n    c-0.63-0.5-0.71-5.21-0.82-6.64c-0.07-0.97,0.09-3.4,0.4-4.17c0.55-0.21,1.04,0.42,1.09,0.51c0.19,0.31,0.29,0.77,0.22,1.45\n    c0,0-0.08,3.82-0.07,4.58C34.8,30.98,34.9,33.46,34.9,33.46L34.9,33.46z"/>\n  <path fill="#E58A2C" d="M27.47,31.45c0.01,0.67,0.2,1.27-0.73,1.43c-0.91,0.15-0.86-0.61-0.93-0.87c0,0-0.45-1.92-0.75-3.91\n    c0,0-0.33-3.44-0.33-3.85c-0.02-1.52,0.66-1.99,1.35-1.84c0.5,0.11,1.03,0.5,1.01,1.75c0,0,0.15,3.56,0.21,4.24\n    C27.38,29.24,27.47,31.45,27.47,31.45z"/>\n  <path fill="#FABD2C" d="M31.67,23.71l-6.17-1.29c0,0-0.05,0.01-0.04,0.09c0.13,1.5,1.07,17.08,1.09,17.34\n    c0.02,0.27,0.19,0.37,0.19,0.37s1.3,0.89,1.39,0.93s0.27,0,0.27,0s-0.13-0.04-0.14-0.23c-0.02-0.19,0.3-7.46,0.3-7.46\n    c0.01-0.37,0.11-0.52,0.36-0.53c0.24,0,0.29,0.15,0.31,0.53c0,0,1.14,8.05,1.15,8.48s0.31,0.56,0.31,0.56s1.47,0.86,1.59,0.92\n    s0.3,0.01,0.3,0.01s-0.22-0.01-0.22-0.3C32.36,42.94,31.67,23.71,31.67,23.71L31.67,23.71z"/>\n  <path fill="#FABD2C" d="M31.67,23.71l-6.17-1.29c0,0-0.05,0.01-0.04,0.09c0.13,1.5,1.07,17.08,1.09,17.34\n    c0.02,0.27,0.19,0.37,0.19,0.37s1.3,0.89,1.39,0.93s0.27,0,0.27,0s-0.13-0.04-0.14-0.23c-0.02-0.19,0.3-7.46,0.3-7.46\n    c0.01-0.37,0.11-0.52,0.36-0.53c0.24,0,0.29,0.15,0.31,0.53c0,0,1.14,8.05,1.15,8.48s0.31,0.56,0.31,0.56s1.47,0.86,1.59,0.92\n    s0.3,0.01,0.3,0.01s-0.22-0.01-0.22-0.3C32.36,42.94,31.67,23.71,31.67,23.71L31.67,23.71z"/>\n  <path fill="#CE592C" d="M25.54,22.42l6.13,1.29l3.16-1.07l-5.88-1.2"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="30" cy="22.41" rx="2.25" ry="0.43"/>\n  <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.98,21.74c1.19,0,2.3-0.27,3.24-0.75\n    c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.6,21.45,28.75,21.74,29.98,21.74z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M34.67,42.6c-0.11,0-0.22-0.04-0.32-0.11c-0.15-0.12-0.21-0.31-0.17-0.49c0-0.01,0.17-0.84-0.01-1.83\n    c-0.08-0.43-1.23-1.06-2.26-1.39c-0.23-0.07-0.37-0.29-0.35-0.53s0.21-0.42,0.44-0.45l15.03-1.64c0.25-0.03,0.47,0.13,0.54,0.37\n    c0.06,0.24-0.06,0.49-0.28,0.59l-12.42,5.44C34.8,42.59,34.73,42.6,34.67,42.6L34.67,42.6z M33.94,38.6\n    c0.58,0.36,1.1,0.82,1.21,1.39c0.09,0.49,0.11,0.95,0.1,1.32l8.65-3.79L33.94,38.6L33.94,38.6z"/>\n  <path fill="#3F3F3F" d="M34.66,42.1c0,0,0.22-0.92-0.01-2.03c-0.22-1.04-2.6-1.78-2.6-1.78l15.03-1.64\n    C47.08,36.65,34.66,42.1,34.66,42.1z"/>\n  <path fill="#333333" d="M30.91,44.46c-0.27,0-0.53-0.09-0.73-0.26c-0.04-0.03-0.12-0.1-0.95-0.95c-0.19-0.18-0.48-0.57-0.5-1.26\n    c0-0.03,0-0.1-0.01-0.25c-0.05,0.01-0.08,0.02-0.08,0.02c-0.48,0.12-0.79-0.01-0.98-0.13c-0.11-0.07-0.16-0.1-1.07-1.09\n    c-0.06-0.05-0.36-0.38-0.38-1.01c-0.01-0.18-0.22-4.03-0.44-8.03c-0.21-0.74-0.57-2.07-0.78-3.42c-0.06-0.64-0.34-3.56-0.34-3.99\n    c-0.01-1.1,0.27-1.91,0.85-2.41c0.09-0.08,0.19-0.15,0.29-0.2C24.65,20.35,24,18.82,24,17.23c0-1.6,0.62-3.11,1.74-4.24\n    c1.12-1.13,2.62-1.76,4.22-1.76h0.01c1.59,0,3.09,0.62,4.21,1.75c1.13,1.13,1.75,2.64,1.75,4.24c0,1.64-0.68,3.21-1.88,4.35\n    c0,0,0,0.01-0.01,0.01l0.33,0.09c0.46,0.13,0.76,0.56,0.73,1.04l-0.31,4.05c-0.1,2.32-0.12,3.1-0.12,3.34\n    c0.01,0.92,0.11,3.37,0.11,3.37l0.01,0.2c0.03,0.4,0.12,1.47-0.7,2.06l-0.51,6.67c0,0.4-0.26,1.09-0.99,1.46\n    c-0.49,0.25-0.98,0.42-1.2,0.49C31.22,44.43,31.07,44.46,30.91,44.46L30.91,44.46z M30.72,41.93c0.1,0.1,0.25,0.26,0.4,0.41\n    c0.14-0.05,0.29-0.12,0.45-0.2l0.55-7.13c0.03-0.4,0.3-0.74,0.67-0.87c0-0.09-0.01-0.21-0.02-0.29c-0.01-0.1-0.02-0.2-0.02-0.29\n    c0,0-0.1-2.5-0.11-3.44c0-0.38,0.04-1.52,0.12-3.48l0.25-3.26l-1.72-0.48c-0.42-0.12-0.72-0.5-0.73-0.93\n    c-0.01-0.44,0.26-0.83,0.67-0.98l0.19-0.06c0.05-0.02,0.11-0.05,0.17-0.08l0.11-0.06c0.13-0.06,0.26-0.13,0.37-0.2\n    c0.06-0.04,0.13-0.09,0.2-0.15c0.07-0.05,0.11-0.09,0.15-0.11c0.02-0.03,0.05-0.05,0.08-0.07c0.9-0.77,1.41-1.87,1.41-3.03\n    c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.74-1.16-2.79-1.16c-1.06,0-2.05,0.42-2.8,1.17C26.41,15.17,26,16.17,26,17.24\n    c0,1.15,0.49,2.21,1.37,2.99c0.03,0.02,0.05,0.05,0.08,0.07l0.22,0.16c0.05,0.04,0.11,0.09,0.16,0.12\n    c0.11,0.07,0.22,0.12,0.33,0.18l0.18,0.09c0.05,0.02,0.09,0.05,0.14,0.07l0.14,0.07c0.39,0.16,0.61,0.54,0.58,0.96\n    c-0.02,0.43-0.35,0.77-0.76,0.89l-1.23,0.36c-0.14,0.04-0.28,0.05-0.43,0.03c0,0.03-0.13,0.24-0.12,0.84c0,0.24,0.17,2.1,0.33,3.77\n    c0.19,1.25,0.55,2.55,0.74,3.21c0.02,0.07,0.04,0.15,0.04,0.23c0.33,6.01,0.42,7.66,0.44,8.06c0.07,0.08,0.16,0.17,0.25,0.27\n    l0.07-0.82c0.05-0.52,0.48-0.91,1-0.91h0.01c0.52,0,0.95,0.41,0.99,0.93C30.68,41.19,30.72,41.76,30.72,41.93L30.72,41.93z\n     M27.99,39.13l0.1,0.1L27.99,39.13z"/>\n  <path fill="#E58A2C" d="M28.59,31.34c0.06,0.52,0.36,1.3-0.56,1.51c-0.92,0.21-1.03-0.7-1.1-0.95c0,0-0.65-1.97-0.95-3.96\n    c0,0-0.33-3.44-0.33-3.85c-0.02-1.52,0.66-1.99,1.35-1.84c0.5,0.11,1.03,0.5,1.01,1.75c0,0,0.15,3.56,0.21,4.24\n    C28.3,29.09,28.59,31.34,28.59,31.34z"/>\n  <path fill="#E58A2C" d="M34.08,22.64l-4.31-1.2c0,0-3.41,1.02-3.43,1.02l0.98,17.31l1.04,1.03c0,0,0.81-0.22,0.91-0.26\n    c0.1-0.03,0.1-0.18,0.1-0.18l0.15-1.68l0.7,4.1l0.72,0.66c0,0,0.6-0.18,1.16-0.47c0.45-0.23,0.45-0.65,0.45-0.65L34.08,22.64\n    L34.08,22.64z"/>\n  <path fill="#FABD2C" d="M30.19,23.71l-3.89-1.29c0,0-0.03,0.01-0.03,0.09c0.08,1.5,0.91,16.72,0.92,16.99s0.12,0.37,0.12,0.37\n    s0.82,0.89,0.88,0.93s0.17,0,0.17,0s-0.08-0.04-0.09-0.23s0.38-7.48,0.38-7.48c0.01-0.37,0.07-0.52,0.23-0.53\n    c0.15,0,0.19,0.15,0.19,0.53c0,0,0.63,8.45,0.64,8.88c0.01,0.43,0.2,0.56,0.2,0.56s0.82,0.83,0.89,0.89\n    c0.08,0.06,0.19,0.01,0.19,0.01s-0.14-0.01-0.14-0.3C30.87,42.94,30.19,23.71,30.19,23.71z"/>\n  <path fill="#FABD2C" d="M30.19,23.71l-3.89-1.29c0,0-0.03,0.01-0.03,0.09c0.08,1.5,0.91,16.72,0.92,16.99s0.12,0.37,0.12,0.37\n    s0.82,0.89,0.88,0.93s0.17,0,0.17,0s-0.08-0.04-0.09-0.23s0.38-7.48,0.38-7.48c0.01-0.37,0.07-0.52,0.23-0.53\n    c0.15,0,0.19,0.15,0.19,0.53c0,0,0.63,8.45,0.64,8.88c0.01,0.43,0.2,0.56,0.2,0.56s0.82,0.83,0.89,0.89\n    c0.08,0.06,0.19,0.01,0.19,0.01s-0.14-0.01-0.14-0.3C30.87,42.94,30.19,23.71,30.19,23.71z"/>\n  <path fill="#CE592C" d="M26.3,22.42l3.89,1.29l3.89-1.07l-4.37-1.2"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.93" cy="22.4" rx="2.13" ry="0.52"/>\n  <path fill="#FABD2C" d="M33.76,33.53c0.02,0.57,0.27,1.45-0.76,1.59c-1.02,0.14-1.05-0.86-1.11-1.14c0,0-0.52-2.21-0.66-4.41\n    c0,0-0.03-3.78,0.01-4.23c0.12-1.66,0.91-2.11,1.64-1.87c0.53,0.17,1.08,0.65,0.94,2.01c0,0-0.18,3.89-0.18,4.64\n    C33.65,31.05,33.76,33.53,33.76,33.53z"/>\n  <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.98,21.74c1.19,0,2.3-0.27,3.24-0.75\n    c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.6,21.45,28.75,21.74,29.98,21.74z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M33.74,33.53c0.04,1.16-0.54,0.95-0.82,0.81\n    c-0.99-0.52-1.09-5.12-1.2-6.56c-0.07-0.97-0.16-3.58,0.78-4.26c0.55-0.21,1.04,0.42,1.09,0.51c0.19,0.31,0.29,0.77,0.22,1.45\n    c0,0-0.18,3.89-0.18,4.64C33.63,31.05,33.74,33.53,33.74,33.53z"/>\n</svg>\n;<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M33.43,43.9c-0.19,0-0.36-0.1-0.45-0.27c-0.1-0.19-0.06-0.42,0.08-0.57c0.01-0.01,0.76-0.81,1.19-1.75\n    c0.29-0.63-0.76-1.38-0.77-1.39c-0.19-0.13-0.26-0.38-0.18-0.59c0.08-0.21,0.3-0.34,0.53-0.32l14.81,1.91\n    c0.25,0.03,0.44,0.24,0.44,0.5c0,0.25-0.19,0.46-0.44,0.5l-15.16,1.99C33.47,43.89,33.45,43.9,33.43,43.9L33.43,43.9z M35.06,40.17\n    c0.25,0.46,0.36,1,0.11,1.55c-0.17,0.37-0.38,0.73-0.59,1.03l10.13-1.33C44.71,41.42,35.06,40.17,35.06,40.17z"/>\n  <path fill="#3F3F3F" d="M33.43,43.4c0,0,0.81-0.86,1.28-1.89c0.47-1.03-0.94-2.01-0.94-2.01l14.81,1.91L33.43,43.4L33.43,43.4z"/>\n  <path fill="#333333" d="M30.22,43.83c-0.55,0-1.15-0.05-1.58-0.22c-0.39-0.15-1.17-0.46-1.21-1.2l-1.97-19.66\n    c-0.03-0.33,0.1-0.66,0.36-0.88L26,21.73c-0.01-0.01-0.03-0.02-0.04-0.03c-0.05-0.05-0.1-0.1-0.14-0.16\n    c-1.16-1.13-1.83-2.68-1.83-4.29c0-1.6,0.62-3.11,1.74-4.24c1.12-1.13,2.62-1.76,4.22-1.76h0.01c1.59,0,3.09,0.62,4.21,1.75\n    s1.75,2.64,1.75,4.24c0,1.55-0.61,3.04-1.69,4.16c0.05,0.14,0.07,0.28,0.06,0.42c-0.1,1.48-1.1,20.03-1.11,20.22\n    c-0.01,0.18-0.07,0.36-0.17,0.51c-0.59,0.87-0.73,0.96-0.87,1.05c-0.16,0.1-0.39,0.21-0.72,0.18\n    C31.12,43.79,30.68,43.83,30.22,43.83L30.22,43.83z M29.42,42.22v0.02c0,0.04,0.01,0.08,0,0.12\n    C29.43,42.31,29.42,42.26,29.42,42.22L29.42,42.22z M29.37,41.74c0.24,0.09,0.98,0.11,1.71,0.04c0.04-0.05,0.07-0.1,0.11-0.15\n    c0.12-2.19,0.83-15.48,1.05-19.13c-0.39-0.09-0.69-0.42-0.75-0.81c-0.06-0.41,0.13-0.81,0.48-1.02l0.12-0.08\n    c0.06-0.04,0.12-0.09,0.19-0.14c0.07-0.05,0.12-0.09,0.15-0.12c0.02-0.03,0.05-0.05,0.08-0.07c0.9-0.77,1.41-1.87,1.41-3.03\n    c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.74-1.16-2.79-1.16c-1.06,0-2.05,0.42-2.8,1.17c-0.75,0.76-1.16,1.76-1.16,2.83\n    c0,1.15,0.49,2.21,1.36,2.99c0.03,0.02,0.05,0.05,0.07,0.07l0.21,0.16c0.06,0.04,0.11,0.09,0.17,0.13\n    c0.09,0.06,0.19,0.11,0.29,0.16c0.41,0.21,0.66,0.69,0.55,1.14c-0.07,0.31-0.27,0.56-0.53,0.69l-0.62,0.5L29.37,41.74L29.37,41.74z\n    "/>\n  <path fill="#FABD2C" d="M26.45,22.64l5.6-1.2c0,0,1.12,0.24,1.14,0.24l-1.43,20.54l-0.35,0.53c0,0-1.68,0.21-2.41-0.08\n    c-0.58-0.23-0.58-0.34-0.58-0.34L26.45,22.64z"/>\n  <path fill="#FABD2C" d="M32.52,22.7l0.73-1.06c0,0,0.04,0.01,0.03,0.09c-0.1,1.5-1.11,20.23-1.11,20.23s-0.47,0.7-0.58,0.76\n    c-0.1,0.06-0.25,0.01-0.25,0.01s0.18-0.01,0.18-0.3C31.53,42.24,32.52,22.7,32.52,22.7L32.52,22.7z"/>\n  <path opacity="0.5" fill="#CE592C" enable-background="new    " d="M32.52,22.7l0.73-1.06c0,0,0.04,0.01,0.03,0.09\n    c-0.1,1.5-1.11,20.23-1.11,20.23s-0.47,0.7-0.58,0.76c-0.1,0.06-0.25,0.01-0.25,0.01s0.18-0.01,0.18-0.3\n    C31.53,42.24,32.52,22.7,32.52,22.7L32.52,22.7z"/>\n  <path fill="#CE592C" d="M33.25,21.65l-0.73,1.05l-6.07-0.06l1.2-0.97"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="30" cy="22.01" rx="2.13" ry="0.52"/>\n  <path fill="#CE592C" d="M31.24,33.25c-0.13,0.72,0.11,1.68-1.06,1.87c-0.83,0.13-0.88-0.7-0.94-0.99c0,0-0.47-3.98-0.63-6.18\n    c0,0-0.23-3.69-0.01-4c0.37-0.52,0.92-0.63,1.45-0.49c0.61,0.17,1.52,0.64,1.36,2c0,0-0.01,3.9,0,4.66\n    C31.41,31.06,31.24,33.25,31.24,33.25L31.24,33.25z"/>\n  <path fill="#E58A2C" d="M30.64,33.53c0.02,0.57,0.31,1.45-0.87,1.59c-1.17,0.14-1.21-0.86-1.27-1.14c0,0-0.42-2.16-0.58-4.36\n    c0,0-0.21-3.83-0.17-4.28c0.14-1.66,1.05-2.11,1.88-1.87c0.61,0.17,1.24,0.65,1.08,2.01c0,0-0.03,3.94-0.02,4.69\n    C30.71,31.1,30.64,33.53,30.64,33.53z"/>\n  <path fill="#FABD2C" d="M30.64,33.53c0.02,0.57,0.3,1.41-0.87,1.59c-0.83,0.13-0.88-0.7-0.94-0.99c0,0-0.47-3.98-0.63-6.18\n    c0,0-0.23-3.69,0-4c0.37-0.52,0.92-0.63,1.45-0.49c0.61,0.17,1.24,0.65,1.08,2.01c0,0-0.03,3.94-0.02,4.69\n    C30.71,31.1,30.64,33.53,30.64,33.53L30.64,33.53z"/>\n  <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.97,21.74c1.19,0,2.3-0.27,3.24-0.75\n    c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.59,21.45,28.74,21.74,29.97,21.74z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <path opacity="0.3" enable-background="new    " d="M29.65,44.14l8.24-3.85l-4.47-2.69"/>\n  <path fill="#333333" d="M29.21,44.46c-0.16,0-0.31-0.03-0.46-0.09c-0.21-0.07-0.7-0.24-1.2-0.49c-0.74-0.37-1-1.07-1-1.54\n    l-0.51-6.63c-0.37-0.32-0.61-0.82-0.71-1.49c-0.02-0.11-0.54-2.33-0.68-4.59c-0.01-0.69-0.03-3.9,0.01-4.37\n    c0.05-0.67,0.2-1.24,0.45-1.69l-0.07-0.85c-0.04-0.48,0.27-0.91,0.73-1.04l0.14-0.04c-0.04-0.04-0.07-0.08-0.1-0.12\n    c-1.16-1.13-1.83-2.68-1.83-4.29c0-1.6,0.62-3.11,1.74-4.24c1.13-1.14,2.61-1.76,4.22-1.76c1.59,0,3.09,0.62,4.21,1.75\n    s1.74,2.64,1.75,4.24c0,1.59-0.64,3.11-1.77,4.24c0.05,0.02,0.09,0.03,0.14,0.06c0.36,0.18,0.6,0.64,0.58,1.04l-0.06,1.09\n    c0.01,0.12,0.01,0.24,0.01,0.37c0.04,0.92,0.16,3.59,0.21,4.13c0.08,0.84,0.37,3.06,0.37,3.06l0.03,0.19\n    c0.27,1.54-0.44,2.15-1.17,2.37c-0.17,3.07-0.31,5.61-0.31,5.76c-0.03,0.63-0.32,0.96-0.45,1.08c-0.85,0.93-0.9,0.96-1.02,1.04\n    c-0.26,0.17-0.61,0.22-0.96,0.12c-0.03-0.01-0.06-0.01-0.09-0.02C31.4,41.92,31.4,41.98,31.4,42c-0.01,0.69-0.31,1.08-0.5,1.26\n    c-0.83,0.85-0.91,0.91-0.95,0.95C29.73,44.38,29.47,44.46,29.21,44.46z M28.54,42.14c0.16,0.08,0.32,0.14,0.45,0.2\n    c0.15-0.15,0.3-0.31,0.4-0.41c0.01-0.17,0.04-0.69,0.22-3.12c0.04-0.52,0.47-0.92,0.99-0.93h0.01c0.52,0,0.95,0.39,1,0.91\n    l0.07,0.82c0.09-0.1,0.18-0.19,0.25-0.27c0.04-0.81,0.3-5.56,0.36-6.57c0.02-0.32,0.19-0.62,0.46-0.79\n    c0.21-0.13,0.46-0.18,0.7-0.14c-0.01-0.04-0.01-0.07-0.02-0.1c-0.02-0.1-0.03-0.19-0.04-0.28c0,0-0.29-2.27-0.38-3.12\n    c-0.07-0.7-0.21-4.15-0.21-4.3s-0.01-0.22-0.01-0.3V23.6l0.02-0.44l-1.25-0.36c-0.41-0.12-0.7-0.48-0.72-0.9s0.22-0.82,0.61-0.98\n    c0.04-0.02,0.07-0.04,0.11-0.06l0.15-0.08c0.13-0.06,0.25-0.13,0.37-0.2l0.21-0.15l0.14-0.1l0.08-0.08\n    c0.9-0.77,1.41-1.87,1.41-3.03c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.74-1.16-2.79-1.16c-1.06,0-2.05,0.42-2.8,1.17\n    c-0.75,0.76-1.16,1.76-1.16,2.83c0,1.15,0.49,2.21,1.36,2.99c0.03,0.02,0.05,0.05,0.07,0.07l0.22,0.16\n    c0.05,0.04,0.11,0.09,0.16,0.12c0.1,0.07,0.21,0.12,0.32,0.17l0.2,0.1c0.04,0.02,0.09,0.05,0.13,0.07c0.05,0.02,0.1,0.03,0.15,0.05\n    L28.76,21c0.42,0.14,0.7,0.53,0.69,0.97s-0.31,0.82-0.73,0.94l-1.6,0.45l0.03,0.37c0.02,0.25-0.06,0.5-0.21,0.7\n    c-0.06,0.08-0.22,0.34-0.27,0.96c-0.02,0.26-0.02,2.31,0,4.15c0.13,2.03,0.63,4.16,0.63,4.19c0.01,0.03,0.03,0.15,0.03,0.18\n    c0.01,0.05,0.02,0.16,0.04,0.24c0.36,0.14,0.61,0.47,0.64,0.86L28.54,42.14L28.54,42.14z M29.63,41.72\n    C29.62,41.72,29.62,41.72,29.63,41.72C29.62,41.72,29.62,41.72,29.63,41.72z M32.06,39.2c-0.03,0.02-0.05,0.04-0.06,0.07\n    C32.04,39.22,32.06,39.2,32.06,39.2z"/>\n  <path fill="#FABD2C" d="M34.38,31.34c0.06,0.52,0.36,1.3-0.56,1.51c-0.92,0.21-1.03-0.7-1.1-0.95c0,0-0.65-1.97-0.95-3.96\n    c0,0-0.33-3.44-0.33-3.85c-0.02-1.52,0.66-1.99,1.35-1.84c0.5,0.11,1.03,0.5,1.01,1.75c0,0,0.15,3.56,0.21,4.24\n    C34.09,29.09,34.38,31.34,34.38,31.34z"/>\n  <path fill="#CE592C" d="M34.38,31.34c0.06,0.52,0.36,1.3-0.56,1.51c-0.92,0.21-1.03-0.7-1.1-0.95c0,0-0.65-1.97-0.95-3.96\n    c0,0-0.33-3.44-0.33-3.85c-0.02-1.52,0.66-1.99,1.35-1.84c0.5,0.11,1.03,0.5,1.01,1.75c0,0,0.15,3.56,0.21,4.24\n    C34.09,29.09,34.38,31.34,34.38,31.34z"/>\n  <path fill="#FABD2C" d="M26.04,22.64l4.31-1.2c0,0,3.41,1.02,3.43,1.02L32.8,39.77l-1.04,1.03c0,0-0.81-0.22-0.91-0.26\n    c-0.1-0.03-0.1-0.18-0.1-0.18l-0.15-1.68l-0.7,4.1l-0.72,0.66c0,0-0.6-0.18-1.16-0.47c-0.45-0.23-0.45-0.65-0.45-0.65L26.04,22.64z\n    "/>\n  <path fill="#FABD2C" d="M29.92,23.71l3.89-1.29c0,0,0.03,0.01,0.03,0.09c-0.08,1.5-0.91,16.72-0.92,16.99s-0.12,0.37-0.12,0.37\n    s-0.82,0.89-0.88,0.93c-0.06,0.04-0.17,0-0.17,0s0.08-0.04,0.09-0.23s-0.38-7.48-0.38-7.48c-0.01-0.37-0.07-0.52-0.23-0.52\n    c-0.15,0-0.19,0.15-0.19,0.53c0,0-0.63,8.45-0.64,8.88s-0.2,0.56-0.2,0.56s-0.82,0.83-0.89,0.89c-0.08,0.06-0.19,0.01-0.19,0.01\n    s0.14-0.01,0.14-0.3C29.25,42.94,29.92,23.71,29.92,23.71z"/>\n  <path opacity="0.3" fill="#CE592C" enable-background="new    " d="M29.92,23.71l3.89-1.29c0,0,0.03,0.01,0.03,0.09\n    c-0.08,1.5-0.91,16.72-0.92,16.99s-0.12,0.37-0.12,0.37s-0.82,0.89-0.88,0.93c-0.06,0.04-0.17,0-0.17,0s0.08-0.04,0.09-0.23\n    s-0.38-7.48-0.38-7.48c-0.01-0.37-0.07-0.52-0.23-0.52c-0.15,0-0.19,0.15-0.19,0.53c0,0-0.63,8.45-0.64,8.88s-0.2,0.56-0.2,0.56\n    s-0.82,0.83-0.89,0.89c-0.08,0.06-0.19,0.01-0.19,0.01s0.14-0.01,0.14-0.3C29.25,42.94,29.92,23.71,29.92,23.71z"/>\n  <path fill="#CE592C" d="M33.82,22.42l-3.9,1.29l-3.88-1.07l4.36-1.2"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="30.19" cy="22.4" rx="2.13" ry="0.52"/>\n  <path fill="#CE592C" d="M25.92,25.66c0.04-1.67,0.72-2.46,1.44-2.22c0.81,0.27,1.29,1.03,1.21,2.4c0,0-0.07,3.73-0.03,4.48\n    c0.05,0.93,0.27,3.4,0.27,3.4c0.05,0.57,0.33,1.44-0.68,1.63c-0.22,0.04-0.39-0.01-0.53-0.12l-0.28-0.43c0,0-0.97-2.72-1.21-4.91\n    C26.11,29.87,25.91,26.11,25.92,25.66z"/>\n  <path fill="#FABD2C" d="M28.16,33.53c0.02,0.57,0.27,1.45-0.76,1.59c-1.02,0.14-1.05-0.86-1.11-1.14c0,0-0.52-2.21-0.66-4.41\n    c0,0-0.03-3.78,0.01-4.23c0.12-1.66,0.91-2.11,1.64-1.87c0.53,0.17,1.08,0.65,0.94,2.01c0,0-0.18,3.89-0.18,4.64\n    C28.06,31.05,28.16,33.53,28.16,33.53z"/>\n  <ellipse fill="#FABD2C" cx="29.94" cy="17.23" rx="4.96" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.96,21.74c1.19,0,2.3-0.27,3.24-0.75\n    c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.59,21.45,28.73,21.74,29.96,21.74z"/>\n  <path opacity="0.8" fill="#CE592C" enable-background="new    " d="M32.76,22.77l-0.94,4.66l-0.76-4.1"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M28.14,33.53c0.04,1.16-0.54,0.95-0.82,0.81\n    c-0.99-0.52-1.09-5.12-1.2-6.56c-0.07-0.97-0.16-3.58,0.78-4.26c0.55-0.21,1.04,0.42,1.09,0.51c0.19,0.31,0.29,0.77,0.22,1.45\n    c0,0-0.18,3.89-0.18,4.64C28.04,31.05,28.14,33.53,28.14,33.53L28.14,33.53z"/>\n  <path fill="#FFFFFF" d="M47.48,45.15C47.47,45.15,47.47,45.15,47.48,45.15l-15.9-0.08c-0.22,0-0.42-0.15-0.48-0.37\n    s0.03-0.45,0.23-0.56c0.66-0.39,2.48-1.56,2.96-2.25c0.57-0.8,0.71-2.24,0.71-2.26c0.01-0.16,0.1-0.3,0.24-0.38\n    c0.14-0.08,0.3-0.09,0.45-0.03l11.98,4.97c0.22,0.09,0.35,0.33,0.3,0.56C47.92,44.99,47.71,45.15,47.48,45.15z M33.25,44.09\n    l11.68,0.06l-9.04-3.75c-0.11,0.59-0.34,1.45-0.79,2.08C34.75,42.98,33.97,43.59,33.25,44.09L33.25,44.09z"/>\n  <path fill="#3F3F3F" d="M31.58,44.58c0,0,2.46-1.47,3.12-2.39c0.66-0.93,0.8-2.5,0.8-2.5l11.98,4.97L31.58,44.58z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.68,33.64,41.57,27.19,30.33,27.19z M30.21,55.03\n    c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#333333" d="M27.43,44.47c-0.26,0-0.52-0.09-0.7-0.28c-0.12-0.12-0.75-0.76-0.99-1.1c-0.37-0.51-0.41-1.07-0.41-1.3\n    l-0.38-6.47c-0.2-0.3-0.3-0.68-0.41-1.09l-0.05-0.17c-0.04-0.18-0.5-2.67-0.64-4.9c-0.04-0.8-0.18-3.42-0.14-3.9\n    c0.06-0.75,0.24-1.37,0.54-1.84l-0.03-0.52c-0.03-0.1-0.04-0.2-0.03-0.31c0.03-0.45,0.33-0.84,0.78-0.93l0.81-0.17\n    c-1.15-1.13-1.8-2.66-1.8-4.26c0-1.61,0.62-3.12,1.75-4.25c1.12-1.13,2.62-1.75,4.2-1.75h0.01c1.59,0,3.09,0.62,4.21,1.75\n    s1.74,2.64,1.75,4.24c0,1.52-0.59,2.98-1.63,4.09l0.37,0.11c0.06,0.01,0.11,0.02,0.16,0.04c0.47,0.15,0.77,0.59,0.74,1.09\n    c0.23,0.44,0.34,0.98,0.33,1.62c0.04,0.93,0.16,3.59,0.21,4.13c0.08,0.86,0.17,3.01,0.17,3.1v0.02c0,0.08,0.01,0.17,0.01,0.25\n    c0.03,0.51,0.1,1.83-1.44,2.16c-0.2,3.24-0.36,5.94-0.37,6.07c-0.04,0.61-0.39,1.02-0.7,1.19c-1.32,0.91-1.41,0.95-1.52,0.99\n    c-0.01,0.01-0.03,0.01-0.05,0.02c-0.19,0.09-0.39,0.11-0.61,0.06c-0.08-0.01-0.14-0.02-0.17-0.02c-0.16-0.03-0.31-0.1-0.43-0.19\n    c-0.11-0.04-0.23-0.09-0.34-0.13c-0.01,0.1-0.02,0.15-0.02,0.18c-0.02,0.72-0.45,1.19-0.84,1.4c-0.21,0.12-1.48,0.86-1.6,0.92\n    c-0.18,0.1-0.39,0.14-0.61,0.14h-0.01C27.52,44.47,27.47,44.47,27.43,44.47z M26.6,34.17c0.19,0.17,0.31,0.42,0.33,0.68l0.4,6.87\n    v0.12c0,0.01,0.01,0.07,0.03,0.09c0.05,0.07,0.18,0.22,0.33,0.38c0.32-0.18,0.72-0.42,0.95-0.55c0.03-0.33,0.16-1.33,0.66-4.95\n    c0.07-0.5,0.49-0.86,0.99-0.86h0.03c0.51,0.01,0.93,0.41,0.97,0.91l0.28,3.18c0.05,0.02,0.1,0.04,0.14,0.05\n    c0.22-0.15,0.55-0.38,0.76-0.52c0.05-0.82,0.22-3.69,0.42-6.86c0.02-0.37,0.25-0.7,0.6-0.85c0.25-0.11,0.53-0.11,0.78-0.01V31.8\n    c-0.01-0.1-0.01-0.21-0.01-0.31c-0.01-0.17-0.09-2.2-0.16-2.98c-0.07-0.7-0.21-4.15-0.22-4.29c0.01-0.55-0.1-0.72-0.13-0.76\n    l-0.02-0.02c-0.02-0.01-0.03-0.02-0.05-0.02c-0.13-0.06-0.24-0.15-0.32-0.25l-1.56-0.45c-0.4-0.11-0.68-0.46-0.72-0.87\n    c-0.04-0.41,0.18-0.8,0.55-0.99c0.2-0.1,0.33-0.17,0.44-0.24c0.07-0.04,0.13-0.1,0.2-0.15l0.14-0.1c0.03-0.03,0.05-0.06,0.08-0.08\n    c0.9-0.77,1.41-1.87,1.41-3.03c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.74-1.16-2.79-1.16s-2.04,0.41-2.79,1.16\n    c-0.75,0.76-1.17,1.76-1.17,2.84c0,1.15,0.49,2.21,1.36,2.99c0.03,0.02,0.05,0.05,0.08,0.07l0.12,0.09c0,0,0.08,0.06,0.08,0.07\n    c0.06,0.05,0.11,0.09,0.17,0.13c0.1,0.07,0.21,0.12,0.32,0.17l0.2,0.1c0.04,0.02,0.09,0.05,0.13,0.07c0.05,0.02,0.1,0.03,0.15,0.05\n    l0.14,0.04c0.43,0.14,0.71,0.55,0.69,1.01c-0.03,0.45-0.35,0.83-0.8,0.92l-2.37,0.49l0.01,0.24c0.02,0.28-0.08,0.55-0.28,0.75\n    c-0.05,0.06-0.23,0.29-0.28,0.99c-0.02,0.27,0.06,2.06,0.14,3.63c0.13,2.1,0.59,4.55,0.59,4.57l0.03,0.1\n    C26.52,33.88,26.57,34.06,26.6,34.17L26.6,34.17z M32.69,39.41c-0.03,0.02-0.05,0.03-0.07,0.05\n    C32.67,39.43,32.69,39.41,32.69,39.41z"/>\n  <path fill="#FABD2C" d="M25.21,22.64l4.46-0.83c0,0,2.42,0.35,2.43,0.35l0.46,17.98l-0.78,1.03c0,0-1.02-0.38-1.1-0.41\n    s-0.07-0.18-0.07-0.18l-0.66-7.54l-1.46,9.74l-1.04,0.7c0,0-0.68-0.69-0.89-0.98c-0.24-0.33-0.22-0.73-0.22-0.73L25.21,22.64z"/>\n  <path fill="#CE592C" d="M24.75,25.66c0.04-1.67,0.72-2.46,1.44-2.22c0.81,0.27,1.29,1.03,1.21,2.4c0,0-0.07,3.73-0.03,4.48\n    c0.05,0.93,0.27,3.4,0.27,3.4c0.05,0.57,0.33,1.44-0.68,1.63c-0.22,0.04-0.39-0.01-0.53-0.12l-0.28-0.43c0,0-0.97-2.72-1.21-4.91\n    C24.95,29.87,24.74,26.11,24.75,25.66z"/>\n  <path fill="#FABD2C" d="M27.23,33.53c0.02,0.57,0.27,1.23-0.75,1.41c-0.74,0.13-0.75-0.11-1.02-1.13c0,0-0.47-2.5-0.61-4.71\n    c0,0-0.18-3.31-0.14-3.76c0.12-1.66,0.91-2.11,1.64-1.87c0.53,0.17,1.08,0.65,0.94,2.01c0,0-0.18,3.89-0.18,4.64\n    C27.12,31.05,27.23,33.53,27.23,33.53L27.23,33.53z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M27.23,33.53c0.04,1.16-0.58,1-0.82,0.81\n    c-0.63-0.5-0.71-5.21-0.82-6.64c-0.07-0.97,0.09-3.4,0.4-4.17c0.55-0.21,1.04,0.42,1.09,0.51c0.19,0.31,0.29,0.77,0.22,1.45\n    c0,0-0.18,3.89-0.18,4.64C27.12,31.05,27.23,33.53,27.23,33.53z"/>\n  <path fill="#FABD2C" d="M35.25,31.45c0.01,0.67,0.2,1.27-0.73,1.43c-0.91,0.15-0.86-0.61-0.93-0.87c0,0-0.45-1.92-0.75-3.91\n    c0,0-0.33-3.44-0.33-3.85c-0.02-1.52,0.66-1.99,1.35-1.84c0.5,0.11,1.03,0.5,1.01,1.75c0,0,0.15,3.56,0.21,4.24\n    C35.16,29.24,35.25,31.45,35.25,31.45L35.25,31.45z"/>\n  <path fill="#CE592C" d="M35.25,31.45c0.01,0.67,0.2,1.27-0.73,1.43c-0.91,0.15-0.86-0.61-0.93-0.87c0,0-0.45-1.92-0.75-3.91\n    c0,0-0.33-3.44-0.33-3.85c-0.02-1.52,0.66-1.99,1.35-1.84c0.5,0.11,1.03,0.5,1.01,1.75c0,0,0.15,3.56,0.21,4.24\n    C35.16,29.24,35.25,31.45,35.25,31.45L35.25,31.45z"/>\n  <path fill="#FABD2C" d="M28.33,23.71l6.17-1.29c0,0,0.05,0.01,0.04,0.09c-0.13,1.5-1.07,17.08-1.09,17.34\n    c-0.02,0.27-0.19,0.37-0.19,0.37s-1.3,0.89-1.39,0.93c-0.09,0.04-0.27,0-0.27,0s0.13-0.04,0.14-0.23c0.02-0.19-0.3-7.46-0.3-7.46\n    c-0.01-0.37-0.11-0.52-0.36-0.52s-0.29,0.15-0.31,0.53c0,0-1.14,8.05-1.15,8.48c-0.01,0.43-0.31,0.56-0.31,0.56\n    s-1.47,0.86-1.59,0.92c-0.12,0.06-0.3,0.01-0.3,0.01s0.22-0.01,0.22-0.3C27.64,42.94,28.33,23.71,28.33,23.71L28.33,23.71z"/>\n  <path opacity="0.3" fill="#CE592C" enable-background="new    " d="M28.33,23.71l6.17-1.29c0,0,0.05,0.01,0.04,0.09\n    c-0.13,1.5-1.07,17.08-1.09,17.34c-0.02,0.27-0.19,0.37-0.19,0.37s-1.3,0.89-1.39,0.93c-0.09,0.04-0.27,0-0.27,0\n    s0.13-0.04,0.14-0.23c0.02-0.19-0.3-7.46-0.3-7.46c-0.01-0.37-0.11-0.52-0.36-0.52s-0.29,0.15-0.31,0.53c0,0-1.14,8.05-1.15,8.48\n    c-0.01,0.43-0.31,0.56-0.31,0.56s-1.47,0.86-1.59,0.92c-0.12,0.06-0.3,0.01-0.3,0.01s0.22-0.01,0.22-0.3\n    C27.64,42.94,28.33,23.71,28.33,23.71L28.33,23.71z"/>\n  <path opacity="0.5" fill="#CE592C" enable-background="new    " d="M33.15,22.67l-2.02,4.98l-1.23-4.26"/>\n  <path opacity="0.8" fill="#CE592C" enable-background="new    " d="M33.15,22.67l-2.02,4.98l-1.23-4.26"/>\n  <path fill="#CE592C" d="M34.46,22.42l-6.14,1.29l-3.15-1.07l5.88-1.2"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="30" cy="22.4" rx="2.25" ry="0.43"/>\n  <ellipse fill="#FABD2C" cx="29.94" cy="17.23" rx="4.96" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.96,21.74c1.19,0,2.3-0.27,3.24-0.75\n    c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.58,21.45,28.73,21.74,29.96,21.74z"/>\n  <path fill="#FFFFFF" d="M44.83,48.74c-0.04,0-0.08,0-0.11-0.01l-14.45-3.4c-0.22-0.05-0.38-0.25-0.39-0.48\n    c0-0.23,0.15-0.43,0.37-0.49c0.86-0.24,3.23-0.97,3.87-1.51c0.62-0.53,1.11-1.63,1.25-2.01c0.05-0.15,0.18-0.27,0.33-0.31\n    c0.16-0.04,0.32-0.01,0.45,0.09l8.99,7.24c0.18,0.15,0.24,0.4,0.14,0.61C45.19,48.63,45.01,48.74,44.83,48.74L44.83,48.74z\n     M32.27,44.77l10.53,2.48l-6.76-5.44c-0.26,0.54-0.7,1.31-1.28,1.8C34.27,44.01,33.21,44.44,32.27,44.77z"/>\n  <path fill="#3F3F3F" d="M30.37,44.83c0,0,3.19-0.88,4.06-1.61c0.87-0.73,1.4-2.22,1.4-2.22l8.99,7.24L30.37,44.83z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <g>\n    <path fill="#FFFFFF" d="M40.14,52.96c-0.09,0-0.18-0.02-0.26-0.07l-12.27-7.33c-0.19-0.12-0.29-0.35-0.22-0.56\n      c0.06-0.22,0.26-0.37,0.48-0.37c1.16,0.01,4.24-0.05,5.06-0.32c0.68-0.22,1.75-1.35,2.26-2.02c0.11-0.14,0.28-0.21,0.45-0.19\n      c0.17,0.02,0.32,0.13,0.4,0.29l4.55,9.86c0.09,0.2,0.04,0.43-0.12,0.58C40.38,52.92,40.26,52.96,40.14,52.96z M29.64,45.6L39,51.2\n      l-3.54-7.68c-0.55,0.61-1.42,1.47-2.22,1.73C32.57,45.48,30.94,45.57,29.64,45.6L29.64,45.6z"/>\n    <path fill="#3F3F3F" d="M27.87,45.13c0,0,4.14,0.01,5.22-0.35c1.08-0.35,2.5-2.18,2.5-2.18l4.55,9.86L27.87,45.13z"/>\n    <path fill="#333333" d="M26.53,43.7c-0.18,0-0.37-0.03-0.58-0.08l-0.5-0.14l-0.11-0.3c-0.65-0.61-1.01-1.18-1.06-1.69\n      c-0.02-0.2-0.04-0.42-0.01-0.65l-0.17-5.13c-0.05,0.01-0.09,0.02-0.13,0.02c-0.53,0.08-1.22-0.13-1.58-0.26\n      c-0.62-0.16-1.02-0.85-0.9-1.64c0.08-0.68,0.45-3.36,0.75-5.23c0.4-2.47,0.88-4.5,0.9-4.58c0.06-0.39,0.25-0.83,0.53-1.2\n      l-0.01-0.46c-0.01-0.33,0.11-0.65,0.34-0.9s0.54-0.38,0.88-0.39l0.47-0.01c-0.86-1.05-1.37-2.39-1.37-3.82\n      c0-1.6,0.62-3.11,1.74-4.24c1.12-1.13,2.62-1.76,4.22-1.76h0.01c1.59,0,3.09,0.62,4.21,1.75s1.74,2.64,1.75,4.24\n      c0,1.62-0.63,3.12-1.71,4.22c0.37,0.21,0.8,0.46,1.15,0.68c1.08,0.67,1.28,1.95,1.31,2.31c0.21,1.1,0.74,3.9,0.88,4.48\n      c0.23,0.93,0.66,3.25,0.68,3.35c0.02,0.12,0.04,0.21,0.06,0.3c0.11,0.54,0.4,1.96-1.3,2.51c-0.54,0.17-1.03,0.15-1.45-0.06\n      c-0.35-0.18-0.57-0.46-0.71-0.72c-0.22,3.57-0.41,6.62-0.42,6.74c-0.04,0.61-0.39,1.01-0.7,1.19l-0.29,0.11\n      c0,0-1.71,0.35-2.08,0.44l-0.04,0.03l-0.25,0.04c-0.14,0.02-0.42,0.03-0.7-0.09c-0.1-0.04-0.17-0.07-0.51-0.36\n      c-0.18,0.41-0.49,0.68-0.77,0.8l-0.22,0.07c-0.72,0.13-1.59,0.31-1.82,0.37C26.88,43.67,26.71,43.7,26.53,43.7L26.53,43.7z\n       M26.21,41.78c0,0-0.01,0-0.01,0.01C26.2,41.79,26.21,41.79,26.21,41.78z M26.28,41.24c0.06,0.1,0.19,0.25,0.35,0.41\n      c0.25-0.06,0.66-0.14,1.36-0.28c0.07-0.72,0.3-2.64,0.67-5.71l1.99,0.1l0.11,4.79c0.09,0.08,0.18,0.16,0.27,0.23\n      c0.25-0.06,0.67-0.15,1.4-0.3c0.09-1.51,0.42-6.79,0.69-11.21l1.95-0.23c0.39,1.26,0.83,2.48,1.1,3.21\n      c-0.13-0.69-0.42-2.2-0.58-2.86c-0.19-0.75-0.89-4.48-0.92-4.63l-0.02-0.13c-0.01-0.19-0.12-0.64-0.37-0.8\n      c-0.55-0.34-1.3-0.77-1.68-0.98l-0.81,0.02l-0.4-1.93c1.52-0.61,2.5-2.07,2.5-3.71c0-1.07-0.41-2.07-1.16-2.83\n      c-0.75-0.75-1.74-1.16-2.79-1.16c-1.06,0-2.05,0.42-2.8,1.17c-0.75,0.76-1.16,1.76-1.16,2.83c0,1.72,1.09,3.24,2.71,3.79\n      l-0.29,1.95l-2.71,0.08l0.02,0.57l-0.35,0.31c-0.12,0.11-0.23,0.31-0.25,0.47c-0.02,0.1-0.5,2.12-0.89,4.51\n      c-0.31,1.92-0.59,3.97-0.7,4.8c0.02,0,0.03,0.01,0.04,0.01L24,31.81L25.97,32L26.28,41.24L26.28,41.24z M22.99,33.56\n      c0.03,0.01,0.05,0.02,0.08,0.03C23.04,33.58,23.02,33.57,22.99,33.56z"/>\n    <path fill="#FABD2C" d="M37.24,32.44c0.12,0.73,0.42,1.35-0.57,1.67c-0.97,0.31-1.03-0.53-1.15-0.79c0,0-0.79-2.02-1.44-4.14\n      c0,0-0.9-3.69-0.98-4.14c-0.26-1.66,0.41-2.27,1.17-2.21c0.56,0.04,1.2,0.38,1.38,1.75c0,0,0.72,3.85,0.91,4.58\n      C36.79,30.06,37.24,32.44,37.24,32.44L37.24,32.44z"/>\n    <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M34.23,29.87l0.2-7.11l0.41,0.31c0,0-0.06,5.4,0.11,6.64\n      c0.17,1.24,0.45,3.13,0.45,3.13L34.23,29.87L34.23,29.87z"/>\n    <path fill="#E58A2C" d="M24.66,22.08l0.61,18.85c0,0-0.04,0.03,0.01,0.47c0.05,0.48,0.95,1.24,0.95,1.24l1.86-0.57l1.26-10.05\n      l0.23,0.77l0.19,8.22l0.95,0.81l0.18,0.02l1.44-1.03l0.51-18.03l-2.05-0.32L24.66,22.08"/>\n    <path fill="#FABD2C" d="M34.51,22.74L26.24,23c-0.49,15.18,0.06,15.86-0.04,19.32c-0.01,0.29,0.02,0.32,0.02,0.32\n      s0.18,0.05,0.33,0.05c0.05,0,0.09-0.01,0.12-0.02c0.13-0.07,2-0.41,2-0.41s0.3-0.14,0.31-0.57c0.02-0.43,0.88-7.48,0.88-7.48\n      c0.05-0.65,0.14-0.75,0.39-0.76c0.25,0.01,0.35,0.16,0.36,0.53c0,0,0.3,7.4,0.28,7.59c-0.02,0.2-0.14,0.23-0.14,0.23H31\n      c0.09-0.04,2.21-0.48,2.21-0.48s0.18-0.1,0.2-0.37L34.51,22.74"/>\n    <path opacity="0.1" fill="#CE592C" enable-background="new    " d="M34.51,22.74L26.24,23c-0.49,15.18,0.06,15.86-0.04,19.32\n      c-0.01,0.29,0.02,0.32,0.02,0.32s0.18,0.05,0.33,0.05c0.05,0,0.09-0.01,0.12-0.02c0.13-0.07,2-0.41,2-0.41s0.3-0.14,0.31-0.57\n      c0.02-0.43,0.88-7.48,0.88-7.48c0.05-0.65,0.14-0.75,0.39-0.76c0.25,0.01,0.35,0.16,0.36,0.53c0,0,0.3,7.4,0.28,7.59\n      c-0.02,0.2-0.14,0.23-0.14,0.23H31c0.09-0.04,2.21-0.48,2.21-0.48s0.18-0.1,0.2-0.37L34.51,22.74"/>\n    <path fill="#CE592C" d="M32.87,21.84l-8.21,0.24l1.56,0.95l8.25-0.29L32.87,21.84"/>\n    <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.98" cy="22.37" rx="2.25" ry="0.3"/>\n    <ellipse fill="#FABD2C" cx="29.94" cy="17.23" rx="4.96" ry="5"/>\n    <path opacity="0.8" fill="#CE592C" enable-background="new    " d="M33.29,22.77l-3.09,5.36l-2.77-5.3"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.97,21.74c1.19,0,2.3-0.27,3.24-0.75\n      c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.59,21.45,28.74,21.74,29.97,21.74z"/>\n    <path fill="#FABD2C" d="M25.91,26.06c-0.1,1.59-0.92,5.97-0.92,5.97l-0.54,2.33c-0.08,0.24-0.27,0.33-0.62,0.38\n      c-0.35,0.05-1.09-0.21-1.09-0.21c-0.23-0.06-0.29-0.3-0.25-0.55c0,0,0.35-2.72,0.75-5.23c0.4-2.46,0.89-4.51,0.89-4.51\n      c0.1-0.61,0.59-1.29,1.17-1.34c0,0,0.69,0,0.71,1.06C26.03,25.08,25.91,26.06,25.91,26.06z"/>\n    <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M25.49,22.95c0.2,0.08,0.5,0.32,0.52,1.01\n      c0.03,1.12-0.1,2.1-0.1,2.1c-0.09,1.36-0.7,4.73-0.87,5.7l-0.01,0.05C25.02,31.81,25.6,26.32,25.49,22.95L25.49,22.95z"/>\n  </g>\n</svg>\n;<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.68,33.64,41.57,27.19,30.33,27.19L30.33,27.19z M30.21,55.03\n    c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <g>\n    <path fill="#FFFFFF" d="M30.79,54.8c-0.18,0-0.35-0.1-0.43-0.25l-5.83-10.24c-0.1-0.17-0.08-0.38,0.03-0.54\n      c0.12-0.16,0.31-0.23,0.51-0.19c1.16,0.25,4.37,0.89,5.26,0.89c0.98,0,3.52-0.73,4.42-1.01c0.18-0.05,0.38,0,0.52,0.14\n      s0.17,0.34,0.1,0.52l-4.11,10.37c-0.07,0.18-0.24,0.3-0.43,0.31L30.79,54.8L30.79,54.8z M25.95,44.77l4.76,8.37l3.34-8.44\n      c-1.1,0.31-2.84,0.76-3.73,0.76C29.51,45.46,27.29,45.04,25.95,44.77z"/>\n    <path fill="#3F3F3F" d="M24.96,44.06c0,0,4.29,0.9,5.43,0.9c1.16,0,4.5-1.03,4.5-1.03L30.78,54.3L24.96,44.06z"/>\n    <path fill="#333333" d="M34.25,23.78h-8.51c-0.42,0-0.8-0.26-0.94-0.66c-0.14-0.4-0.02-0.84,0.3-1.11l0.64-0.53\n      c-1.12-1.12-1.77-2.65-1.77-4.25c0-3.3,2.69-5.99,5.98-5.99c1.6,0,3.1,0.63,4.23,1.76s1.75,2.64,1.75,4.24\n      c0,1.45-0.53,2.83-1.49,3.93c-0.03,0.05-0.07,0.1-0.11,0.14l-0.13,0.13l-0.03,0.03l0.68,0.52c0.34,0.26,0.48,0.71,0.34,1.12\n      C35.06,23.51,34.68,23.78,34.25,23.78L34.25,23.78z M29.49,21.78h0.93c0.08-0.33,0.33-0.6,0.68-0.71c0.08-0.03,0.17-0.06,0.25-0.1\n      l0.12-0.05c0.25-0.11,0.45-0.21,0.63-0.34l0.11-0.07c0.14-0.1,0.28-0.22,0.42-0.35c0.01-0.01,0.08-0.07,0.09-0.08l0.05-0.05\n      c0.02-0.02,0.04-0.04,0.05-0.06c0.71-0.75,1.1-1.72,1.1-2.74c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.75-1.17-2.81-1.17\n      c-2.19,0-3.98,1.79-3.98,3.99c0,1.3,0.64,2.52,1.71,3.27c0.05,0.03,0.09,0.07,0.13,0.11c0.3,0.19,0.64,0.35,1,0.46\n      C29.16,21.18,29.41,21.45,29.49,21.78z"/>\n    <path fill="#333333" d="M33.98,43.59h-3.04c-0.45,0-0.84-0.3-0.96-0.72c-0.12,0.42-0.51,0.72-0.96,0.72h-3\n      c-0.55,0-0.99-0.44-1-0.99l-0.13-9.18l-0.38,0.97c-0.3,0.71-1.04,1.08-1.78,0.89l-1.02-0.33c-0.74-0.27-1.13-1.03-0.94-1.78\n      c0.01-0.04,0.02-0.07,0.03-0.1c0.02-0.08,2.56-9.46,2.56-9.46c0.23-0.93,1.04-1.66,1.96-1.79c0.08-0.02,0.17-0.03,0.26-0.03h8.84\n      c0.07,0,0.14,0.01,0.21,0.02c0.96,0.1,1.8,0.83,2.04,1.79c2.08,8.08,2.4,9.32,2.46,9.53c0.2,0.78-0.14,1.5-0.83,1.75l-1.08,0.35\n      c-0.8,0.21-1.55-0.16-1.84-0.85l-0.28-0.73l-0.13,8.96C34.97,43.15,34.52,43.59,33.98,43.59z M31.87,41.59h1.12l0.19-13.22\n      c0.01-0.48,0.35-0.88,0.82-0.97c0.46-0.09,0.93,0.17,1.11,0.62l0.09,0.23l1.86,4.92h0.01c-0.48-1.88-2.34-9.09-2.34-9.09\n      c-0.04-0.16-0.21-0.29-0.33-0.29c-0.03,0-0.06,0-0.08-0.01H25.7c-0.03,0-0.07,0.01-0.1,0.01c-0.09,0-0.26,0.13-0.31,0.32\n      c-1.61,5.92-2.22,8.19-2.46,9.08l2.06-5.18c0.18-0.44,0.64-0.71,1.11-0.61c0.47,0.09,0.81,0.49,0.82,0.97L27,41.59h1.08l0.48-6.92\n      c0.07-0.79,0.65-1.34,1.43-1.34c0.65,0,1.33,0.42,1.4,1.34L31.87,41.59L31.87,41.59z M22.7,33.66c0-0.01,0.01-0.02,0.01-0.03\n      C22.71,33.64,22.7,33.65,22.7,33.66z M37.18,33.61l0.04-0.01L37.18,33.61z M37.23,33.6l0.93-0.23L37.23,33.6z"/>\n    <path fill="#CE592C" d="M25.74,22.78l0.9-0.75h6.62l0.99,0.75"/>\n    <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.95" cy="22.37" rx="2.25" ry="0.3"/>\n    <path fill="#FDBF2D" d="M38.15,33.36c0-0.01-2.46-9.53-2.46-9.53c-0.15-0.6-0.72-1.05-1.31-1.05H25.6c-0.59,0-1.13,0.49-1.28,1.08\n      c0,0-2.59,9.54-2.59,9.55c-0.06,0.24,0.04,0.49,0.29,0.58l0.94,0.31c0.25,0.06,0.51-0.05,0.61-0.29l2.24-5.65l0.2,14.21h3\n      l0.55-7.85c0.02-0.21,0.13-0.41,0.44-0.41s0.38,0.2,0.39,0.41l0.54,7.85h3.04l0.2-14.21l2.12,5.61c0.1,0.23,0.36,0.35,0.61,0.29\n      l1.04-0.34C38.18,33.85,38.21,33.6,38.15,33.36z"/>\n    <path opacity="0.6" fill="#CF572E" enable-background="new    " d="M26.68,22.78L30,28.46l3.32-5.68"/>\n    <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M34.17,28.38l0.08-5.6h0.17l0.48,5.44l0.45,3.13 M25.81,28.38\n      l-0.08-5.59h-0.17c0,0-0.31,4.2-0.48,5.43c-0.17,1.24-0.45,3.13-0.45,3.13L25.81,28.38z"/>\n    <ellipse fill="#FDBF2D" cx="29.95" cy="17.23" rx="4.98" ry="5"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M30.35,21.74c-1.18,0.11-2.31-0.06-3.3-0.44\n      c0.94,0.68,2.12,1.04,3.36,0.92c1.27-0.12,2.38-0.71,3.19-1.59C32.69,21.23,31.57,21.63,30.35,21.74z"/>\n  </g>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <g>\n    <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n      s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n      s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n    <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  </g>\n  <g>\n    <path fill="#FFFFFF" d="M20.29,52.96c-0.12,0-0.24-0.04-0.33-0.13c-0.16-0.15-0.21-0.38-0.12-0.58l4.55-9.86\n      c0.07-0.16,0.22-0.27,0.4-0.29c0.17-0.02,0.35,0.05,0.45,0.19c0.37,0.48,1.49,1.76,2.26,2.02c0.82,0.27,3.92,0.32,5.06,0.32\n      c0.22,0,0.42,0.15,0.48,0.37s-0.03,0.45-0.22,0.56l-12.27,7.33C20.47,52.94,20.38,52.96,20.29,52.96L20.29,52.96z M24.97,43.52\n      l-3.54,7.68l9.36-5.6c-1.3-0.04-2.93-0.12-3.6-0.35C26.39,45,25.51,44.13,24.97,43.52L24.97,43.52z"/>\n    <path fill="#3F3F3F" d="M32.56,45.13c0,0-4.14,0.01-5.22-0.35c-1.08-0.35-2.5-2.18-2.5-2.18l-4.55,9.86L32.56,45.13z"/>\n    <path fill="#333333" d="M33.37,43.7c-0.18,0-0.35-0.03-0.49-0.09c-0.22-0.06-1.1-0.23-1.82-0.37l-0.22-0.07\n      c-0.28-0.12-0.59-0.39-0.77-0.8c-0.34,0.29-0.41,0.31-0.51,0.36c-0.28,0.12-0.54,0.11-0.69,0.09l-0.33-0.07\n      c-0.43-0.1-2.05-0.43-2.05-0.43l-0.3-0.11c-0.31-0.18-0.65-0.58-0.7-1.17c-0.01-0.12-0.19-3.18-0.42-6.75\n      c-0.14,0.27-0.36,0.54-0.7,0.72c-0.42,0.22-0.91,0.24-1.45,0.06c-1.69-0.54-1.41-1.97-1.3-2.5c0.02-0.09,0.04-0.18,0.05-0.27\n      c0.02-0.13,0.46-2.45,0.68-3.37c0.14-0.58,0.68-3.38,0.89-4.48c0.03-0.36,0.23-1.64,1.31-2.31c0.35-0.22,0.78-0.47,1.15-0.68\n      c-1.08-1.1-1.72-2.6-1.71-4.22c0-1.6,0.62-3.11,1.75-4.24c1.12-1.13,2.62-1.75,4.21-1.75h0.01c1.59,0,3.09,0.63,4.21,1.76\n      s1.74,2.64,1.74,4.24c0,1.43-0.5,2.77-1.37,3.82l0.47,0.01c0.33,0.01,0.65,0.15,0.88,0.39s0.35,0.56,0.34,0.89l-0.02,0.46\n      c0.28,0.37,0.48,0.82,0.55,1.27c0.01,0.01,0.49,2.04,0.89,4.51c0.3,1.87,0.67,4.54,0.75,5.23c0.13,0.8-0.27,1.48-0.98,1.67\n      c-0.28,0.11-0.98,0.31-1.5,0.23c-0.03,0-0.08-0.01-0.13-0.02l-0.17,5.13c0.03,0.22,0.01,0.45-0.01,0.65\n      c-0.05,0.52-0.42,1.09-1.09,1.72l-0.13,0.29l-0.45,0.12C33.74,43.67,33.54,43.7,33.37,43.7L33.37,43.7z M33.68,41.78\n      c0,0,0.01,0,0.01,0.01C33.69,41.78,33.68,41.78,33.68,41.78z M31.9,41.37c0.71,0.13,1.11,0.22,1.36,0.28\n      c0.17-0.17,0.29-0.32,0.36-0.41l0.3-9.24l1.97-0.19l0.44,1.92c0.01,0,0.03-0.01,0.04-0.01c-0.11-0.83-0.38-2.87-0.7-4.81\n      c-0.39-2.4-0.87-4.42-0.87-4.44c-0.04-0.24-0.15-0.44-0.27-0.55l-0.35-0.31l0.02-0.57l-2.71-0.08l-0.29-1.95\n      c1.62-0.54,2.71-2.07,2.71-3.79c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.74-1.17-2.79-1.17c-1.06,0-2.05,0.41-2.8,1.17\n      C26.41,15.14,26,16.15,26,17.22c0,1.65,0.98,3.11,2.5,3.72l-0.4,1.93l-0.82-0.02c-0.38,0.21-1.12,0.64-1.68,0.98\n      c-0.25,0.15-0.36,0.61-0.37,0.8l-0.02,0.12c-0.03,0.16-0.73,3.88-0.92,4.64c-0.16,0.66-0.45,2.16-0.58,2.86\n      c0.27-0.72,0.71-1.95,1.1-3.22l1.95,0.23c0.28,4.42,0.6,9.68,0.69,11.21c0.73,0.15,1.15,0.24,1.4,0.3\n      c0.09-0.07,0.18-0.16,0.27-0.23l0.11-4.79l1.99-0.1C31.7,39.55,31.85,40.88,31.9,41.37z M36.82,33.59c-0.02,0-0.04,0.01-0.06,0.02\n      C36.78,33.6,36.8,33.59,36.82,33.59z"/>\n    <path fill="#FABD2C" d="M22.66,32.44c-0.12,0.73-0.42,1.35,0.57,1.67c0.97,0.31,1.03-0.53,1.15-0.79c0,0,0.79-2.02,1.44-4.14\n      c0,0,0.9-3.69,0.98-4.14c0.26-1.66-0.41-2.27-1.17-2.21c-0.56,0.04-1.2,0.38-1.38,1.75c0,0-0.72,3.85-0.91,4.58\n      C23.11,30.06,22.66,32.44,22.66,32.44z"/>\n    <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M25.67,29.87l-0.2-7.11l-0.41,0.31c0,0,0.06,5.4-0.11,6.64\n      s-0.45,3.13-0.45,3.13L25.67,29.87L25.67,29.87z"/>\n    <path fill="none" d="M27.03,22.07h8.2v20.56h-8.2C27.03,42.63,27.03,22.07,27.03,22.07z"/>\n    <path fill="#E58A2C" d="M35.23,22.07l-6.16,0.37l-2.04,0.32l0.51,18.03l1.43,1.03l0.19-0.02l0.94-0.81l0.19-8.22L30.53,32\n      l1.25,10.04l1.87,0.57c0,0,0.9-0.77,0.95-1.24c0.04-0.43,0-0.47,0-0.47L35.23,22.07"/>\n    <path fill="none" d="M25.39,22.74h8.31V42.7h-8.31V22.74z"/>\n    <path fill="#FABD2C" d="M25.39,22.74l1.1,18.22c0.02,0.28,0.2,0.38,0.2,0.38s2.11,0.43,2.2,0.47h0.28c0,0-0.13-0.04-0.14-0.22\n      c-0.02-0.19,0.27-7.6,0.27-7.6c0.02-0.37,0.12-0.52,0.36-0.52s0.35,0.1,0.4,0.75c0,0,0.85,7.06,0.87,7.49s0.31,0.56,0.31,0.56\n      s1.86,0.35,1.99,0.41c0.03,0.02,0.08,0.02,0.13,0.02c0.14,0,0.32-0.05,0.32-0.05s0.03-0.03,0.02-0.32\n      c-0.1-3.46,0.46-4.13-0.04-19.32L25.39,22.74"/>\n    <path fill="none" d="M25.42,21.84h9.81v1.19h-9.81C25.42,23.03,25.42,21.84,25.42,21.84z"/>\n    <path fill="#CE592C" d="M27.03,21.84l-1.61,0.9l8.25,0.29l1.56-0.96L27.03,21.84"/>\n    <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.92" cy="22.37" rx="2.25" ry="0.3"/>\n    <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n    <path opacity="0.6" fill="#CE592C" enable-background="new    " d="M26.61,22.77l3.09,5.36l2.76-5.3"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.93,21.74c-1.19,0-2.3-0.27-3.24-0.75\n      c0.87,0.77,2.01,1.24,3.26,1.24c1.28,0,2.44-0.49,3.32-1.28C32.31,21.45,31.16,21.74,29.93,21.74L29.93,21.74z"/>\n    <path fill="#FABD2C" d="M33.99,26.06c0.1,1.59,0.92,5.97,0.92,5.97l0.54,2.33c0.08,0.24,0.27,0.33,0.62,0.38s1.09-0.21,1.09-0.21\n      c0.23-0.06,0.29-0.3,0.25-0.55c0,0-0.35-2.72-0.75-5.23c-0.4-2.46-0.89-4.51-0.89-4.51c-0.1-0.61-0.59-1.29-1.17-1.34\n      c0,0-0.69,0-0.71,1.06C33.86,25.08,33.99,26.06,33.99,26.06L33.99,26.06z"/>\n    <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M34.41,22.95c-0.2,0.08-0.5,0.32-0.52,1.01\n      c-0.03,1.12,0.1,2.1,0.1,2.1c0.09,1.36,0.7,4.73,0.87,5.7l0.01,0.05C34.88,31.81,34.3,26.32,34.41,22.95z"/>\n  </g>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n    s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n    s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n  <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  <path fill="#FFFFFF" d="M15.6,48.74c-0.19,0-0.36-0.11-0.45-0.28c-0.1-0.21-0.05-0.46,0.14-0.61l8.99-7.24\n    c0.12-0.1,0.29-0.14,0.45-0.09c0.16,0.04,0.28,0.16,0.34,0.31c0,0.01,0.5,1.37,1.25,2.01c0.64,0.54,3.01,1.28,3.87,1.51\n    c0.22,0.06,0.37,0.26,0.37,0.49s-0.16,0.42-0.39,0.48l-14.45,3.4C15.68,48.73,15.64,48.74,15.6,48.74z M24.39,41.8l-6.76,5.44\n    l10.53-2.48c-0.94-0.33-2-0.75-2.49-1.16C25.09,43.11,24.65,42.34,24.39,41.8L24.39,41.8z"/>\n  <path fill="#3F3F3F" d="M30.05,44.83c0,0-3.19-0.88-4.06-1.61c-0.87-0.73-1.4-2.22-1.4-2.22l-8.99,7.24L30.05,44.83L30.05,44.83z"/>\n  <path fill="#333333" d="M32.45,44.49c-0.09,0-0.17-0.01-0.26-0.03c-0.17-0.01-0.34-0.06-0.49-0.14c-0.12-0.07-1.39-0.81-1.6-0.93\n    c-0.39-0.2-0.81-0.67-0.84-1.41c0-0.02-0.01-0.07-0.02-0.16c-0.12,0.04-0.25,0.09-0.37,0.14c-0.12,0.09-0.25,0.16-0.41,0.19\n    c0,0-0.12,0.02-0.26,0.03c-0.1,0.01-0.19,0.01-0.29-0.01c-0.1-0.01-0.2-0.04-0.28-0.07c-0.11-0.05-0.2-0.08-1.59-1.03\n    c-0.24-0.13-0.58-0.54-0.63-1.13c-0.01-0.15-0.17-2.85-0.37-6.09c-1.54-0.33-1.47-1.65-1.44-2.15c0-0.08,0.01-0.16,0.01-0.25\n    c0-0.12,0.09-2.27,0.17-3.13c0.05-0.54,0.17-3.21,0.21-4.19c-0.01-0.59,0.1-1.13,0.33-1.56c-0.02-0.5,0.27-0.93,0.72-1.08\n    c0.06-0.02,0.12-0.04,0.18-0.04l0.37-0.11c-1.04-1.11-1.63-2.57-1.63-4.09c0-1.6,0.62-3.11,1.75-4.24\n    c1.12-1.13,2.62-1.75,4.21-1.75h0.01c1.59,0,3.09,0.63,4.21,1.76s1.74,2.64,1.74,4.24c0,1.59-0.65,3.13-1.8,4.26l0.81,0.17\n    c0.44,0.09,0.77,0.47,0.8,0.92c0.01,0.14-0.01,0.28-0.06,0.41l-0.03,0.43c0.3,0.47,0.48,1.09,0.54,1.84\n    c0.04,0.48-0.1,3.1-0.14,3.89c-0.14,2.25-0.6,4.73-0.62,4.84l-0.06,0.25c-0.11,0.41-0.21,0.79-0.41,1.09l-0.38,6.47\n    c0,0.22-0.04,0.79-0.41,1.3c-0.25,0.34-0.87,0.97-0.99,1.1C32.97,44.39,32.71,44.49,32.45,44.49L32.45,44.49z M31.25,41.75\n    c0.23,0.13,0.63,0.37,0.95,0.55c0.15-0.16,0.28-0.31,0.33-0.38c0-0.04,0.02-0.16,0.03-0.2l0.4-6.87c0.02-0.26,0.13-0.51,0.33-0.68\n    c0.04-0.11,0.08-0.29,0.13-0.45l0.05-0.18c0,0,0.44-2.42,0.58-4.51c0.08-1.56,0.16-3.35,0.14-3.62c-0.04-0.55-0.17-0.87-0.28-0.98\n    c-0.19-0.2-0.3-0.47-0.28-0.75l0.01-0.24l-2.37-0.49c-0.44-0.09-0.77-0.47-0.8-0.92c-0.03-0.45,0.26-0.87,0.69-1.01l0.15-0.04\n    c0.05-0.01,0.1-0.03,0.14-0.05c0.05-0.02,0.1-0.05,0.15-0.08l0.13-0.07c0.17-0.08,0.28-0.14,0.38-0.2\n    c0.07-0.04,0.12-0.08,0.17-0.12l0.22-0.17c0.02-0.03,0.05-0.05,0.07-0.07c0.88-0.78,1.36-1.84,1.37-2.99\n    c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.77-1.18-2.8-1.17c-1.06,0-2.05,0.41-2.79,1.17c-0.75,0.75-1.16,1.76-1.16,2.83\n    c0,1.16,0.51,2.26,1.41,3.03c0.03,0.02,0.06,0.05,0.08,0.08l0.08,0.06c0.13,0.1,0.2,0.15,0.27,0.2c0.1,0.06,0.21,0.12,0.32,0.17\n    c0.02,0.01,0.12,0.06,0.13,0.07c0.35,0.2,0.56,0.6,0.51,1s-0.31,0.74-0.7,0.85l-1.56,0.45c-0.09,0.1-0.2,0.19-0.32,0.25\n    c-0.02,0.01-0.03,0.02-0.05,0.02c0,0.01-0.01,0.01-0.02,0.02c-0.03,0.04-0.14,0.21-0.13,0.71c-0.01,0.2-0.15,3.65-0.22,4.35\n    c-0.08,0.81-0.16,2.97-0.16,2.99c0,0.09-0.01,0.2-0.01,0.3v0.04c0.25-0.1,0.53-0.1,0.78,0.01c0.34,0.15,0.57,0.48,0.59,0.85\n    c0.19,3.16,0.37,6.02,0.42,6.86c0.22,0.15,0.53,0.36,0.77,0.52c0.04-0.02,0.09-0.03,0.14-0.05l0.28-3.18\n    c0.04-0.51,0.46-0.9,0.97-0.91h0.03c0.5,0,0.92,0.37,0.99,0.86C31.09,40.41,31.22,41.42,31.25,41.75L31.25,41.75z M27.13,39.36\n    c0.01,0.01,0.04,0.03,0.1,0.07C27.19,39.41,27.16,39.38,27.13,39.36z"/>\n  <path fill="#E58A2C" d="M34.68,22.64l-4.46-0.83c0,0-2.42,0.35-2.43,0.35l-0.46,17.98l0.78,1.03c0,0,1.02-0.38,1.1-0.41\n    c0.08-0.03,0.07-0.18,0.07-0.18l0.66-7.54l1.46,9.74l1.04,0.7c0,0,0.68-0.69,0.89-0.98c0.24-0.33,0.22-0.73,0.22-0.73L34.68,22.64\n    L34.68,22.64z"/>\n  <path fill="#FABD2C" d="M32.66,33.53c-0.02,0.57-0.27,1.23,0.75,1.41c0.74,0.13,0.75-0.11,1.02-1.13c0,0,0.47-2.5,0.61-4.71\n    c0,0,0.18-3.31,0.14-3.76c-0.12-1.66-0.91-2.11-1.64-1.87c-0.53,0.17-1.08,0.65-0.94,2.01c0,0,0.18,3.89,0.18,4.64\n    C32.76,31.05,32.66,33.53,32.66,33.53L32.66,33.53z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M32.66,33.53c-0.02,0.4,0.19-1.86,0.42-4.94\n    c0.1-1.35-0.08-4.87-0.27-4.56s-0.29,0.77-0.22,1.45c0,0,0.18,3.89,0.18,4.64C32.76,31.05,32.66,33.53,32.66,33.53z"/>\n  <path fill="#FABD2C" d="M24.64,31.45c-0.01,0.67-0.2,1.27,0.73,1.43c0.91,0.15,0.86-0.61,0.93-0.87c0,0,0.45-1.92,0.75-3.91\n    c0,0,0.33-3.44,0.33-3.85c0.02-1.52-0.66-1.99-1.35-1.84c-0.5,0.11-1.03,0.5-1.01,1.75c0,0-0.15,3.56-0.21,4.24\n    C24.72,29.24,24.64,31.45,24.64,31.45z"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M24.64,31.45c-0.01,0.67-0.2,1.27,0.73,1.43\n    c0.91,0.15,0.86-0.61,0.93-0.87c0,0,0.45-1.92,0.75-3.91c0,0,0.33-3.44,0.33-3.85c0.02-1.52-0.66-1.99-1.35-1.84\n    c-0.5,0.11-1.03,0.5-1.01,1.75c0,0-0.15,3.56-0.21,4.24C24.72,29.24,24.64,31.45,24.64,31.45z"/>\n  <path fill="#FABD2C" d="M31.56,23.71l-6.17-1.29c0,0-0.05,0.01-0.04,0.09c0.13,1.5,1.07,17.08,1.09,17.34\n    c0.02,0.27,0.19,0.37,0.19,0.37s1.3,0.89,1.39,0.93s0.27,0,0.27,0s-0.13-0.04-0.14-0.23c-0.02-0.19,0.3-7.46,0.3-7.46\n    c0.01-0.37,0.11-0.52,0.36-0.53c0.24,0,0.29,0.15,0.31,0.53c0,0,1.14,8.05,1.15,8.48s0.31,0.56,0.31,0.56s1.47,0.86,1.59,0.92\n    s0.3,0.01,0.3,0.01s-0.22-0.01-0.22-0.3C32.25,42.94,31.56,23.71,31.56,23.71L31.56,23.71z"/>\n  <path opacity="0.6" fill="#CE592C" enable-background="new    " d="M26.74,22.67l2.02,4.98l1.23-4.26"/>\n  <path fill="#CE592C" d="M25.43,22.42l6.13,1.29l3.16-1.07l-5.88-1.2"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.89" cy="22.41" rx="2.25" ry="0.43"/>\n  <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.93,21.74c-1.19,0-2.3-0.27-3.24-0.75\n    c0.87,0.77,2.01,1.24,3.26,1.24c1.28,0,2.44-0.49,3.32-1.28C32.31,21.45,31.16,21.74,29.93,21.74L29.93,21.74z"/>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <g>\n    <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n      s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.68,33.64,41.57,27.19,30.33,27.19z M30.21,55.03\n      c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n    <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  </g>\n  <g>\n    <path fill="#FFFFFF" d="M12.95,45.15c-0.24,0-0.44-0.17-0.49-0.4c-0.05-0.23,0.08-0.47,0.3-0.56l11.98-4.97\n      c0.15-0.06,0.31-0.05,0.45,0.03s0.23,0.22,0.24,0.38c0,0.01,0.14,1.46,0.71,2.26c0.49,0.69,2.3,1.86,2.96,2.25\n      c0.19,0.12,0.29,0.34,0.23,0.56c-0.06,0.22-0.26,0.37-0.48,0.37L12.95,45.15L12.95,45.15z M24.54,40.39l-9.04,3.75l11.68-0.06\n      c-0.71-0.5-1.49-1.11-1.85-1.61C24.88,41.85,24.65,40.98,24.54,40.39z"/>\n    <path fill="#3F3F3F" d="M28.85,44.58c0,0-2.46-1.47-3.12-2.39c-0.66-0.93-0.8-2.5-0.8-2.5l-11.98,4.97L28.85,44.58L28.85,44.58z"\n      />\n    <path fill="#333333" d="M30.68,44.46c-0.26,0-0.52-0.09-0.73-0.26c-0.08-0.07-0.83-0.82-0.95-0.95c-0.19-0.18-0.49-0.57-0.5-1.26\n      c0-0.04-0.01-0.12-0.01-0.25c-0.05,0.01-0.08,0.02-0.08,0.02c-0.46,0.12-0.78,0-0.97-0.12c-0.12-0.08-0.17-0.11-1.08-1.1\n      c-0.06-0.05-0.36-0.38-0.38-1.01c-0.01-0.16-0.15-2.69-0.31-5.77c-0.72-0.23-1.44-0.83-1.17-2.37l0.03-0.18\n      c0-0.01,0.29-2.23,0.37-3.07c0.05-0.54,0.17-3.21,0.21-4.19c0-0.08,0-0.19,0.01-0.31l-0.06-1.09c-0.02-0.39,0.21-0.84,0.55-1.03\n      c0.05-0.03,0.11-0.05,0.16-0.07c-1.13-1.13-1.78-2.65-1.77-4.24c0-1.6,0.62-3.11,1.75-4.24c1.12-1.13,2.62-1.75,4.21-1.75h0.01\n      c1.59,0,3.09,0.63,4.21,1.76s1.74,2.64,1.74,4.24c0,1.61-0.66,3.15-1.83,4.29c-0.03,0.04-0.06,0.08-0.1,0.12l0.14,0.04\n      c0.46,0.13,0.76,0.56,0.73,1.04l-0.07,0.85c0.25,0.45,0.4,1.02,0.45,1.69c0.03,0.47,0.01,3.67,0.01,4.31\n      c-0.14,2.31-0.66,4.54-0.69,4.63c-0.1,0.68-0.34,1.18-0.71,1.5l-0.52,6.71c0,0.4-0.26,1.09-0.99,1.46\n      c-0.5,0.25-0.99,0.42-1.19,0.49C31,44.43,30.84,44.46,30.68,44.46L30.68,44.46z M30.5,41.93c0.1,0.1,0.25,0.26,0.4,0.41\n      c0.14-0.05,0.29-0.12,0.45-0.2l0.55-7.12c0.03-0.39,0.28-0.72,0.64-0.86c0.02-0.08,0.04-0.19,0.05-0.24\n      c0-0.01,0.02-0.12,0.02-0.13c0.01-0.07,0.51-2.2,0.64-4.28c0.01-1.78,0.01-3.84,0-4.09c-0.04-0.6-0.19-0.86-0.27-0.96\n      c-0.16-0.2-0.23-0.45-0.21-0.7l0.03-0.37l-1.61-0.45c-0.42-0.12-0.72-0.5-0.73-0.94s0.27-0.84,0.69-0.97l0.15-0.04\n      c0.05-0.01,0.1-0.03,0.14-0.05c0.05-0.02,0.1-0.05,0.15-0.08l0.13-0.07c0.17-0.08,0.28-0.14,0.38-0.2\n      c0.07-0.04,0.12-0.08,0.17-0.12l0.22-0.17c0.02-0.03,0.05-0.05,0.07-0.07c0.88-0.78,1.36-1.84,1.37-2.99\n      c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.74-1.17-2.79-1.17c-1.06,0-2.05,0.41-2.79,1.17c-0.75,0.75-1.16,1.76-1.16,2.83\n      c0,1.16,0.51,2.26,1.41,3.03c0.03,0.02,0.06,0.05,0.08,0.08l0.08,0.06c0.13,0.1,0.2,0.15,0.27,0.2c0.1,0.06,0.21,0.12,0.32,0.17\n      l0.19,0.1c0.03,0.02,0.07,0.04,0.1,0.05c0.39,0.16,0.64,0.55,0.62,0.98c-0.02,0.42-0.31,0.79-0.72,0.91l-1.25,0.36l0.02,0.44v0.13\n      c-0.01,0.08-0.01,0.16-0.01,0.25c-0.01,0.2-0.15,3.65-0.22,4.35c-0.08,0.85-0.38,3.12-0.38,3.12c-0.01,0.08-0.03,0.18-0.04,0.28\n      c0,0.02-0.01,0.04-0.01,0.06c0.24-0.03,0.49,0.02,0.71,0.16c0.27,0.17,0.44,0.49,0.45,0.81c0.23,4.28,0.33,6.11,0.36,6.57\n      c0.07,0.08,0.16,0.17,0.25,0.27l0.07-0.82c0.05-0.52,0.48-0.91,1-0.91h0.01c0.52,0,0.95,0.41,0.99,0.93\n      C30.43,40.79,30.49,41.69,30.5,41.93L30.5,41.93z M27.77,39.13l0.1,0.1L27.77,39.13z"/>\n    <path fill="#FABD2C" d="M25.51,31.34c-0.06,0.52-0.36,1.3,0.56,1.51s1.03-0.7,1.1-0.95c0,0,0.65-1.97,0.95-3.96\n      c0,0,0.33-3.44,0.33-3.85c0.02-1.52-0.66-1.99-1.35-1.84c-0.5,0.11-1.03,0.5-1.01,1.75c0,0-0.15,3.56-0.21,4.24\n      C25.81,29.09,25.51,31.34,25.51,31.34L25.51,31.34z"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M25.51,31.34c-0.06,0.52-0.36,1.3,0.56,1.51\n      s1.03-0.7,1.1-0.95c0,0,0.65-1.97,0.95-3.96c0,0,0.33-3.44,0.33-3.85c0.02-1.52-0.66-1.99-1.35-1.84c-0.5,0.11-1.03,0.5-1.01,1.75\n      c0,0-0.15,3.56-0.21,4.24C25.81,29.09,25.51,31.34,25.51,31.34L25.51,31.34z"/>\n    <path fill="#E58A2C" d="M33.86,22.64l-4.31-1.2c0,0-3.41,1.02-3.43,1.02l0.98,17.31l1.04,1.03c0,0,0.81-0.22,0.91-0.26\n      c0.1-0.03,0.1-0.18,0.1-0.18l0.15-1.68l0.7,4.1l0.72,0.66c0,0,0.6-0.18,1.16-0.47c0.45-0.23,0.45-0.65,0.45-0.65L33.86,22.64z"/>\n    <path fill="#FABD2C" d="M29.97,23.71l-3.89-1.29c0,0-0.03,0.01-0.03,0.09c0.08,1.5,0.91,16.72,0.92,16.99s0.12,0.37,0.12,0.37\n      s0.82,0.89,0.88,0.93s0.17,0,0.17,0s-0.08-0.04-0.09-0.23s0.38-7.48,0.38-7.48c0.01-0.37,0.07-0.52,0.23-0.53\n      c0.15,0,0.19,0.15,0.19,0.53c0,0,0.63,8.45,0.64,8.88s0.2,0.56,0.2,0.56s0.82,0.83,0.89,0.89c0.08,0.06,0.19,0.01,0.19,0.01\n      s-0.14-0.01-0.14-0.3C30.64,42.94,29.97,23.71,29.97,23.71L29.97,23.71z"/>\n    <path fill="#CE592C" d="M26.08,22.42l3.89,1.29l3.89-1.07l-4.37-1.2"/>\n    <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.7" cy="22.4" rx="2.13" ry="0.52"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M33.97,25.66c-0.04-1.67-0.72-2.46-1.44-2.22\n      c-0.81,0.27-1.29,1.03-1.21,2.4c0,0,0.07,3.73,0.03,4.48c-0.05,0.93-0.27,3.4-0.27,3.4c-0.05,0.57-0.33,1.44,0.68,1.63\n      c0.22,0.04,0.39-0.01,0.53-0.12l0.28-0.43c0,0,0.97-2.72,1.21-4.91C33.78,29.87,33.98,26.11,33.97,25.66L33.97,25.66z"/>\n    <path fill="#FABD2C" d="M31.73,33.53c-0.02,0.57-0.27,1.45,0.76,1.59c1.02,0.14,1.05-0.86,1.11-1.14c0,0,0.52-2.21,0.66-4.41\n      c0,0,0.03-3.78-0.01-4.23c-0.12-1.66-0.91-2.11-1.64-1.87c-0.53,0.17-1.08,0.65-0.94,2.01c0,0,0.18,3.89,0.18,4.64\n      C31.83,31.05,31.73,33.53,31.73,33.53L31.73,33.53z"/>\n    <path opacity="0.3" fill="#CE592C" enable-background="new    " d="M32.08,33.84c0,0,0.08-2.81,0.08-3.77\n      c0.01-0.79-0.3-4.73-0.3-4.73c-0.08-0.79,0.06-1.31,0.29-1.63c-0.34,0.28-0.59,0.82-0.49,1.79c0,0,0.18,3.89,0.18,4.64\n      c-0.01,0.93-0.11,3.41-0.11,3.41c-0.02,0.45-0.17,1.1,0.28,1.42C32.03,34.69,32.07,34.22,32.08,33.84L32.08,33.84z"/>\n    <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.93,21.74c-1.19,0-2.3-0.27-3.24-0.75\n      c0.87,0.77,2.01,1.24,3.26,1.24c1.28,0,2.44-0.49,3.32-1.28C32.31,21.45,31.16,21.74,29.93,21.74L29.93,21.74z"/>\n    <path opacity="0.6" fill="#CE592C" enable-background="new    " d="M27.13,22.77l0.94,4.66l0.76-4.1"/>\n  </g>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <g>\n    <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.19c-11.24,0-20.35,6.46-20.35,14.42\n      s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42S41.57,27.19,30.33,27.19z M30.21,55.03c-10.75,0-19.47-6.06-19.47-13.53\n      s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.03,30.21,55.03z"/>\n    <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.5" rx="19.47" ry="13.53"/>\n  </g>\n  <g>\n    <path fill="#333333" d="M29.67,43.83c-0.5,0-0.95-0.04-1.17-0.07c-0.33,0.02-0.56-0.08-0.71-0.18s-0.29-0.18-0.88-1.05\n      c-0.1-0.15-0.16-0.33-0.17-0.51c-0.01-0.19-1.01-18.74-1.11-20.21c-0.01-0.14,0.01-0.28,0.06-0.42c-1.07-1.11-1.69-2.6-1.69-4.16\n      c0-1.6,0.62-3.11,1.75-4.24c1.12-1.13,2.62-1.75,4.21-1.75h0.01c1.59,0,3.09,0.63,4.21,1.76s1.74,2.64,1.74,4.24\n      c0,1.74-0.75,3.35-2.02,4.47l0.19,0.15c0.26,0.21,0.4,0.54,0.36,0.88L32.48,42.4c-0.04,0.75-0.83,1.05-1.22,1.2\n      C30.82,43.78,30.21,43.83,29.67,43.83z M30.48,42.22c0,0.05-0.01,0.09-0.01,0.14v-0.12L30.48,42.22z M28.82,41.78\n      c0.63,0.06,1.44,0.06,1.71-0.04l1.87-18.66l-0.69-0.56c-0.23-0.14-0.4-0.36-0.46-0.62c-0.1-0.45,0.08-0.91,0.49-1.12\n      c1.35-0.69,2.18-2.05,2.18-3.54c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.77-1.14-2.8-1.17c-1.06,0-2.05,0.41-2.79,1.17\n      c-0.75,0.75-1.16,1.76-1.16,2.83c0,1.42,0.73,2.7,1.97,3.44c0.35,0.21,0.54,0.61,0.48,1.02c-0.07,0.41-0.37,0.73-0.77,0.82\n      c0.21,3.64,0.93,16.94,1.05,19.13C28.75,41.68,28.78,41.73,28.82,41.78L28.82,41.78z"/>\n    <path fill="#FFFFFF" d="M26.99,43.9h-0.06l-15.16-1.99c-0.25-0.03-0.44-0.25-0.44-0.5s0.19-0.46,0.44-0.5L26.58,39\n      c0.23-0.03,0.45,0.1,0.53,0.32s0.01,0.46-0.18,0.59c-0.01,0.01-1.05,0.76-0.77,1.39c0.43,0.94,1.18,1.75,1.19,1.75\n      c0.14,0.15,0.18,0.38,0.08,0.57C27.35,43.79,27.18,43.9,26.99,43.9L26.99,43.9z M15.71,41.41l10.13,1.33\n      c-0.2-0.3-0.42-0.65-0.59-1.02c-0.25-0.55-0.14-1.09,0.11-1.55L15.71,41.41z"/>\n    <path fill="#3F3F3F" d="M26.99,43.4c0,0-0.81-0.86-1.28-1.89c-0.47-1.03,0.94-2.01,0.94-2.01l-14.81,1.91L26.99,43.4L26.99,43.4z"\n      />\n    <path fill="#E58A2C" d="M33.45,22.64l-5.6-1.2c0,0-1.12,0.24-1.14,0.24l1.43,20.54l0.35,0.53c0,0,1.68,0.21,2.41-0.08\n      c0.58-0.23,0.58-0.34,0.58-0.34L33.45,22.64L33.45,22.64z"/>\n    <path fill="#FABD2C" d="M27.38,22.7l-0.73-1.06c0,0-0.04,0.01-0.03,0.09c0.1,1.5,1.11,20.23,1.11,20.23s0.47,0.7,0.58,0.76\n      c0.1,0.06,0.25,0.01,0.25,0.01s-0.18-0.01-0.18-0.3C28.37,42.24,27.38,22.7,27.38,22.7L27.38,22.7z"/>\n    <path fill="#CE592C" d="M26.65,21.65l0.73,1.05l6.07-0.06l-1.2-0.97"/>\n    <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.9" cy="22.01" rx="2.13" ry="0.52"/>\n    <path fill="#FABD2C" d="M29.26,33.53c-0.02,0.57-0.31,1.45,0.87,1.59c1.17,0.14,1.21-0.86,1.27-1.14c0,0,0.42-2.16,0.58-4.36\n      c0,0,0.21-3.83,0.17-4.28c-0.14-1.66-1.05-2.11-1.88-1.87c-0.61,0.17-1.24,0.65-1.08,2.01c0,0,0.03,3.94,0.02,4.69\n      C29.19,31.1,29.26,33.53,29.26,33.53z"/>\n    <path opacity="0.3" fill="#CE592C" enable-background="new    " d="M29.66,33.84c0,0-0.09-2.76-0.09-3.72\n      c0.01-0.79-0.16-4.78-0.16-4.78c-0.09-0.79,0.06-1.31,0.33-1.63c-0.39,0.28-0.68,0.82-0.56,1.79c0,0,0.03,3.94,0.02,4.69\n      c-0.01,0.93,0.05,3.36,0.05,3.36c-0.02,0.45-0.2,1.1,0.32,1.42C29.6,34.69,29.65,34.22,29.66,33.84L29.66,33.84z"/>\n    <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.93,21.74c-1.19,0-2.3-0.27-3.24-0.75\n      c0.87,0.77,2.01,1.24,3.26,1.24c1.28,0,2.44-0.49,3.32-1.28C32.31,21.45,31.16,21.74,29.93,21.74L29.93,21.74z"/>\n  </g>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <g>\n    <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.2c-11.24,0-20.35,6.46-20.35,14.42\n      s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.68,33.65,41.57,27.2,30.33,27.2z M30.21,55.04\n      c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.04,30.21,55.04z"/>\n    <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.51" rx="19.47" ry="13.53"/>\n  </g>\n  <g>\n    <path fill="#FFFFFF" d="M25.76,42.6c-0.07,0-0.14-0.01-0.2-0.04l-12.42-5.44c-0.23-0.1-0.35-0.35-0.28-0.59\n      c0.06-0.24,0.29-0.4,0.54-0.37l15.03,1.64c0.24,0.03,0.42,0.21,0.44,0.45s-0.12,0.45-0.35,0.53c-1.03,0.33-2.18,0.96-2.26,1.39\n      c-0.18,1-0.02,1.82-0.01,1.83c0.04,0.18-0.03,0.37-0.17,0.49C25.99,42.57,25.87,42.6,25.76,42.6L25.76,42.6z M16.53,37.52\n      l8.65,3.79c-0.01-0.37,0.01-0.82,0.1-1.32c0.1-0.56,0.63-1.03,1.21-1.39L16.53,37.52L16.53,37.52z"/>\n    <path fill="#3F3F3F" d="M25.76,42.1c0,0-0.22-0.92,0.01-2.03c0.22-1.04,2.6-1.78,2.6-1.78l-15.03-1.64L25.76,42.1L25.76,42.1z"/>\n    <path fill="#333333" d="M28.81,44.46c-0.16,0-0.31-0.03-0.46-0.09c-0.2-0.07-0.69-0.24-1.19-0.49c-0.74-0.37-1-1.07-1-1.54\n      l-0.51-6.59c-0.82-0.58-0.73-1.65-0.7-2.06l0.01-0.2c0-0.01,0.1-2.46,0.11-3.38c0-0.24-0.02-1.02-0.12-3.38l-0.31-4.02\n      c-0.04-0.48,0.27-0.91,0.73-1.04l0.46-0.13c-0.01-0.01-0.01-0.02-0.02-0.03c-1.16-1.13-1.82-2.68-1.83-4.28\n      c0-1.6,0.62-3.11,1.74-4.24c1.12-1.13,2.62-1.76,4.22-1.76h0.01c1.59,0,3.09,0.62,4.21,1.75c1.13,1.13,1.75,2.64,1.75,4.24\n      c0,1.63-0.67,3.19-1.86,4.33c0.06,0.04,0.12,0.09,0.18,0.14c0.58,0.5,0.86,1.31,0.85,2.41c0,0.43-0.28,3.35-0.34,3.93\n      c-0.2,1.33-0.53,2.6-0.78,3.47c-0.22,4-0.43,7.85-0.44,8.03c-0.03,0.63-0.32,0.96-0.45,1.07c-0.84,0.92-0.89,0.96-1.01,1.03\n      c-0.4,0.25-0.81,0.17-0.99,0.12c-0.02,0-0.04-0.01-0.06-0.01C31,41.87,31,41.95,31,41.99c-0.01,0.69-0.31,1.08-0.5,1.26\n      c-0.13,0.13-0.87,0.88-0.95,0.94C29.34,44.37,29.08,44.46,28.81,44.46L28.81,44.46z M28.15,42.14c0.16,0.08,0.32,0.14,0.45,0.2\n      c0.14-0.15,0.3-0.31,0.4-0.4c0.02-0.46,0.16-2.31,0.22-3.12c0.04-0.52,0.47-0.92,0.99-0.93h0.01c0.52,0,0.95,0.39,1,0.91\n      l0.07,0.82c0.09-0.1,0.18-0.19,0.25-0.27c0.02-0.4,0.11-2.03,0.44-8.06c0-0.08,0.02-0.15,0.04-0.23c0.24-0.81,0.56-2.04,0.75-3.26\n      c0.15-1.61,0.32-3.47,0.32-3.71c0.01-0.69-0.16-0.87-0.16-0.87c-0.15,0.02-0.25,0.04-0.39,0l-1.14-0.33\n      c-0.41-0.12-0.7-0.48-0.72-0.91c-0.02-0.43,0.23-0.82,0.63-0.98l0.12-0.05c0.06-0.03,0.12-0.06,0.17-0.08l0.11-0.06\n      c0.13-0.06,0.25-0.12,0.37-0.2c0.07-0.04,0.13-0.1,0.2-0.15c0.06-0.05,0.11-0.08,0.15-0.11c0.02-0.03,0.05-0.05,0.08-0.07\n      c0.9-0.77,1.41-1.88,1.41-3.03c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.74-1.17-2.79-1.17c-1.06,0-2.05,0.42-2.8,1.17\n      c-0.75,0.76-1.16,1.76-1.16,2.83c0,1.15,0.49,2.21,1.37,2.99c0.03,0.02,0.05,0.05,0.08,0.08l0.22,0.17l0.15,0.12\n      c0.11,0.07,0.22,0.13,0.34,0.18l0.17,0.09c0.05,0.03,0.1,0.05,0.15,0.08c0,0,0.12,0.05,0.13,0.05c0.41,0.15,0.67,0.55,0.65,0.98\n      s-0.31,0.81-0.73,0.92l-1.81,0.51l0.25,3.23c0.09,1.99,0.13,3.13,0.12,3.51c-0.01,0.94-0.11,3.44-0.11,3.44\n      c0,0.08-0.01,0.18-0.02,0.28c-0.01,0.08-0.02,0.2-0.02,0.29c0.36,0.14,0.64,0.48,0.67,0.87L28.15,42.14L28.15,42.14z M31.67,39.2\n      c-0.03,0.02-0.05,0.04-0.06,0.07C31.64,39.22,31.67,39.2,31.67,39.2z"/>\n    <path fill="#CE592C" d="M31.14,31.34c-0.06,0.52-0.36,1.3,0.56,1.51s1.03-0.7,1.1-0.95c0,0,0.65-1.97,0.95-3.96\n      c0,0,0.33-3.44,0.33-3.85c0.02-1.52-0.66-1.99-1.35-1.84c-0.5,0.11-1.03,0.5-1.01,1.75c0,0-0.15,3.56-0.21,4.24\n      C31.43,29.09,31.14,31.34,31.14,31.34L31.14,31.34z"/>\n    <path fill="#FDBF2D" d="M25.64,22.64l4.31-1.2c0,0,3.41,1.02,3.43,1.02L32.4,39.77l-1.04,1.03c0,0-0.81-0.22-0.91-0.26\n      c-0.1-0.03-0.1-0.18-0.1-0.18l-0.15-1.68l-0.7,4.1l-0.72,0.66c0,0-0.6-0.18-1.16-0.47c-0.45-0.23-0.45-0.65-0.45-0.65L25.64,22.64\n      z"/>\n    <path fill="#CE592C" d="M26.43,33.85c-0.01,0.58-0.14,1.33,0.9,1.51c0.76,0.13,0.77-0.13,1.03-1.17c0,0,0.44-2.57,0.55-4.83\n      c0,0,0.13-3.4,0.08-3.86c-0.16-1.71-0.98-2.15-1.72-1.91c-0.55,0.18-1.1,0.67-0.93,2.07c0,0,0.14,3.92,0.15,4.7\n      C26.5,31.3,26.43,33.85,26.43,33.85L26.43,33.85z"/>\n    <path fill="#FABD2C" d="M29.53,23.71l3.89-1.29c0,0,0.03,0.01,0.03,0.09c-0.08,1.5-0.91,16.72-0.92,16.99s-0.12,0.37-0.12,0.37\n      s-0.82,0.89-0.88,0.93s-0.17,0-0.17,0s0.08-0.04,0.09-0.23s-0.38-7.48-0.38-7.48c-0.01-0.37-0.07-0.52-0.23-0.53\n      c-0.15,0-0.19,0.15-0.19,0.53c0,0-0.63,8.45-0.64,8.88s-0.2,0.56-0.2,0.56s-0.82,0.83-0.89,0.89c-0.08,0.06-0.19,0.01-0.19,0.01\n      s0.14-0.01,0.14-0.3C28.86,42.94,29.53,23.71,29.53,23.71L29.53,23.71z"/>\n    <path opacity="0.3" fill="#CE592C" enable-background="new    " d="M29.53,23.71l3.89-1.29c0,0,0.03,0.01,0.03,0.09\n      c-0.08,1.5-0.91,16.72-0.92,16.99s-0.12,0.37-0.12,0.37s-0.82,0.89-0.88,0.93s-0.17,0-0.17,0s0.08-0.04,0.09-0.23\n      s-0.38-7.48-0.38-7.48c-0.01-0.37-0.07-0.52-0.23-0.53c-0.15,0-0.19,0.15-0.19,0.53c0,0-0.63,8.45-0.64,8.88s-0.2,0.56-0.2,0.56\n      s-0.82,0.83-0.89,0.89c-0.08,0.06-0.19,0.01-0.19,0.01s0.14-0.01,0.14-0.3C28.86,42.94,29.53,23.71,29.53,23.71L29.53,23.71z"/>\n    <path fill="#CE592C" d="M33.42,22.42l-3.89,1.29l-3.89-1.07l4.37-1.2"/>\n    <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="29.8" cy="22.4" rx="2.13" ry="0.52"/>\n    <path fill="#FABD2C" d="M25.97,33.53c-0.02,0.57-0.27,1.45,0.76,1.59c1.02,0.14,1.05-0.86,1.11-1.14c0,0,0.52-2.21,0.66-4.41\n      c0,0,0.03-3.78-0.01-4.23c-0.12-1.66-0.91-2.11-1.64-1.87c-0.53,0.17-1.08,0.65-0.94,2.01c0,0,0.18,3.89,0.18,4.64\n      C26.07,31.05,25.97,33.53,25.97,33.53L25.97,33.53z"/>\n    <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M25.97,33.53c-0.02,0.57-0.27,1.45,0.76,1.59\n      c1.02,0.14,1.05-0.86,1.11-1.14c0,0,0.52-2.21,0.66-4.41c0,0,0.03-3.78-0.01-4.23c-0.12-1.66-0.91-2.11-1.64-1.87\n      c-0.53,0.17-1.08,0.65-0.94,2.01c0,0,0.18,3.89,0.18,4.64C26.07,31.05,25.97,33.53,25.97,33.53L25.97,33.53z"/>\n    <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.98,21.74c1.19,0,2.3-0.27,3.24-0.75\n      c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.6,21.45,28.75,21.74,29.98,21.74L29.98,21.74z"/>\n    <path fill="#FDBF2D" d="M25.99,33.53c-0.04,1.16,0.54,0.95,0.82,0.81c0.99-0.52,1.09-5.12,1.2-6.56c0.07-0.97,0.16-3.58-0.78-4.26\n      c-0.55-0.21-1.04,0.42-1.09,0.51c-0.19,0.31-0.29,0.77-0.22,1.45c0,0,0.18,3.89,0.18,4.64C26.09,31.05,25.99,33.53,25.99,33.53z"\n      />\n  </g>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <g>\n    <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.2c-11.24,0-20.35,6.46-20.35,14.42\n      s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.68,33.65,41.57,27.2,30.33,27.2z M30.21,55.04\n      c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.04,30.21,55.04z"/>\n    <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.51" rx="19.47" ry="13.53"/>\n  </g>\n  <g>\n    <path fill="#FFFFFF" d="M25.23,41.88c-0.14,0-0.27-0.06-0.37-0.16l-7.88-8.59c-0.16-0.17-0.18-0.43-0.04-0.62\n      c0.13-0.19,0.38-0.26,0.6-0.18l13.95,5.63c0.22,0.09,0.35,0.33,0.3,0.57s-0.25,0.41-0.51,0.4c-2.16-0.08-4.25,0.11-4.56,0.42\n      c-0.49,0.49-0.89,1.73-1,2.16c-0.05,0.18-0.19,0.32-0.36,0.36C25.31,41.88,25.27,41.88,25.23,41.88z M19.21,34.08l5.81,6.33\n      c0.21-0.58,0.55-1.33,0.99-1.77c0.43-0.43,1.61-0.62,2.77-0.69L19.21,34.08z"/>\n    <path fill="#3F3F3F" d="M25.23,41.38c0,0,0.38-1.63,1.13-2.39c0.75-0.75,4.93-0.57,4.93-0.57l-13.95-5.63L25.23,41.38z"/>\n    <path fill="#333333" d="M27.48,44.47c-0.26,0-0.52-0.09-0.7-0.28c-0.12-0.12-0.75-0.76-0.99-1.1c-0.37-0.51-0.41-1.07-0.41-1.3\n      l-0.36-6.17c-0.96-0.56-0.9-1.66-0.88-2.07l0.01-0.14c0-0.01,0.1-2.46,0.11-3.38c0.01-0.75-0.07-4.55-0.07-4.55\n      c-0.06-0.55-0.01-1.06,0.15-1.51l-0.06-1.08c-0.03-0.1-0.04-0.2-0.03-0.31c0.03-0.45,0.33-0.84,0.78-0.93l0.79-0.16\n      c-1.15-1.13-1.8-2.67-1.81-4.26c0-1.6,0.62-3.11,1.74-4.24c1.12-1.13,2.62-1.76,4.22-1.76h0.01c1.59,0,3.09,0.62,4.21,1.75\n      c1.13,1.13,1.75,2.64,1.75,4.24c0,1.52-0.58,2.97-1.62,4.09l0.46,0.13c0.16,0.03,0.31,0.1,0.43,0.19c0.51,0.3,1.17,0.99,1.14,2.61\n      c0,0.43-0.28,3.35-0.34,3.93c-0.31,2.06-0.75,3.97-0.77,4.05c-0.04,0.25-0.1,0.6-0.3,0.92c-0.22,3.53-0.41,6.62-0.41,6.76\n      c-0.04,0.61-0.39,1.01-0.7,1.19c-1.32,0.91-1.4,0.94-1.52,0.99c-0.06,0.02-0.14,0.04-0.23,0.06c-0.11,0.03-0.22,0.03-0.33,0.02\n      c-0.14-0.01-0.27-0.03-0.27-0.03c-0.16-0.03-0.31-0.1-0.43-0.19c-0.11-0.04-0.23-0.09-0.34-0.13c-0.01,0.09-0.02,0.15-0.02,0.18\n      c-0.02,0.72-0.45,1.19-0.83,1.39c-0.21,0.12-1.48,0.86-1.6,0.92c-0.19,0.1-0.41,0.13-0.63,0.15\n      C27.57,44.47,27.52,44.47,27.48,44.47z M26.13,33.94c0.01,0,0.02,0,0.04,0.01c0.45,0.09,0.79,0.47,0.81,0.92l0.4,6.85v0.12\n      c0,0.01,0.01,0.07,0.03,0.09c0.05,0.07,0.18,0.22,0.33,0.38c0.32-0.18,0.72-0.42,0.95-0.55c0.04-0.36,0.17-1.41,0.66-4.95\n      c0.07-0.5,0.49-0.86,0.99-0.86h0.03c0.51,0.01,0.93,0.41,0.97,0.91l0.28,3.18c0.05,0.02,0.09,0.03,0.14,0.05\n      c0.24-0.16,0.56-0.38,0.77-0.52c0.05-0.82,0.23-3.69,0.42-6.86c0.01-0.24,0.11-0.46,0.27-0.63c0.01-0.03,0.01-0.06,0.01-0.09\n      c0.02-0.1,0.03-0.18,0.05-0.25c0,0,0.43-1.88,0.72-3.79c0.15-1.61,0.32-3.47,0.32-3.71c0.01-0.55-0.11-0.8-0.15-0.86\n      c-0.05,0.04-0.1,0.08-0.15,0.11c-0.1,0.07-0.22,0.12-0.34,0.14l-1.31,0.27c-0.29,0.06-0.6-0.01-0.83-0.2s-0.37-0.48-0.37-0.78\n      c0-0.2,0.06-0.39,0.17-0.55c-0.13-0.15-0.21-0.35-0.23-0.55c-0.04-0.41,0.18-0.8,0.55-0.99c0.19-0.1,0.31-0.16,0.43-0.23\n      c0.07-0.05,0.14-0.1,0.21-0.16c0.06-0.04,0.1-0.08,0.14-0.1c0.02-0.03,0.05-0.05,0.08-0.07c0.9-0.77,1.41-1.88,1.41-3.03\n      c0-1.07-0.41-2.07-1.16-2.83c-0.75-0.75-1.74-1.17-2.79-1.17c-1.06,0-2.05,0.42-2.8,1.17c-0.75,0.76-1.16,1.76-1.16,2.83\n      c0,1.15,0.49,2.21,1.37,2.99c0.03,0.02,0.05,0.05,0.08,0.08l0.21,0.16c0.05,0.04,0.11,0.09,0.16,0.12\n      c0.11,0.07,0.22,0.13,0.34,0.18l0.17,0.09c0.05,0.03,0.1,0.05,0.15,0.08c0.06,0.02,0.11,0.04,0.17,0.05l0.13,0.04\n      c0.43,0.14,0.72,0.55,0.7,1.01c-0.02,0.45-0.35,0.84-0.8,0.93l-2.36,0.48l0.04,0.65c0.01,0.17-0.02,0.33-0.09,0.49\n      c-0.06,0.12-0.11,0.35-0.07,0.8c0,0.08,0.08,3.93,0.08,4.68c-0.01,0.94-0.11,3.44-0.11,3.44l-0.01,0.16\n      C26.13,33.75,26.13,33.85,26.13,33.94L26.13,33.94z M32.74,39.41c-0.03,0.01-0.05,0.03-0.07,0.05\n      C32.72,39.43,32.74,39.41,32.74,39.41z"/>\n    <path fill="#FDBF2D" d="M25.26,22.64l4.46-0.83c0,0,2.42,0.35,2.43,0.35l0.46,17.98l-0.78,1.03c0,0-1.02-0.38-1.1-0.41\n      c-0.08-0.03-0.07-0.18-0.07-0.18L30,33.05l-1.46,9.74l-1.04,0.7c0,0-0.68-0.69-0.89-0.98c-0.24-0.33-0.22-0.73-0.22-0.73\n      L25.26,22.64z"/>\n    <path fill="#CE592C" d="M25.55,33.57c-0.01,0.57-0.14,1.3,0.87,1.46c0.74,0.12,0.75-0.12,1-1.14c0,0,0.44-2.51,0.55-4.71\n      c0,0,0.13-3.31,0.09-3.76c-0.15-1.66-0.94-2.09-1.67-1.85c-0.53,0.18-1.07,0.66-0.91,2.02c0,0,0.13,3.82,0.13,4.57\n      C25.63,31.09,25.55,33.57,25.55,33.57z"/>\n    <path fill="#FABD2C" d="M25.15,33.46c-0.02,0.57-0.16,1.3,0.85,1.48c0.74,0.13,0.75-0.11,1.02-1.13c0,0,0.47-2.5,0.61-4.71\n      c0,0,0.18-3.31,0.14-3.76c-0.12-1.66-0.91-2.11-1.64-1.87c-0.53,0.17-1.08,0.65-0.94,2.01c0,0,0.08,3.82,0.07,4.58\n      C25.25,30.98,25.15,33.46,25.15,33.46z"/>\n    <path opacity="0.3" fill="#CE592C" enable-background="new    " d="M25.15,33.46c-0.02,0.57-0.16,1.3,0.85,1.48\n      c0.74,0.13,0.75-0.11,1.02-1.13c0,0,0.47-2.5,0.61-4.71c0,0,0.18-3.31,0.14-3.76c-0.12-1.66-0.91-2.11-1.64-1.87\n      c-0.53,0.17-1.08,0.65-0.94,2.01c0,0,0.08,3.82,0.07,4.58C25.25,30.98,25.15,33.46,25.15,33.46z"/>\n    <path fill="#FDBF2D" d="M25.15,33.46c-0.04,1.16,0.68,1.07,0.93,0.87c0.63-0.5,0.71-5.21,0.82-6.64c0.07-0.97-0.09-3.4-0.4-4.17\n      c-0.55-0.21-1.04,0.42-1.09,0.51c-0.19,0.31-0.29,0.77-0.22,1.45c0,0,0.08,3.82,0.07,4.58C25.25,30.98,25.15,33.46,25.15,33.46\n      L25.15,33.46z"/>\n    <path fill="#E58A2C" d="M32.58,31.45c-0.01,0.67-0.2,1.27,0.73,1.43c0.91,0.15,0.86-0.61,0.93-0.87c0,0,0.45-1.92,0.75-3.91\n      c0,0,0.33-3.44,0.33-3.85c0.02-1.52-0.66-1.99-1.35-1.84c-0.5,0.11-1.03,0.5-1.01,1.75c0,0-0.15,3.56-0.21,4.24\n      C32.67,29.24,32.58,31.45,32.58,31.45z"/>\n    <path fill="#FABD2C" d="M28.38,23.71l6.17-1.29c0,0,0.05,0.01,0.04,0.09c-0.13,1.5-1.07,17.08-1.09,17.34\n      c-0.02,0.27-0.19,0.37-0.19,0.37s-1.3,0.89-1.39,0.93s-0.27,0-0.27,0s0.13-0.04,0.14-0.23c0.02-0.19-0.3-7.46-0.3-7.46\n      c-0.01-0.37-0.11-0.52-0.36-0.53c-0.24,0-0.29,0.15-0.31,0.53c0,0-1.14,8.05-1.15,8.48s-0.31,0.56-0.31,0.56s-1.47,0.86-1.59,0.92\n      s-0.3,0.01-0.3,0.01s0.22-0.01,0.22-0.3C27.69,42.94,28.38,23.71,28.38,23.71L28.38,23.71z"/>\n    <path opacity="0.3" fill="#CE592C" enable-background="new    " d="M28.38,23.71l6.17-1.29c0,0,0.05,0.01,0.04,0.09\n      c-0.13,1.5-1.07,17.08-1.09,17.34c-0.02,0.27-0.19,0.37-0.19,0.37s-1.3,0.89-1.39,0.93s-0.27,0-0.27,0s0.13-0.04,0.14-0.23\n      c0.02-0.19-0.3-7.46-0.3-7.46c-0.01-0.37-0.11-0.52-0.36-0.53c-0.24,0-0.29,0.15-0.31,0.53c0,0-1.14,8.05-1.15,8.48\n      s-0.31,0.56-0.31,0.56s-1.47,0.86-1.59,0.92s-0.3,0.01-0.3,0.01s0.22-0.01,0.22-0.3C27.69,42.94,28.38,23.71,28.38,23.71\n      L28.38,23.71z"/>\n    <path fill="#CE592C" d="M34.51,22.42l-6.14,1.29l-3.15-1.07l5.88-1.2"/>\n    <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="30.05" cy="22.41" rx="2.25" ry="0.43"/>\n    <ellipse fill="#FABD2C" cx="29.95" cy="17.23" rx="4.96" ry="5"/>\n    <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M29.98,21.74c1.19,0,2.3-0.27,3.24-0.75\n      c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.6,21.45,28.75,21.74,29.98,21.74L29.98,21.74z"/>\n  </g>\n</svg>\n;<svg xmlns="http://www.w3.org/2000/svg" width="60px" height="60px" viewBox="0 0 60 60">\n  <g>\n    <path opacity="0.3" fill="#111111" enable-background="new    " d="M30.33,27.2c-11.24,0-20.35,6.46-20.35,14.42\n      s9.11,14.42,20.35,14.42s20.35-6.46,20.35-14.42C50.68,33.65,41.57,27.2,30.33,27.2z M30.21,55.04\n      c-10.75,0-19.47-6.06-19.47-13.53s8.72-13.53,19.47-13.53s19.47,6.06,19.47,13.53S40.96,55.04,30.21,55.04z"/>\n    <ellipse opacity="0.1" fill="#111111" enable-background="new    " cx="30.21" cy="41.51" rx="19.47" ry="13.53"/>\n  </g>\n  <path fill="#FFFFFF" d="M25.23,41.88c-0.21,0-0.4-0.13-0.47-0.33l-4.3-11.67c-0.08-0.21,0-0.45,0.18-0.58s0.44-0.12,0.61,0.03\n    l10.37,8.71c0.16,0.14,0.22,0.36,0.15,0.56c-0.08,0.2-0.29,0.31-0.49,0.32c-2.16-0.08-4.25,0.11-4.56,0.42\n    c-0.49,0.49-0.89,1.73-1,2.16c-0.05,0.21-0.24,0.36-0.46,0.37C25.25,41.88,25.24,41.88,25.23,41.88z M22.05,31.3l3.17,8.6\n    c0.2-0.46,0.47-0.94,0.79-1.27c0.58-0.58,2.47-0.71,3.89-0.73L22.05,31.3z"/>\n  <path fill="#3F3F3F" d="M25.23,41.38c0,0,0.38-1.63,1.13-2.39c0.75-0.75,4.93-0.57,4.93-0.57l-10.37-8.71L25.23,41.38L25.23,41.38z\n    "/>\n  <path fill="#333333" d="M26.56,43.7c-0.18,0-0.37-0.03-0.58-0.08l-0.5-0.14l-0.11-0.3c-0.65-0.61-1.01-1.18-1.06-1.69\n    c-0.02-0.21-0.04-0.44-0.01-0.65l-0.17-5.13c-0.05,0.01-0.09,0.02-0.13,0.02c-0.53,0.08-1.21-0.13-1.58-0.26\n    c-0.62-0.16-1.02-0.85-0.9-1.64c0.08-0.68,0.45-3.36,0.75-5.23c0.4-2.47,0.88-4.5,0.9-4.58c0.06-0.39,0.25-0.83,0.53-1.2\n    l-0.01-0.46c-0.01-0.33,0.11-0.65,0.34-0.9c0.23-0.24,0.54-0.38,0.88-0.39l0.47-0.01c-0.86-1.05-1.37-2.39-1.37-3.82\n    c0-1.6,0.62-3.11,1.74-4.24c1.12-1.13,2.62-1.76,4.22-1.76h0.01c1.59,0,3.09,0.62,4.21,1.75s1.74,2.64,1.75,4.24\n    c0,1.62-0.63,3.12-1.71,4.22c0.37,0.21,0.8,0.46,1.15,0.68c1.08,0.67,1.28,1.95,1.31,2.31c0.21,1.1,0.74,3.9,0.88,4.48\n    c0.23,0.93,0.66,3.25,0.68,3.34c0.02,0.12,0.04,0.21,0.06,0.3c0.11,0.54,0.4,1.96-1.3,2.51c-0.54,0.18-1.03,0.16-1.45-0.06\n    c-0.35-0.18-0.57-0.46-0.7-0.71c-0.22,3.57-0.41,6.62-0.42,6.74c-0.04,0.61-0.39,1.01-0.7,1.19l-0.3,0.11c0,0-1.5,0.31-1.99,0.42\n    l-0.04,0.04l-0.24,0.03c-0.01,0-0.03,0-0.05,0.01l-0.05,0.01c-0.14,0.02-0.41,0.03-0.69-0.08c-0.11-0.04-0.18-0.07-0.52-0.36\n    c-0.18,0.41-0.49,0.68-0.77,0.8l-0.22,0.07c-0.72,0.13-1.59,0.31-1.82,0.37C26.91,43.67,26.75,43.7,26.56,43.7L26.56,43.7z\n     M26.25,41.78c-0.01,0-0.01,0.01-0.02,0.01C26.23,41.79,26.24,41.78,26.25,41.78z M26.31,41.24c0.06,0.09,0.19,0.24,0.36,0.41\n    c0.25-0.06,0.66-0.14,1.36-0.28c0.07-0.72,0.3-2.64,0.67-5.71l1.99,0.1l0.11,4.79c0.09,0.08,0.18,0.16,0.27,0.23\n    c0.25-0.06,0.67-0.15,1.4-0.3c0.09-1.51,0.42-6.79,0.69-11.21l1.95-0.23c0.39,1.26,0.83,2.48,1.1,3.21\n    c-0.13-0.69-0.42-2.2-0.58-2.86c-0.19-0.75-0.89-4.48-0.92-4.63l-0.02-0.13c-0.01-0.19-0.12-0.64-0.37-0.79\n    c-0.55-0.34-1.3-0.77-1.68-0.98l-0.81,0.02l-0.4-1.93c1.52-0.61,2.5-2.07,2.5-3.71c0-1.07-0.41-2.07-1.16-2.83\n    c-0.75-0.75-1.74-1.17-2.79-1.17c-1.06,0-2.05,0.42-2.8,1.17c-0.75,0.76-1.16,1.76-1.16,2.83c0,1.72,1.09,3.24,2.71,3.79\n    l-0.29,1.95l-2.71,0.08l0.02,0.57l-0.35,0.31c-0.12,0.11-0.23,0.31-0.25,0.47c-0.02,0.09-0.5,2.12-0.89,4.51\n    c-0.31,1.94-0.59,3.97-0.7,4.8c0.02,0,0.03,0.01,0.04,0.01l0.44-1.92L26.01,32L26.31,41.24L26.31,41.24z M23.02,33.56\n    c0.03,0.01,0.05,0.02,0.08,0.03C23.08,33.58,23.05,33.57,23.02,33.56z"/>\n  <path fill="#FABD2C" d="M37.27,32.44c0.12,0.73,0.42,1.35-0.57,1.67c-0.97,0.31-1.03-0.53-1.15-0.79c0,0-0.79-2.02-1.44-4.14\n    c0,0-0.9-3.69-0.98-4.14c-0.26-1.66,0.41-2.27,1.17-2.21c0.56,0.04,1.2,0.38,1.38,1.75c0,0,0.72,3.85,0.91,4.58\n    C36.82,30.06,37.27,32.44,37.27,32.44z"/>\n  <path fill="#E58A2C" d="M37.29,32.44c0.12,0.73,0.42,1.35-0.57,1.67c-0.97,0.31-1.03-0.53-1.15-0.79c0,0-0.79-2.02-1.44-4.14\n    c0,0-0.9-3.69-0.98-4.14c-0.26-1.66,0.41-2.27,1.17-2.21c0.56,0.04,1.2,0.38,1.38,1.75c0,0,0.72,3.85,0.91,4.58\n    C36.84,30.06,37.29,32.44,37.29,32.44z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M34.26,29.87l0.2-7.11l0.41,0.31c0,0-0.06,5.4,0.11,6.64\n    c0.17,1.24,0.45,3.13,0.45,3.13L34.26,29.87L34.26,29.87z"/>\n  <path fill="none" d="M24.69,22.07h8.2v20.56h-8.2C24.69,42.63,24.69,22.07,24.69,22.07z"/>\n  <path fill="#FDBF2D" d="M24.69,22.07l0.6,18.85c0,0-0.04,0.04,0.01,0.47c0.04,0.48,0.95,1.24,0.95,1.24l1.87-0.57l1.25-10.04\n    l0.24,0.77l0.18,8.22l0.95,0.81l0.18,0.02l1.44-1.03l0.51-18.03l-2.05-0.32L24.69,22.07"/>\n  <path fill="#FABD2C" d="M34.54,22.74L26.27,23c-0.5,15.19,0.06,15.86-0.04,19.32c-0.01,0.3,0.01,0.32,0.01,0.32\n    s0.18,0.05,0.33,0.05c0.05,0,0.1-0.01,0.13-0.02c0.12-0.06,1.99-0.41,1.99-0.41s0.3-0.13,0.32-0.56c0.01-0.43,0.87-7.49,0.87-7.49\n    c0.05-0.65,0.14-0.75,0.4-0.75c0.24,0,0.34,0.15,0.35,0.52c0,0,0.3,7.41,0.28,7.6c-0.02,0.19-0.14,0.22-0.14,0.22h0.27\n    c0.1-0.04,2.21-0.47,2.21-0.47s0.17-0.1,0.19-0.38L34.54,22.74"/>\n  <path opacity="0.3" fill="#CE592C" enable-background="new    " d="M34.57,22.74L26.3,23c-0.5,15.19,0.06,15.86-0.05,19.32\n    c-0.01,0.3,0.02,0.32,0.02,0.32s0.18,0.05,0.32,0.05c0.05,0,0.09-0.01,0.12-0.02c0.13-0.06,2-0.41,2-0.41s0.3-0.13,0.31-0.56\n    c0.02-0.43,0.88-7.49,0.88-7.49c0.04-0.65,0.14-0.75,0.39-0.75s0.35,0.15,0.36,0.52c0,0,0.3,7.41,0.27,7.6\n    c-0.01,0.19-0.14,0.22-0.14,0.22h0.27c0.09-0.04,2.2-0.47,2.2-0.47s0.18-0.1,0.2-0.38c0.02-0.26,1.02-16.63,1.14-18.14L34.57,22.74\n    "/>\n  <path fill="#CE592C" d="M32.89,21.84l-8.2,0.23l1.57,0.96l8.25-0.29L32.89,21.84"/>\n  <ellipse opacity="0.5" fill="#CE592C" enable-background="new    " cx="30.01" cy="22.37" rx="2.25" ry="0.3"/>\n  <ellipse fill="#FABD2C" cx="29.98" cy="17.23" rx="4.96" ry="5"/>\n  <path opacity="0.25" fill="#CE592C" enable-background="new    " d="M30,21.74c1.19,0,2.3-0.27,3.24-0.75\n    c-0.87,0.77-2.01,1.24-3.26,1.24c-1.28,0-2.44-0.49-3.32-1.28C27.62,21.45,28.77,21.74,30,21.74L30,21.74z"/>\n  <path fill="#FABD2C" d="M25.94,26.06c-0.1,1.59-0.92,5.97-0.92,5.97l-0.54,2.33c-0.08,0.24-0.27,0.33-0.62,0.38\n    s-1.09-0.21-1.09-0.21c-0.23-0.06-0.29-0.3-0.25-0.55c0,0,0.35-2.72,0.75-5.23c0.4-2.46,0.89-4.51,0.89-4.51\n    c0.1-0.61,0.59-1.29,1.17-1.34c0,0,0.69,0,0.71,1.06C26.06,25.08,25.94,26.06,25.94,26.06L25.94,26.06z"/>\n  <path opacity="0.25" fill="#CF572E" enable-background="new    " d="M25.52,22.95c0.2,0.08,0.5,0.32,0.52,1.01\n    c0.03,1.12-0.1,2.1-0.1,2.1c-0.09,1.36-0.7,4.73-0.87,5.7l-0.01,0.05C25.05,31.81,25.63,26.32,25.52,22.95z"/>\n</svg>\n'.split(";");
    _.Vk(JM, _.O);
    _.t = JM.prototype;
    _.t.mode_changed = function() {
        MM(this);
        NM(this)
    }
    ;
    _.t.heading_changed = function() {
        7 == this.h() && MM(this)
    }
    ;
    _.t.position_changed = function() {
        var a = this.h();
        if (5 == a || 6 == a || 3 == a || 4 == a)
            this.get("position") ? (this.H.setVisible(!0),
            this.J.setVisible(!1),
            this.set("lilypadIcon", RM(this))) : (a = this.h(),
            5 == a ? this.g(6) : 3 == a && this.g(4));
        else {
            var b = this.get("position");
            b && 1 == a && this.g(7);
            this.set("dragPosition", b)
        }
    }
    ;
    _.t.Tk = function(a) {
        this.set("dragging", !0);
        this.g(5);
        this.j = a.pixel.x
    }
    ;
    _.t.Uk = function(a) {
        var b = this;
        a = a.pixel.x;
        a > b.j + 5 ? (this.g(5),
        b.j = a) : a < b.j - 5 && (this.g(3),
        b.j = a);
        NM(this);
        window.clearTimeout(b.i);
        b.i = window.setTimeout(function() {
            _.N.trigger(b, "hover");
            b.i = 0
        }, 300)
    }
    ;
    _.t.Sk = function() {
        this.set("dragging", !1);
        this.g(1);
        window.clearTimeout(this.i);
        this.i = 0
    }
    ;
    _.A(TM, _.O);
    _.t = TM.prototype;
    _.t.mode_changed = function() {
        var a = _.JJ(this.zg());
        a != this.i && (a ? WM(this) : VM(this))
    }
    ;
    _.t.tilt_changed = TM.prototype.heading_changed = function() {
        this.i && (VM(this),
        WM(this))
    }
    ;
    _.t.Ih = function(a) {
        var b = this
          , c = this.get("dragPosition")
          , d = this.g.getZoom()
          , e = Math.max(50, 35 * Math.pow(2, 16 - d));
        this.set("hover", a);
        this.l = !1;
        _.P("streetview").then(function(f) {
            var g = b.ga || void 0;
            b.h || (b.h = new f.$i(g),
            b.h.bindTo("result", b, null, !0));
            b.h.getPanoramaByLocation(c, e, g ? void 0 : 100 > e ? "nearest" : "best")
        })
    }
    ;
    _.t.result_changed = function() {
        var a = this.get("result")
          , b = a && a.location;
        this.set("position", b && b.latLng);
        this.set("description", b && b.shortDescription);
        this.set("panoId", b && b.pano);
        this.l ? this.bf(1) : this.get("hover") || this.set("panoramaVisible", !!a)
    }
    ;
    _.t.panoramaVisible_changed = function() {
        this.l = 0 == this.get("panoramaVisible");
        this.zg();
        var a = this.get("panoramaVisible")
          , b = this.get("hover");
        a || b || this.bf(1);
        a && this.notify("position")
    }
    ;
    _.t.zg = _.Fe("mode");
    _.t.bf = _.Ge("mode");
    YM.prototype.H = function() {
        this.i = !this.i;
        this.F()
    }
    ;
    YM.prototype.F = function() {
        var a = this.o.get();
        if (a) {
            a *= 80;
            a = this.i ? ZM(a / 1E3, "km", a, "m") : ZM(a / 1609.344, "mi", 3.28084 * a, "ft");
            var b = this.C;
            var c = a.Jj + "\u00a0";
            if (c instanceof _.Nb)
                var d = c;
            else {
                var e = "object" == typeof c;
                d = null;
                e && c.zf && (d = c.g());
                c = _.wl(e && c.cc ? c.Ma() : String(c));
                d = _.Pb(c, d)
            }
            _.Ow(b, d);
            this.g.style.width = _.Ey(a.Kl + 4, !0);
            this.j || (this.j = _.y.setTimeout((0,
            _.z)(this.J, this), 50))
        }
    }
    ;
    YM.prototype.J = function() {
        this.j = 0;
        var a = this.l;
        this.h.set((new _.Ax(a.offsetWidth,a.offsetHeight)).width)
    }
    ;
    _.Vk(iN, _.O);
    _.t = iN.prototype;
    _.t.disableDefaultUI_changed = function() {
        pN(this)
    }
    ;
    _.t.size_changed = function() {
        pN(this)
    }
    ;
    _.t.mapTypeId_changed = function() {
        nN(this) != this.Hb && (this.i[1] = !0,
        _.ch(this.Z));
        this.ga && this.ga.setMapTypeId(this.get("mapTypeId"))
    }
    ;
    _.t.mapTypeControl_changed = function() {
        this.i[0] = !0;
        _.ch(this.Z)
    }
    ;
    _.t.mapTypeControlOptions_changed = function() {
        this.i[0] = !0;
        _.ch(this.Z)
    }
    ;
    _.t.fullscreenControlOptions_changed = function() {
        this.i[3] = !0;
        _.ch(this.Z)
    }
    ;
    _.t.scaleControl_changed = function() {
        this.i[2] = !0;
        _.ch(this.Z)
    }
    ;
    _.t.scaleControlOptions_changed = function() {
        this.i[2] = !0;
        _.ch(this.Z)
    }
    ;
    _.t.panControl_changed = function() {
        yN(this)
    }
    ;
    _.t.panControlOptions_changed = function() {
        yN(this)
    }
    ;
    _.t.rotateControl_changed = function() {
        yN(this)
    }
    ;
    _.t.rotateControlOptions_changed = function() {
        yN(this)
    }
    ;
    _.t.streetViewControl_changed = function() {
        yN(this)
    }
    ;
    _.t.streetViewControlOptions_changed = function() {
        yN(this)
    }
    ;
    _.t.zoomControl_changed = function() {
        yN(this)
    }
    ;
    _.t.zoomControlOptions_changed = function() {
        yN(this)
    }
    ;
    _.t.myLocationControl_changed = function() {
        yN(this)
    }
    ;
    _.t.myLocationControlOptions_changed = function() {
        yN(this)
    }
    ;
    _.t.streetView_changed = function() {
        AN(this)
    }
    ;
    _.t.fi = function(a) {
        this.get("panoramaVisible") != a && this.set("panoramaVisible", a)
    }
    ;
    _.t.panoramaVisible_changed = function() {
        var a = this.get("streetView");
        a && a.g.set(!!this.get("panoramaVisible"))
    }
    ;
    _.A(BN, _.O);
    BN.prototype.addElement = function(a, b, c, d) {
        var e = this;
        if (b = this.g[b]) {
            d = _.pd(d) ? d : b.length;
            var f;
            for (f = 0; f < b.length && !(b[f].index > d); ++f)
                ;
            b.splice(f, 0, {
                element: a,
                border: c,
                index: d,
                listener: _.N.addListener(a, "resize", function() {
                    return _.ch(e.Z)
                })
            });
            _.Qn(a);
            a.style.visibility = "hidden";
            this.h.appendChild(a);
            _.ch(this.Z)
        }
    }
    ;
    BN.prototype.Rb = function(a) {
        a.parentNode && a.parentNode.removeChild(a);
        _.hd(this.g, function(b, c) {
            for (b = 0; b < c.length; ++b)
                if (c[b].element == a) {
                    var d = a;
                    d.style.top = "auto";
                    d.style.bottom = "auto";
                    d.style.left = "auto";
                    d.style.right = "auto";
                    _.N.removeListener(c[b].listener);
                    c.splice(b, 1)
                }
        });
        _.ch(this.Z)
    }
    ;
    BN.prototype.i = function() {
        var a = _.th(this.h)
          , b = a.width;
        a = a.height;
        var c = this.g
          , d = []
          , e = NN(c[1], "left", "top", d)
          , f = ON(c[5], "left", "top", d);
        d = [];
        var g = NN(c[10], "left", "bottom", d)
          , h = ON(c[6], "left", "bottom", d);
        d = [];
        var k = NN(c[3], "right", "top", d)
          , l = ON(c[7], "right", "top", d);
        d = [];
        var m = NN(c[12], "right", "bottom", d);
        d = ON(c[9], "right", "bottom", d);
        var q = QN(c[11], "bottom", b)
          , r = QN(c[2], "top", b)
          , v = PN(c[4], "left", b, a);
        PN(c[13], "center", b, a);
        c = PN(c[8], "right", b, a);
        this.set("bounds", new _.Rd([new _.I(Math.max(v, e.width, g.width, f.width, h.width) || 0,Math.max(r, e.height, f.height, k.height, l.height) || 0), new _.I(b - (Math.max(c, k.width, m.width, l.width, d.width) || 0),a - (Math.max(q, g.height, m.height, h.height, d.height) || 0))]))
    }
    ;
    _.A(TN, _.O);
    TN.prototype.o = function(a) {
        if (XN(this, a))
            return !0;
        var b = !1;
        switch (a.keyCode) {
        case 38:
        case 40:
        case 37:
        case 39:
            this.i[a.keyCode] = 1;
            this.g || (this.h = new _.yE(100),
            this.j());
            b = !0;
            break;
        case 34:
            WN(this, 0, .75);
            b = !0;
            break;
        case 33:
            WN(this, 0, -.75);
            b = !0;
            break;
        case 36:
            WN(this, -.75, 0);
            b = !0;
            break;
        case 35:
            WN(this, .75, 0);
            b = !0;
            break;
        case 187:
        case 107:
            UN(this);
            b = !0;
            break;
        case 189:
        case 109:
            VN(this),
            b = !0
        }
        switch (a.which) {
        case 61:
        case 43:
            UN(this);
            b = !0;
            break;
        case 45:
        case 95:
        case 173:
            VN(this),
            b = !0
        }
        b && (_.le(a),
        _.me(a));
        return !b
    }
    ;
    TN.prototype.l = function(a) {
        if (XN(this, a))
            return !0;
        switch (a.keyCode) {
        case 38:
        case 40:
        case 37:
        case 39:
        case 34:
        case 33:
        case 36:
        case 35:
        case 187:
        case 107:
        case 189:
        case 109:
            return _.le(a),
            _.me(a),
            !1
        }
        switch (a.which) {
        case 61:
        case 43:
        case 45:
        case 95:
        case 173:
            return _.le(a),
            _.me(a),
            !1
        }
        return !0
    }
    ;
    TN.prototype.C = function(a) {
        var b = !1;
        switch (a.keyCode) {
        case 38:
        case 40:
        case 37:
        case 39:
            this.i[a.keyCode] = null,
            b = !0
        }
        return !b
    }
    ;
    TN.prototype.j = function() {
        for (var a = 0, b = 0, c = !1, d = 0; d < _.gd(ZN); d++)
            this.i[ZN[d]] && (c = $N[ZN[d]],
            a += c[0],
            b += c[1],
            c = !0);
        c ? (c = 1,
        _.zE(this.h) && (c = this.h.next()),
        d = Math.round(35 * c * a),
        c = Math.round(35 * c * b),
        0 == d && (d = a),
        0 == c && (c = b),
        _.N.trigger(this, "panbynow", d, c, 1),
        this.g = _.Mx(this, this.j, 10)) : this.g = 0
    }
    ;
    _.t = YN.prototype;
    _.t.vg = BN;
    _.t.Mk = function(a, b, c, d, e, f, g, h, k, l, m, q) {
        var r = b.get("streetView")
          , v = b.__gm;
        if (r && v) {
            var u = new _.yF((new _.Nl(_.H.m[1])).getStreetView(),r.get("client"));
            r = _.kh[r.get("client")];
            var w = new iN({
                Bj: function(M) {
                    return m.fromContainerPixelToLatLng(new _.I(M.clientX,M.clientY))
                },
                Vg: b.controls,
                lh: k,
                qe: l,
                Ah: a,
                map: b,
                Pk: b.mapTypes,
                Ld: d,
                ai: !0,
                va: q,
                controlSize: b.get("controlSize") || 40,
                pm: r,
                rm: u
            }), x = new _.Qy(["bounds"],"bottomRight",function(M) {
                return M && _.Zl(M)
            }
            ), D, K;
            _.N.ra(b, "idle", function() {
                var M = b.get("bounds");
                M != D && (w.set("bounds", M),
                x.set("bounds", M),
                D = M);
                M = b.get("center");
                M != K && (w.set("center", M),
                K = M)
            });
            w.bindTo("bottomRight", x);
            w.bindTo("disableDefaultUI", b);
            w.bindTo("heading", b);
            w.bindTo("projection", b);
            w.bindTo("reportErrorControl", b);
            w.bindTo("passiveLogo", b);
            w.bindTo("zoom", v);
            w.bindTo("mapTypeId", c);
            w.bindTo("attributionText", e);
            w.bindTo("zoomRange", g);
            w.bindTo("aerialAvailableAtZoom", h);
            w.bindTo("tilt", h);
            w.bindTo("desiredTilt", h);
            w.bindTo("mapTypeControlOptions", b, null, !0);
            w.bindTo("panControlOptions", b, null, !0);
            w.bindTo("rotateControlOptions", b, null, !0);
            w.bindTo("scaleControlOptions", b, null, !0);
            w.bindTo("streetViewControlOptions", b, null, !0);
            w.bindTo("zoomControlOptions", b, null, !0);
            w.bindTo("mapTypeControl", b);
            w.bindTo("myLocationControlOptions", b);
            w.bindTo("fullscreenControlOptions", b, null, !0);
            b.get("fullscreenControlOptions") && w.notify("fullscreenControlOptions");
            w.bindTo("panControl", b);
            w.bindTo("rotateControl", b);
            w.bindTo("motionTrackingControl", b);
            w.bindTo("motionTrackingControlOptions", b, null, !0);
            w.bindTo("scaleControl", b);
            w.bindTo("streetViewControl", b);
            w.bindTo("fullscreenControl", b);
            w.bindTo("zoomControl", b);
            w.bindTo("myLocationControl", b);
            w.bindTo("rmiAvailable", f, "available");
            w.bindTo("streetView", b);
            w.bindTo("fontLoaded", v);
            w.bindTo("size", v);
            v.bindTo("renderHeading", w);
            _.N.forward(w, "panbyfraction", v)
        }
    }
    ;
    _.t.Ok = function(a, b, c, d, e, f, g, h) {
        var k = new iN({
            Vg: f,
            lh: d,
            qe: h,
            Ah: e,
            Ld: c,
            controlSize: g.get("controlSize") || 40,
            ai: !1,
            qm: g
        });
        k.set("streetViewControl", !1);
        k.bindTo("attributionText", b, "copyright");
        k.set("mapTypeId", "streetview");
        k.set("tilt", !0);
        k.bindTo("heading", b);
        k.bindTo("zoom", b, "zoomFinal");
        k.bindTo("zoomRange", b);
        k.bindTo("pov", b, "pov");
        k.bindTo("position", g);
        k.bindTo("pano", g);
        k.bindTo("passiveLogo", g);
        k.bindTo("floors", b);
        k.bindTo("floorId", b);
        k.bindTo("rmiWidth", g);
        k.bindTo("fullscreenControlOptions", g, null, !0);
        k.bindTo("panControlOptions", g, null, !0);
        k.bindTo("zoomControlOptions", g, null, !0);
        k.bindTo("fullscreenControl", g);
        k.bindTo("panControl", g);
        k.bindTo("zoomControl", g);
        k.bindTo("disableDefaultUI", g);
        k.bindTo("fontLoaded", g.__gm);
        k.bindTo("size", b);
        a.view && a.view.addListener("scene_changed", function() {
            var l = a.view.get("scene");
            k.set("isCustomPanorama", "c" == l)
        });
        k.Z.Qa();
        _.N.forward(k, "panbyfraction", a)
    }
    ;
    _.t.Nk = function(a, b) {
        a.get("disableDefaultUI") && !a.get("keyboardShortcuts") && a.set("keyboardShortcuts", !1);
        var c = new TN(b);
        c.bindTo("zoom", a);
        c.bindTo("enabled", a, "keyboardShortcuts");
        _.N.forward(c, "panbyfraction", a.__gm);
        _.N.forward(c, "panbynow", a.__gm);
        _.N.forward(c, "panby", a.__gm);
        var d;
        _.N.ra(a, "streetview_changed", function() {
            var e = a.get("streetView")
              , f = d;
            f && _.N.removeListener(f);
            d = null;
            e && (d = _.N.ra(e, "visible_changed", function() {
                e.getVisible() ? (b.tabIndex = -1,
                b.blur(),
                c.set("streetViewDisable", !0)) : (b.tabIndex = 0,
                c.set("streetViewDisable", !1))
            }))
        })
    }
    ;
    _.t.$h = function(a, b) {
        a = _.SN(a, b).style;
        a.border = "1px solid rgba(0,0,0,0.12)";
        a.borderRadius = "5px";
        a.left = "50%";
        a.maxWidth = "375px";
        a.msTransform = "translateX(-50%)";
        a.position = "absolute";
        a.transform = "translateX(-50%)";
        a.width = "calc(100% - 10px)";
        a.zIndex = "1"
    }
    ;
    _.t.mg = function(a) {
        if (!(window.devicePixelRatio || _.oh[43] || a.__gm_bbsp)) {
            a.__gm_bbsp = !0;
            var b = new _.lo((_.Hl(_.$c(_.H), 15) ? "http://" : "https://") + "developers.google.com/maps/documentation/javascript/error-messages#unsupported-browsers");
            new DL(a,b)
        }
    }
    ;
    _.nf("controls", new YN);
});

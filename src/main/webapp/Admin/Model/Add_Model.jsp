<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>创建模板</title>

    <link rel="shortcut icon" href="favicon.ico"> <link href="Admin/Template/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="Admin/Template/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="Admin/Template/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="Admin/Template/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Admin/Template/css/plugins/webuploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="Admin/Template/css/demo/webuploader-demo.min.css">
    <link href="Admin/Template/css/style.min862f.css?v=4.1.0" rel="stylesheet">  
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    
</head>
<style>  
    #filePicker div:nth-child(2){width:100%!important;height:100%!important;}  
</style>  
<body class="gray-bg">

	<div class="ibox-content">

		<div class="col-sm-12">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active col-sm-4"><a href="#tab1" data-toggle="tab">基础信息</a></li>
				<li class="col-sm-4"><a href="#tab2" data-toggle="tab">效果图上传</a></li>
				<li class="col-sm-4"><a href="#tab3" data-toggle="tab">obj,mtl文件上传</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="tab1">

					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>基本信息填写</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="dropdown-toggle" data-toggle="dropdown"
										href="form_basic.html#"> <i class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="form_basic.html#">选项1</a></li>
										<li><a href="form_basic.html#">选项2</a></li>
									</ul>
									<a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<form target="nm_iframe" class="form-horizontal m-t" id="commentForm" novalidate="novalidate" >
								
								
									<div class="form-group" style="margin-top: 10px">
											<label class="col-sm-2 control-label">设计师:</label>
											<div class="col-sm-10">
												<select class="form-control required" id="userId">
													<option value="1">选项 1</option>
													<option value="2"> 选项 2</option>
													<option value="3">选项 3</option>
													<option value="4">选项 4</option>
												</select>
											</div>
										</div>
                                        
                                        <div class="form-group" style="margin-top: 10px">
											<label class="col-sm-2 control-label">楼层:</label>
											<div class="col-sm-10">
												<select class="form-control required" id="floorNumber">
													<option value="1">2层</option>
													<option value="2">3层</option>
													<option value="3">4层</option>
													<option value="4">5层</option>
												</select>
											</div>
										</div>
										
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">占地面积：</label>
											<div class="col-sm-10">
												<input  id="landArea" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">建筑面积：</label>
											<div class="col-sm-10">
												<input  id="buildingArea" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">设计费：</label>
											<div class="col-sm-10">
												<input  id="designFee" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">名称：</label>
											<div class="col-sm-10">
												<input  id="name" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
									<div class="form-group" style="margin-top: 50px">
										<label class="col-sm-2 control-label">说明：</label>
										<div class="col-sm-10">
											<textarea  id="introduction" class="form-control"
												required="" aria-required="true"></textarea>
										</div>
									</div>
									
									<div class="form-group">
										<div class="col-sm-4 col-sm-offset-2">
											<button class="btn btn-primary" onclick="createM()">提交</button>
										</div>
									</div>
								
								</form>
								<!-- <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>   -->
							</div>
						</div>
						
					</div>

				</div>
				
				<div class="tab-pane fade" id="tab2">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>上传效果图</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="dropdown-toggle" data-toggle="dropdown"
										href="form_file_upload.html#"> <i class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="form_file_upload.html#">选项1</a></li>
										<li><a href="form_file_upload.html#">选项2</a></li>
									</ul>
									<a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
							
							
								<div class="page-container">
									<p>您可以尝试文件拖拽，使用QQ截屏工具，然后激活窗口后粘贴，或者点击添加图片按钮，来体验此demo.</p>
									<div id="uploader" class="wu-example">
										<div class="queueList">
											<div id="dndArea" class="placeholder">
												<div id="filePicker" class="webuploader-container">
													<div class="webuploader-pick">点击选择图片</div>
													<div id="rt_rt_1c3de4u3beph1k3p1erpj3g1q991"
														style="position: absolute; top: 0px; left: 810px; width: 168px; height: 44px; overflow: hidden; bottom: auto; right: auto;">
														<input type="file" name="file"
															class="webuploader-element-invisible" multiple="multiple"
															accept="image/*"><label
															style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
													</div>
												</div>
												<p>或将照片拖到这里，单次最多可选300张</p>
											</div>
											<ul class="filelist"></ul>
										</div>
										<div class="statusBar" style="display: none;">
											<div class="progress" style="display: none;">
												<span class="text">0%</span> <span class="percentage"
													style="width: 0%;"></span>
											</div>
											<div class="info">共0张（0B），已上传0张</div>
											<div class="btns">
												<div id="filePicker2" class="webuploader-container">
													<div class="webuploader-pick">继续添加</div>
													<div id="rt_rt_1c3de4u3evg710kk2pa1imppdf6"
														style="position: absolute; top: 0px; left: 0px; width: 1px; height: 1px; overflow: hidden;">
														<input type="file" name="file"
															class="webuploader-element-invisible" multiple="multiple"
															accept="image/*"><label
															style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
													</div>
												</div>
												<div class="uploadBtn state-pedding">开始上传</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="tab-pane fade" id="tab3">
					

                     <div class="ibox-title">
                        <h5>文件上传 <small>https://github.com/episage/bootstrap-3-pretty-file-upload</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_advanced.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_advanced.html#">选项1</a>
                                </li>
                                <li><a href="form_advanced.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="file-pretty">
                            <div class="form-group">
                                <label class="font-noraml">文件选择（单选）</label>
                                <input type="file" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="font-noraml">文件选择（多选）</label>
                                <input type="file" multiple="multiple" class="form-control">
                            </div>
                           <input type="button" class="btn btn-primary" onclick="ddd()">提交</input>
                        </div>
                    </div>

				</div>
				
			</div>
		</div>

	</div>



	                              
    
	
	<script src="Admin/Template/js/jquery.min.js?v=2.1.4"></script>
    <script src="Admin/Template/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="Admin/Template/js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script src="Admin/Template/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="Admin/Template/js/plugins/validate/messages_zh.min.js"></script>
    <!-- <script src="Admin/Template/js/demo/form-validate-demo.min.js"></script> -->    
    <script src="Admin/Template/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
    <script type="text/javascript">
        var BASE_URL = 'Admin/Template/js/plugins/webuploader/index.html';
    </script>
    <script src="Admin/Template/js/plugins/webuploader/webuploader.min.js"></script>
    <script src="Admin/Template/js/demo/webuploader-demo.min.js"></script>

		
		
       <script type="text/javascript">
       jQuery(function() {
    	    function e(e) {
    	        var a = o('<li id="' + e.id + '"><p class="title">' + e.name + '</p><p class="imgWrap"></p><p class="progress"><span></span></p></li>'),
    	        s = o('<div class="file-panel"><span class="cancel">删除</span><span class="rotateRight">向右旋转</span><span class="rotateLeft">向左旋转</span></div>').appendTo(a),
    	        i = a.find("p.progress span"),
    	        t = a.find("p.imgWrap"),
    	        r = o('<p class="error"></p>'),
    	        d = function(e) {
    	            switch (e) {
    	            case "exceed_size":
    	                text = "文件大小超出";
    	                break;
    	            case "interrupt":
    	                text = "上传暂停";
    	                break;
    	            default:
    	                text = "上传失败，请重试"
    	            }
    	            r.text(text).appendTo(a)
    	        };
    	        "invalid" === e.getStatus() ? d(e.statusText) : (t.text("预览中"), n.makeThumb(e,
    	        function(e, a) {
    	            if (e) return void t.text("不能预览");
    	            var s = o('<img src="' + a + '">');
    	            t.empty().append(s)
    	        },
    	        v, b), w[e.id] = [e.size, 0], e.rotation = 0),
    	        e.on("statuschange",
    	        function(t, n) {
    	            "progress" === n ? i.hide().width(0) : "queued" === n && (a.off("mouseenter mouseleave"), s.remove()),
    	            "error" === t || "invalid" === t ? (console.log(e.statusText), d(e.statusText), w[e.id][1] = 1) : "interrupt" === t ? d("interrupt") : "queued" === t ? w[e.id][1] = 0 : "progress" === t ? (r.remove(), i.css("display", "block")) : "complete" === t && a.append('<span class="success"></span>'),
    	            a.removeClass("state-" + n).addClass("state-" + t)
    	        }),
    	        a.on("mouseenter",
    	        function() {
    	            s.stop().animate({
    	                height: 30
    	            })
    	        }),
    	        a.on("mouseleave",
    	        function() {
    	            s.stop().animate({
    	                height: 0
    	            })
    	        }),
    	        s.on("click", "span",
    	        function() {
    	            var a, s = o(this).index();
    	            switch (s) {
    	            case 0:
    	                return void n.removeFile(e);
    	            case 1:
    	                e.rotation += 90;
    	                break;
    	            case 2:
    	                e.rotation -= 90
    	            }
    	            x ? (a = "rotate(" + e.rotation + "deg)", t.css({
    	                "-webkit-transform": a,
    	                "-mos-transform": a,
    	                "-o-transform": a,
    	                transform: a
    	            })) : t.css("filter", "progid:DXImageTransform.Microsoft.BasicImage(rotation=" + ~~ (e.rotation / 90 % 4 + 4) % 4 + ")")
    	        }),
    	        a.appendTo(l)
    	    }
    	    function a(e) {
    	        var a = o("#" + e.id);
    	        delete w[e.id],
    	        s(),
    	        a.off().find(".file-panel").off().end().remove()
    	    }
    	    function s() {
    	        var e, a = 0,
    	        s = 0,
    	        t = f.children();
    	        o.each(w,
    	        function(e, i) {
    	            s += i[0],
    	            a += i[0] * i[1]
    	        }),
    	        e = s ? a / s: 0,
    	        t.eq(0).text(Math.round(100 * e) + "%"),
    	        t.eq(1).css("width", Math.round(100 * e) + "%"),
    	        i()
    	    }
    	    function i() {
    	        var e, a = "";
    	        "ready" === k ? a = "选中" + m + "张图片，共" + WebUploader.formatSize(h) + "。": "confirm" === k ? (e = n.getStats(), e.uploadFailNum && (a = "已成功上传" + e.successNum + "张照片至XX相册，" + e.uploadFailNum + '张照片上传失败，<a class="retry" href="#">重新上传</a>失败图片或<a class="ignore" href="#">忽略</a>')) : (e = n.getStats(), a = "共" + m + "张（" + WebUploader.formatSize(h) + "），已上传" + e.successNum + "张", e.uploadFailNum && (a += "，失败" + e.uploadFailNum + "张")),
    	        p.html(a)
    	    }
    	    function t(e) {
    	        var a;
    	        if (e !== k) {
    	            switch (c.removeClass("state-" + k), c.addClass("state-" + e), k = e) {
    	            case "pedding":
    	                u.removeClass("element-invisible"),
    	                l.parent().removeClass("filled"),
    	                l.hide(),
    	                d.addClass("element-invisible"),
    	                n.refresh();
    	                break;
    	            case "ready":
    	                u.addClass("element-invisible"),
    	                o("#filePicker2").removeClass("element-invisible"),
    	                l.parent().addClass("filled"),
    	                l.show(),
    	                d.removeClass("element-invisible"),
    	                n.refresh();
    	                break;
    	            case "uploading":
    	                o("#filePicker2").addClass("element-invisible"),
    	                f.show(),
    	                c.text("暂停上传");
    	                break;
    	            case "paused":
    	                f.show(),
    	                c.text("继续上传");
    	                break;
    	            case "confirm":
    	                if (f.hide(), c.text("开始上传").addClass("disabled"), a = n.getStats(), a.successNum && !a.uploadFailNum) return void t("finish");
    	                break;
    	            case "finish":
    	                a = n.getStats(),
    	                a.successNum ? alert("上传成功") : (k = "done", location.reload())
    	            }
    	            i()
    	        }
    	    }
    	    var n, o = jQuery,
    	    r = o("#uploader"),
    	    l = o('<ul class="filelist"></ul>').appendTo(r.find(".queueList")),
    	    d = r.find(".statusBar"),
    	    p = d.find(".info"),
    	    c = r.find(".uploadBtn"),
    	    u = r.find(".placeholder"),
    	    f = d.find(".progress").hide(),
    	    m = 0,
    	    h = 0,
    	    g = window.devicePixelRatio || 1,
    	    v = 110 * g,
    	    b = 110 * g,
    	    k = "pedding",
    	    w = {},
    	    x = function() {
    	        var e = document.createElement("p").style,
    	        a = "transition" in e || "WebkitTransition" in e || "MozTransition" in e || "msTransition" in e || "OTransition" in e;
    	        return e = null,
    	        a
    	    } ();
    	    if (!WebUploader.Uploader.support()) throw alert("Web Uploader 不支持您的浏览器！如果你使用的是IE浏览器，请尝试升级 flash 播放器"),
    	    new Error("WebUploader does not support the browser you are using.");
    	    n = WebUploader.create({
    	        pick: {
    	            id: "#filePicker",
    	            label: "点击选择图片"
    	        },
    	        dnd: "#uploader .queueList",
    	        paste: document.body,
    	        accept: {
    	            title: "Images",
    	            extensions: "jpg,jpeg,bmp,png",
    	            mimeTypes: "image/jpg,image/jpeg,image/png,image/bmp"
    	        },
    	        swf: BASE_URL + "/Uploader.swf",
    	        disableGlobalDnd: !0,
    	        chunked: !0,
    	        server: "./UploadPic?id=1",
    	        fileNumLimit: 300,
    	        fileSizeLimit: 5242880,
    	        fileSingleSizeLimit: 1048576
    	    }),
    	    n.addButton({
    	        id: "#filePicker2",
    	        label: "继续添加"
    	    }),
    	    n.onUploadProgress = function(e, a) {
    	        var i = o("#" + e.id),
    	        t = i.find(".progress span");
    	        t.css("width", 100 * a + "%"),
    	        w[e.id][1] = a,
    	        s()
    	    },
    	    n.onFileQueued = function(a) {
    	        m++,
    	        h += a.size,
    	        1 === m && (u.addClass("element-invisible"), d.show()),
    	        e(a),
    	        t("ready"),
    	        s()
    	    },
    	    n.onFileDequeued = function(e) {
    	        m--,
    	        h -= e.size,
    	        m || t("pedding"),
    	        a(e),
    	        s()
    	    },
    	    n.on("all",
    	    function(e) {
    	        switch (e) {
    	        case "uploadFinished":
    	            t("confirm");
    	            break;
    	        case "startUpload":
    	            t("uploading");
    	            break;
    	        case "stopUpload":
    	            t("paused")
    	        }
    	    }),
    	    n.onError = function(e) {
    	        alert("Eroor: " + e)
    	    },
    	    c.on("click",
    	    function() {
    	        return o(this).hasClass("disabled") ? !1 : void("ready" === k ? n.upload() : "paused" === k ? n.upload() : "uploading" === k && n.stop())
    	    }),
    	    p.on("click", ".retry",
    	    function() {
    	        n.retry()
    	    }),
    	    p.on("click", ".ignore",
    	    function() {
    	        alert("todo")
    	    }),
    	    c.addClass("state-" + k),
    	    s()
    	});
       </script>


</body>
<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>

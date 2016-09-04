<%@page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="baidu-site-verification" content="Cfo3FNkMsD" />
    <title>�ڿ�ζ��-��ҳ</title>
    <meta name="keywords" content="������Ʒ��,Ȧ��,����,ƻ��,����,���,�ڿ�ζ"/>
    <meta name="description" content="�ڿ�ζ�� ��һ�����߷����໥������˾,���������н�,����Ҫ�ķ���Ϊ��Ŀѡ��,����������,ѡȡ���������ɫˮ��,ʳ��,ҩ��,��Ʒ,���Ǳ���Ϊ����ũ�����·,Ϊȫ����������֮,���ṩ���������ԭ��." />

    <!-- �� Bootstrap ���� CSS �ļ� -->
    <link rel="stylesheet" href="/bootstrap/dist/css/bootstrap.min.css">

    <!-- ��ѡ��Bootstrap�����ļ���һ�㲻�����룩 -->
    <link rel="stylesheet" href="/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/bootstrap/saygoodproject/css/index.css">

    <!-- jQuery�ļ��������bootstrap.min.js ֮ǰ���� -->
    <script src="/bootstrap/saygoodproject/js/jquery-1.12.1.min.js"></script>

    <!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
    <script src="/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/bootstrap/saygoodproject/slice-box/js/modernizr.custom.46884.js"></script>
    <script type="text/javascript" src="/bootstrap/saygoodproject/slice-box/js/jquery.slicebox.js"></script>
    <link rel="shortcut icon" href="/bootstrap/saygoodproject/images/haowuicon.png">
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/slicebox.css"/>
    <link rel="stylesheet" type="text/css" href="/bootstrap/saygoodproject/slice-box/css/custom.css"/>

    <script type="text/javascript" src="/bootstrap/saygoodproject/slice-box/js/modernizr.custom.46884.js"></script>
    <!--����4.1֮ǰ��Android-->
    <script>
        $(function () {
            var nua = navigator.userAgent
            var isAndroid = (nua.indexOf('Mozilla/5.0') > -1 && nua.indexOf('Android ') > -1 && nua.indexOf('AppleWebKit') > -1 && nua.indexOf('Chrome') === -1)
            if (isAndroid) {
                $('select.form-control').removeClass('form-control').css('width', '100%')
            }
        })
        $(function () {
            function footerPosition() {
                $("footer").removeClass("fixed-bottom");
                var contentHeight = document.body.scrollHeight,//��ҳ����ȫ�ĸ߶�
                        winHeight = window.innerHeight;//���Ӵ��ڸ߶ȣ����������������������
                if (!(contentHeight > winHeight)) {
                    //����ҳ���ĸ߶�С�ڿ��Ӵ��ڸ߶�ʱ��Ϊfooter�����fixed-bottom
                    $("footer").addClass("fixed-bottom");
                } else {
                    $("footer").removeClass("fixed-bottom");
                }
            }

            footerPosition();
            $(window).resize(footerPosition);
        });
    </script>
    <script type="text/javascript">
        $(function () {

            var Page = (function () {

                var $navArrows = $('#nav-arrows').hide(),
                        $navDots = $('#nav-dots').hide(),
                        $nav = $navDots.children('span'),
                        $shadow = $('#shadow').hide(),
                        slicebox = $('#sb-slider').slicebox({
                            onReady: function () {

                                $navArrows.show();
                                $navDots.show();
                                $shadow.show();

                            },
                            onBeforeChange: function (pos) {

                                $nav.removeClass('nav-dot-current');
                                $nav.eq(pos).addClass('nav-dot-current');

                            }
                        }),

                        init = function () {

                            initEvents();

                        },
                        initEvents = function () {

                            // add navigation events
                            $navArrows.children(':first').on('click', function () {

                                slicebox.next();
                                return false;

                            });

                            $navArrows.children(':last').on('click', function () {

                                slicebox.previous();
                                return false;

                            });

                            $nav.each(function (i) {

                                $(this).on('click', function (event) {

                                    var $dot = $(this);

                                    if (!slicebox.isActive()) {

                                        $nav.removeClass('nav-dot-current');
                                        $dot.addClass('nav-dot-current');

                                    }

                                    slicebox.jump(i + 1);
                                    return false;

                                });

                            });

                        };

                return {init: init};

            })();

            Page.init();

        });
    </script>
    <style type="text/css">
        /* Custom Styles */
        ul.nav-tabs {
            width: 140px;
            margin-top: 20px;
            border-radius: 4px;
            border: 1px solid #ddd;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
        }

        ul.nav-tabs li {
            margin: 0;
            border-top: 1px solid #ddd;
        }

        ul.nav-tabs li:first-child {
            border-top: none;
        }

        ul.nav-tabs li a {
            margin: 0;
            padding: 8px 16px;
            border-radius: 0;
        }

        ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover {
            color: #fff;
            background: #0088cc;
            border: 1px solid #0088cc;
        }

        ul.nav-tabs li:first-child a {
            border-radius: 4px 4px 0 0;
        }

        ul.nav-tabs li:last-child a {
            border-radius: 0 0 4px 4px;
        }

        ul.nav-tabs.affix {
            top: 10px; /* Set the top position of pinned element */
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myNav").affix({
                offset: {
                    top: 125
                }
            });
        });
    </script>
    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?b90b3a5b6966ec3c4916467b80b47b7c";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>

<body data-spy="scroll" data-target="#myScrollspy">

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img src="/bootstrap/saygoodproject/images/logo.png" style="width: 50px;height: 50px">
            <%--<a class="navbar-brand" href="#">�ڿ�ζ</a>--%>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#">Ӧ����Ȧ <span class="sr-only">(current)</span></a></li>
                <li class="active"><a href="#">������Ʒ��</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">���� <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">GO</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="http://www.haowuyun.com/mblog/">Ȧ��</a></li>
                <li><a href="/bootstrap/saygoodproject/html/scanview.html">ɨ�뿴</a></li> <li><a href="/bootstrap/saygoodproject/html/login_sign.html">��¼ | ע��</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">�鿴���� <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/bootstrap/saygoodproject/html/login_sign_manager.html">��̨����</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="/bootstrap/saygoodproject/html/about.html">��������</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container">
    <div class="wrapper">

        <ul id="sb-slider" class="sb-slider">
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/images/huajiao1.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>����ʡ¤����콷</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/images/huajiao2.jpg"
                                                alt="image2"/></a>
                <div class="sb-description">
                    <h3>����ʡ¤����콷</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/images/huajiao3.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>����ʡ¤����콷</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/images/huajiao4.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>����ʡ¤����콷</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/slice-box/images/5.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>Faithful Investor</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/slice-box/images/6.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>Groundbreaking Artist</h3>
                </div>
            </li>
            <li>
                <a href="" target="_blank"><img src="/bootstrap/saygoodproject/slice-box/images/7.jpg"
                                                alt="image1"/></a>
                <div class="sb-description">
                    <h3>Selfless Philantropist</h3>
                </div>
            </li>
        </ul>

        <div id="shadow" class="shadow"></div>

        <div id="nav-arrows" class="nav-arrows">
            <a href="#">Next</a>
            <a href="#">Previous</a>
        </div>

        <div id="nav-dots" class="nav-dots">
            <span class="nav-dot-current"></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>

    </div><!-- /wrapper -->

</div>

<div class="left-navi-float-bar">

    <div class="row">

        <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" id="myNav">
                <li><a href="#section-1">����</a></li>
                <li><a href="#section-2">ƻ��</a></li>
                <li><a href="#section-3">����</a></li>
                <li><a href="#section-4">���</a></li>
                <li class="active"><a href="#section-5">����</a></li>
            </ul>
        </div>
        <div class="left-navi-bar">
            <div class="list-group">
                <a href="#" class="list-group-item active">
                    <h4 class="list-group-item-heading">
                        ��������������
                    </h4>
                </a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">
                        ˳�����
                    </h4>
                    <p lass="list-group-item-text">
                        �ṩ���տ���,4Сʱ���ɵ���Ŀ�ĵ�
                    </p>
                </a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">
                        �й�����
                    </h4>
                    <p lass="list-group-item-text">
                        �ṩ��·����,���쵽��
                    </p>
                </a>
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">
                        ��ϵ�ͷ�
                    </h4>
                    <p class="list-group-item-text">
                        �����ṩ7*24Сʱ֧�֡�
                    </p>
                    <img style="height: 100px;width: 98%" src="/bootstrap/saygoodproject/images/kefu.png">
                </a>
            </div>
        </div>
        <div class="col-xs-6">
            <h2 id="section-1">����</h2>
            <p>
                <p>�����Ļ�������</p>
                <p>����Ϊܿ��ƹ�ľ��С��ľֲ���ཷ�ĸ�������Ƥ��һ��������ǰ����졣�����Ĵ������������ϡ��ӱ���ɽ�������ϵ�ʡ�����Ĵ����������ã��Ժӱ���ɽ������Ϊ�ߡ��������й����е����ϣ�λ�е��ϡ�ʮ���㡱֮�ס����ۺ��ա�±ζ��С�ˡ��Ĵ��ݲˡ���Ѽ����ţ�Ȳ��Ⱦ����õ�����Ҳ�ɴ�ĥ�ɷۺ��ΰ���Ϊ���Σ���պʳ�á���Ϊ�󽷺Ͳ������֣�Ϊ���õĵ�ζ���ϣ�Ҳ��ե�ͣ���������25%���ϡ���������Ũ�����ζ����һ�ֺܺõ�ʳ���͡���������ζ���������������ζ�������������ϼ��ܵ���ʹ�ã��绨���棻Ҳ��������ԭ�����Ƴɵ�ζƷ����;���㣬Ч�����ã��������桢�����Ρ��н��εȡ�</p>
                <p>�����Ĺ�Ч������</p>
                <p>
                ����ζ�������ȣ���Ƣ��θ�����з��㽡θ������ɢ������ʪֹʹ��ɱ��ⶾ��ֹ������֮��Ч����Ҫ����Ż�£��纮ʪ�ԣ���ʹ��֢��
                    </p>
                1.����ʳ��<br>
                ������ζ���㣬�ɳ���������������������ܴٽ���Һ���ڣ�����ʳ����<br>
                2.��Ѫѹ<br>
                ���о����֣�������ʹѪ�����ţ��Ӷ����𵽽���Ѫѹ�����á�<br>
                3.����<br>
                ��ʳ����ˮ�����������档<br>
                4.��ʳ����<br>
                ��ŵ���ʳ�����ˣ��ò����ϼ�ʮ���������룬��ͻ��Լ����߻���ȥ��<br>
                5.��֬������ζ��<br>
                ����֬�з��������Ļ���ĩ���Ϳɷ�ֹ��֬���ζ��<br>
                6.�˳�����<br>
                �ڲ˳��ڷ�����ʮ���ʻ��������ϾͲ��ҽ�ȥ��<br>
                7.ʳƷ��Ӭ<br>
                ��ʳƷ�Աߺ����Ϸ�һЩ��������Ӭ�Ͳ�������<br>
                8.���ͷ���<br>
                ��ըʳ��ʱ��������ȵ��е㣬��ӹ��������������뼸�������󣬷��;ͻ��������䡣<br>
                9.����ʹ<br>
                ���������ʳ���������ʹ����һ���������ڻ�ʹ�����ϣ�ʹ�оͻ�������ʧ��<br>

                ������Ӫ����ֵ<br>
                ��Ƥ���лӷ��ͣ��͵���Ҫ�ɷ�Ϊ����ϩ���ݴ���ţ���������Ⲣ����ֲ���޴����������л���ȶ��ֻ����<br>

                ������ѡ��<br>
                ѡ��������ʱ��һ������������С����ǳ��ɫ��Ϊ�ã����ţ��û������û���ȣ���ζ�ѳ������꣬�������ζ�ľ��Ǻû������Ҵ����������ɫ�����ˮ������ɫ�������ģ��������ɫ�أ���ǳ�ʪ��������е�Ϊ�Ρ�<br>

                �����Ĵ洢<br>
                �����ܳ��������Ĥ����ζ������ʱҪ���ڸ���ĵط���ע�������<br>
                <p>
                ������ʳ�÷���<br>
                1.����ʱ���ڹ��������зż������������ں��̳������ͳ��ˣ������˱ǡ�<br>
                2.ը������ʱ���²��˹��ߡ�<br>
                3.�ѻ�����ֲ���͡��������ȣ�����������ϣ���ˬ�ɿڡ�<br>
                4.�����ܲ�˿ʱ���뻨����ζ�����ѡ�<br>
                </p>

            </p>
            <hr>
            <h2 id="section-2">ƻ��</h2>
            <p>1965�꣬ʾ����Ĺ����ҹ����ۡ���һ�꣬����ţ��ƻ���״δ�������г�������۹��ʲ������ϣ�����ɫ�ȡ����͡����ʡ����ǵ�����ָ��������������߹�����һ�ٶ��������ȫ����һ��Ϣ������ȫ���˶��˷ܲ��ѡ�����9��23�գ���ţ���ũ������ѡ������ող�ժ��ƻ����ë��ϯ��ȥ������װ��ƻ����ľ����д���ˡ���ţ�����֣���������ϯ�ľ�������ϯƷ���󣬷ǳ�ϲ�������ڼ��л��ʱ�θ���ʡʡ������ˮ��������ʿ�˱�ɺʱ����ˮƻ���д��������޵������������ˮ��ƻ���óԣ������˺��й�����칫��ר���º�������ë��ϯ��ţ�������л��
                �˺��ҹ���ʽ�ԡ���ţ����Ϊƻ���̱꣬�����������ڡ�</p>
            <p>��ˮ�������صĵ���������Դ��������������ƻ�������������Һ͵���������ƻ����ȣ�ɫ��ζ���ξ�ѡ���ˮ�С���ţ��ƻ�����������߹���������Ʒ����ȣ������Թ������1.4%����������1.86%��ƻ�����0.08%���䶥��ͻ��������͸ߴ�0.96-1.0�Ĺ���ָ������ʵ����ٷ�֮�ٵ��ʺ�����ɫ��12.5-15%�Ŀ����Թ����ﺬ����Ũ������ζ�����ĿڸУ���������չʾ�������ص��ⲿ��������������Ʒ�ʡ�
                ����ţ��ƻ���ѱ��������ר�Һ�Ӫ�����Ͽ�Ϊ�������߹����ձ���ʿ������������������ƻ��Ʒ�ơ���ȫ����Ʒ�г������ۺε�������Ԫ˧ϵ��ƻ�������ԡ���ţ��ƻ�����̱���۵ġ��Դ�60�����ˮ����ţ������Ʒ�ƺ󣬽���ʮ�꣬��û����һ��ƻ��Ʒ���ܹ��������ţ����2004�ꡰ�׽��й������ڣ�����ˮ��������չ���ᡱ�ϻ���á�ˮ��״Ԫ������������۵���������ϲ����ϵ ��ˮ��Ʒ�ơ�����ô����ˮũ���������ֲ����������ƻ�����������ͨ��ƻ�����������ӹ������۽��г�����ʵ�� ���յ��أ�����Ŀ��ȥ��ֲ���ء��г����ӹ���һ̽������</p>
            <hr>
            <h2 id="section-3">����</h2>
            <p>Ӫ����ֵ</p>
            <p>
                ��ҽ��Ϊ��������ƽ��ζ���ᣬ�ܲ���Ѫ��ǿ��ǣ����������С�㣬����Ѫ��ůθ��Ƣ��������ʡ��ִ�ҽѧ��֤���������������Ķ������������Ȼ�����ɻ�����������к�ǿ�Ŀ��������ԣ�������Ч�ص�������ϸ���Ĺ��ܣ�������������ɻ������ǵ��˺������⣬�������п������ã�����ϸ���������еĵ����ʽ�ϣ�ʹ����ʧȥ�²�������������о�֤�������ʵ����ѡ�����Ҷ�����Ѹɶ����еֿ�������������
            </p>
            <p>
                �����к��зḻ�������Ǽ�����ά���أ��Ա������ࡢ���ḹˮ����֫���׵�Ч���ǳ����ԣ��������Ѫ���׵��ף�����ת��ø�������е������ǡ��л��ᡢ�����ᡢά���ضԴ��������˷����ã��Ը��װ��е���˥����ƣ��֢״�и���Ч���������еĹ��ỹ�ܰ�������������ʳ������ֹ���׺�֬���εķ�����
            </p>
            <p>
                ���Ѹ��Ǹ��׻��߲���������Ҫ��Դ�������Ѹ�100?150�˼�ˮ���£��Ի����͸�����?��������Ч ��һ���Դ����Ѹ��ܹ�Ԥ���᳦�� ���������Ѹɶ������ָ��ǳ���Ч ���������Ѹ����������� �ġ��Դ������ܿ�������ƣ�� �塢�����Ѹ��ܸ���ƶѪ�����Ƥ���� ���������Ѹ��κ��ϻ��� �ߡ������Ѹɴ���ȸ���ƶѪ �ˡ������Ѹ��κ�Ƥ��������Ϊ���ѿ���Ҷľ���ٱ�ֲ��Ĺ�ʵ�����������顢ˮ�����顢���ҡ����ա����ҡ�ɽ��«�����ѱ�������Ϊ���������Ϊ�����Ĵ�ˮ��֮�ס�������Ӫ���ḻ����;�㷺��ɫ�������㣬ζ�ɿڣ��ǹ��м�Ʒ���ȿ���ʳ�ֿɼӹ��ɸ��ֲ�Ʒ�������Ѿơ�����֭�����Ѹɵȣ����ҹ�ʵ������Ҷ�Կ���ҩ��ȫ���Ǳ���
            </p>
            <p>
                �ݲⶨ�����ѽ�������ˮ���⣬������Լ15%��30%����(��Ҫ�������ǡ����Ǻ�����)�������л���(ƻ���ᡢ��ʯ���Լ������������ᡢ�����ᡢûʳ���ᡢ���ᡢˮ�����)�Ϳ����ʣ��Լ�����ά���ء������ᡢ�����ʡ�̼ˮ���������ά���ơ��ס��������ܲ��ء����ء��˻��ء�����ᡢ����Ѫ�ᡢ����֬�ȡ��ر����ִ�ҽѧ���֣�����Ƥ���������к���һ�ֿ��������ʰ�޼«����������Ѫ�ܲ��л�����Ԥ�����������á�������ѡ�������֭�������������Ѿƶ����彡�����кô�������ĸ�Ů�ڷ�������ѣ����Щ���Ѿƣ��ȿɰ���ѪҺѭ�����ֿ����������е�Ѫɫ�ء�
            </p>
            <p>
                ����֭���ӡ�Ƥ�ھ�����ǿ������������??��޼«�������ͪ�ȳɷ֣�������Ƥ�����еĺ������ϸ�ʤһ���޼«�������ͪ���а�˾ƥ��ҩ�����˨����Ѫ��Ч�棬�ɷ���ȱѪ�����з磬���Թ�������Ѫ˨�ȡ� ���ǣ���������ҩ�����ŵ�������Ʒ�������ҽѧ��Ϊ�����Ժ�������˵�Ƣθ���͡��麮йкʱӦ��ʳ��

            </p>
            <hr>
            <h2 id="section-4">���</h2>
            <p>��Ҫ�ɷݣ�����Ӻ���˼betane��������Ʒ��atropine���������Ӱ���gyoscyamine����</P>
            <p>��轶��ǣ���轶�����һ��ˮ���Զ��ǣ������������Ҫ�Ļ��Գɷ֣���Է�������Ϊ68-200����Ϊ�������о��ȵ㡣����������轶��ǵ����ߵ��ںͿ��������õ��о���ࡣ�����кܶ��о�������轶��Ǿ��дٽ����ߡ���˥�ϡ���������������ɻ�����ƣ�͡������䡢���Ρ���ֳ���ܱ����͸��Ƶ����á�</p>
            <p>��˼��ѧ����Ϊ1-�Ȼ�-N��N��N-���װ������������ڻ�ѧ�ṹ���백�������ƣ����ڼ����������ʡ���˼�����轹���Ҷ��������Ҫ�������֮һ����轶�֬�ʴ�л��֬���ε�������Ҫ��������������˼�����ģ�����������׻���Ӧ������á����������˼���о������ڹ����ں����Ĳⶨ����ȡ���պͶ����ֲ����������ã���ǿ�����ԣ��о����棬���������˼��ҩ��ҩЧ�о����١�</p>
            <p>���ɫ�أ����ɫ���Ǵ�������载����еĸ����ɫ���ʣ�������ѵ���Ҫ������Գɷ֡���Ҫ����-���ܲ��ء�Ҷ���غ�������ɫ���ʡ���������е�����ܲ�������зǳ���Ҫ��ҩ�ü�ֵ���ܶ��о��Ѿ�֤�������ɫ�ؾ�������������߹��ܡ�Ԥ��������������Ԥ����������Ӳ�������á����ܲ��������ɫ�ص���Ҫ���Գɷ֣����п���������Ϊά����A�ĺϳ�ǰ�����Ҫ�������ܡ�</p>
            <p>ҩ�����ã������߹�����Ӱ�����á�</p>
            <p>��ζ������ӣ��ʣ�ƽ�����Ҷ���ࡢ�ʣ�������</p>
            <p>���ܣ�����ӣ����Σ���������Ρ����Ҷ�������澫��������Ŀ��</p>
            <hr>
            <h2 id="section-5">����</h2>
            <p>����Χ</p>
������       <p>
            ¤���ص������򡢸���������򡢱����򡢿�կ�硢�����硢˫Ȫ�硢�ķ��򡢹����򡢲�����ͨ������<br>
            </p>
����        <p>�ض�Ʒ��</p>
            <p>
                ¤�����õ���ֲ��������˰������ε�����Ʒ�ʣ���״��Բ���Σ�«��3����~5���״���֣���15����~45���ף�ֱ��0.4����~1.8���ף���"���θ�ͷ"����ͷ���ж�����״ͻ��ľ��ۼ�ѿ���ʽ���������ԣ�Ƥ�������ζ�ʣ���֮����������ֱ����׳��ɫ�����أ�Ʒ��Զ����ȫ�������������Σ��Ӷ��Գ�һƷ���������û������������������θ��������ӷ��͡���֬��ճҺ�ʺ�ά���ء������ʡ���ۡ��ǡ������ʵȶ�������ɷ֣�����Ѫ����Ƣ�����С���������ѹ�����򡢿���֮��Ч������Ϊ�˲εĴ���Ʒ���׳�"С�˲�"��
            </p>
            <p>�Ļ����</p>
            <p>
                ¤����������Ϊ�չ���ֲ�ﵳ�εĸ������������������¤����ɫ����ֱ����������ҩ�óɷֺͱ���Ԫ�أ�����Ϊ"¤����������"��
            </p>
��������
        </div>
    </div>
</div>
<div class="fixed-bottom">
    <div>

        Copyright &copy; 2015-2016
        <strong>&nbsp;&nbsp;<a href="http://www.haowuyun.com/mblog" target="_blank">LoveInLog&����</a></strong>&nbsp;
        &nbsp;
         All Rights Reserved. <a href="http://www.miitbeian.gov.cn/">�����ţ���ICP��16030050��</a>
    </div>
</div>
</body>
</html>
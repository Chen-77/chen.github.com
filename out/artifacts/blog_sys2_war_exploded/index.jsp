<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Web Page</title>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/iconfont.css">
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>
<!-- 行级元素 块级元素 行级块元素 -->
<div id="container">
    <!-- 左侧导航 -->
    <div id="nav">
        <!-- 基本信息 -->
        <div id="nav-info">
            <img src="./images/photo.jpg" alt="">
            <h1>
                Eterjeff
            </h1>
            <h2><i class="iconfont icon-shouji"></i>181XXXX1503</h2>
            <h2><i class="iconfont icon-youjian"></i>623XXX295@qq.com</h2>
        </div>

        <!-- 导航 -->
        <ul class="nav-menu">
            <li class="nav-menu-list"><a href="#home">Home</a></li>
            <li class="nav-menu-list"><a href="#about">About</a></li>
            <li class="nav-menu-list"><a href="#subscription">Subscription</a></li>
            <li class="nav-menu-list"><a href="#project">Article</a></li>
            <!--  <li class="nav-menu-list"><a href="#article">Article</a></li> -->
            <li class="nav-menu-list"><a href="#picture">Picture</a></li>
            <li class="nav-menu-list"><a href="#contact">Contact</a></li>
        </ul>
    </div>


    <!-- 主内容区域 -->
    <div id="main">

        <!-- home -->
        <section id="home">

            <h4 id="home-title" class="main-title">&nbsp&nbsp <i class="iconfont icon-gerenwangzhan"></i>&nbsp&nbsp您好，我是Eterjeff，这是我的个人主页</h4>
            <img src="./images/sunset.jpg" width="450px" height="300px" alt="">
            <img src="./images/snowylight.jpg" width="450px" height="300px" alt="" align="right">
        </section>

        <!-- about -->
        <section id="about">
            <h4 class="main-title">
                <i class="iconfont icon-guanyu"></i>
                About
            </h4>
            <p>我是一名东北农业大学的学生，下面简单介绍一下我的公众号。</p>
        </section>

        <!-- subscription -->
        <section id="subscription">
            <h4 class="main-title">
                <i class="iconfont icon-dingyuehao97"></i>
                Subscription
            </h4>
            <img src="./images/subscription.jpg" width="300px" height="300px" alt="">
            <img src="./images/subscription2.jpg" width="300px" height="300px" alt="" align="right">
            <ul>
               <c:forEach items="${blogList}" var="blog">
                    <li class="subscription-list"><a href="${blog.url}" target="_blank">${blog.title}</a></li>
               </c:forEach>

                <li class="subscription-list">上方左侧图片为公众号二维码，右侧图片为公众号头像。</li>
                <li class="subscription-list">欢迎大家关注公众号。</li>
                <li class="subscription-list">接下来将为大家介绍公众号的概况。</li>
                <!--   <li class="subscription-list"></li>
                  <li class="subscription-list"></li>
                  <li class="subscription-list"></li>
                  <li class="subscription-list"></li>
                  <li class="subscription-list"></li>
                  <li class="subscription-list"></li>
                  <li class="subscription-list"></li>
                  <li class="subscription-list"></li> -->
            </ul>
        </section>

        <!-- project修改为Article -->
        <section id="project">
            <h4 class="main-title">
                <i class="iconfont icon-wenzhang"></i>
                Article
            </h4>

            <ul class="project-wrapper">
                <li class="project-list">
                    <div class="project-list-icon">
                        <!-- <i class="iconfont icon-lipinka"></i> -->
                        <i class="iconfont icon-chuangzuo"></i>
                    </div>
                    <div class="project-list-info">
                        <h4 class="project-list-title">
                            <a
                                    href="https://mp.weixin.qq.com/s?__biz=MzUwOTcwNjUzMg==&mid=2247483826&idx=1&sn=a7a82e53abd300041d87ee6e85bf4dbd&chksm=f90f69f9ce78e0ef89914afc8acd23956e69e13b24cc8b2a024b4ad6c3802f0576a18aa8aedb&token=1981611428&lang=zh_CN#rd" target="_blank">原创文章：就这样别哭，看着远方</a>
                        </h4>
                        <p class="project-list-details">致同窗友谊，轻轻的飞，勇敢的追，说好这一次，我们不流泪。</p>
                    </div>
                </li>
                <li class="project-list">
                    <div class="project-list-icon">
                        <i class="iconfont icon-caidan"></i>
                    </div>
                    <div class="project-list-info">
                        <h4 class="project-list-title">
                            <a
                                    href="https://mp.weixin.qq.com/s?__biz=MzUwOTcwNjUzMg==&mid=2247483803&idx=1&sn=e23f58dc79e0794e9180c6bb57760c1a&chksm=f90f69d0ce78e0c68e77f59289ad07be0a5bcb5da425e43189e7fe8394bfbc71be180fd0c804&token=1981611428&lang=zh_CN#rd" target="_blank">原创文章：遇见更好的自己</a>
                        </h4>
                        <p class="project-list-details">致未来之约，你我约定共看尽世间繁华。</p>
                    </div>
                </li>

                <li class="project-list">
                    <div class="project-list-icon">
                        <i class="iconfont icon-guanzhu"></i>
                    </div>
                    <div class="project-list-info">
                        <h4 class="project-list-title">
                            <a href="https://mp.weixin.qq.com/s?__biz=MzUwOTcwNjUzMg==&mid=2247483793&idx=1&sn=79bd566a5f86b82e0407d45974fea8a1&chksm=f90f69dace78e0cc459eaca1ce415369915dd1a93d19fcc1361c7add68a79e46b38144300066&token=1981611428&lang=zh_CN#rd" target="_blank">原创文章：缘，相遇</a>
                        </h4>
                        <p class="project-list-details">
                            致回忆难觅，致谢相遇，是岁月静好，还是有人为你负重前行？
                        </p>
                    </div>
                </li>

                <li class="project-list">
                    <div class="project-list-icon">
                        <i class="iconfont icon-lipinka"></i>
                    </div>
                    <div class="project-list-info">
                        <h4 class="project-list-title">
                            <a href="https://mp.weixin.qq.com/s?__biz=MzUwOTcwNjUzMg==&mid=2247483812&idx=1&sn=42608008505807171d8de0c5401ad39d&chksm=f90f69efce78e0f9b324a9ec2554e117a177e703225e56f9fabdcb1483bc96b779583772369a&token=1981611428&lang=zh_CN#rd" target="_blank">原创文章：似水流年，莫忘初心</a>
                        </h4>
                        <p class="project-list-details">
                            致时光流逝，流年似水，思念浅和，若安好便安心。
                        </p>
                    </div>
                </li>
            </ul>
            <!--     <li class="project-list">
                       <div class="project-list-icon">
                         <i class="iconfont icon-nongji"></i>
                       </div>
                       <div class="project-list-info">
                         <h4 class="project-list-title">
                           <a href=""></a>
                         </h4>
                         <p class="project-list-details"></p>
                       </div>
                     </li>
                     <li class="project-list">
                       <div class="project-list-icon">
                         <i class="iconfont icon-dianshang"></i>
                       </div>
                       <div class="project-list-info">
                         <h4 class="project-list-title">
                           <a href=""></a>
                         </h4>
                         <p class="project-list-details">
                         </p>
                       </div>
                     </li> -->
        </section>


        <!--article -->
        <!--    <section id="article">
            <h4 class="main-title">
              <i class="iconfont icon-wenzhang1"></i>
              Article
            </h4>

            <ul>
              <li class="article-list"><a href="链接" target="_blank">介绍说明</a></li>
              <li class="article-list"><a href="链接" target="_blank">介绍说明</a></li>
              <li class="article-list"><a href="链接" target="_blank">介绍说明</a></li>
              <li class="article-list"><a href="链接" target="_blank">介绍说明</a></li>
              <li class="article-list"><a href="链接" target="_blank">介绍说明</a></li>

            </ul>

          </section> -->


        <section id="picture">
            <h4 class="main-title">
                <i class="iconfont icon-picture"></i>
                Picture
            </h4>
            <div class="picture-list" data-intro="人总要峰回路转的时候才想起过去的种种。" data-link="https://mp.weixin.qq.com/s?__biz=MzUwOTcwNjUzMg==&mid=2247483782&idx=1&sn=11f0fe1ed0ac22e53848a06e9ee95ab4&chksm=f90f69cdce78e0db26463f37811b48aef84573982a6894e939b3becdfb607d46bb089f8de7ed&token=1981611428&lang=zh_CN#rd">
                <img src="./images/pic1.jpg" alt="">
            </div>
            <div class="picture-list" data-intro="我希望，不用翻越一座座山去看你，在冬天，一阵花香的距离，就能望见你。" data-link="https://mp.weixin.qq.com/s?__biz=MzUwOTcwNjUzMg==&mid=2247483758&idx=1&sn=0f722dbab67d5ff748b04d0ef1797110&chksm=f90f6925ce78e0333d2b1d3be6e7b5eb2e483a52199f2aeb030e660ce91b11e555ff4b1c8b20&token=1981611428&lang=zh_CN#rd">
                <img src="./images/pic3.jpg" alt="">
            </div>
            <div class="picture-list" data-intro="我想独自去旅行，只带一个行李，还有一个美好的梦想。" data-link="https://mp.weixin.qq.com/s?__biz=MzUwOTcwNjUzMg==&mid=2247483753&idx=1&sn=0edd865744be96d62342645ab9d3176e&chksm=f90f6922ce78e0345950a84f40941cb5ba576d7215809f501a2964ef9f823fdf9b5ba4ab3f12&token=1981611428&lang=zh_CN#rd">
                <img src="./images/pic2.jpg" alt="">
            </div>
            <div class="picture-list" data-intro="&nbsp&nbsp&nbsp&nbsp孔明灯飞往星空，寄托你的心愿，烟花绚丽划过天际，飘洒你的思念，愿你的好梦格外香甜，愿你的感觉妙不可言。" data-link="https://mp.weixin.qq.com/s?__biz=MzUwOTcwNjUzMg==&mid=2247483714&idx=1&sn=3bef098f32f8402e99a29d56227278e4&chksm=f90f6909ce78e01fedb1d981032be70dc59f57c3a432c36c04f27f456acdcf98614fc259488c&token=1981611428&lang=zh_CN#rd">
                <img src="./images/pic4.jpg" alt="">
            </div>
            <!-- <div class="picture-list" data-intro="" data-link="">
                <img src="" alt="">
              </div>
              <div class="picture-list" data-intro="" data-link="">
                <img src="" alt="">
              </div> -->
        </section>

        <section id="contact">
            <h4 class="main-title">
                <i class="iconfont icon-liuyan"></i>
                WELCOME TO GET IN TOUCH
            </h4>

            <form id="user_leave_form" action="javascript:void(0)" method="post">
                <div id="contact-wrapper">
                    <%--name属性是我们后端从前端表单获取数据的关键字key--%>
                    <input type="text" placeholder="Name" name="name">
                    <input type="email" placeholder="Email" name="email">
                </div>
                <textarea name="message" id="contact-message" cols="30" rows="10" placeholder="Message..."></textarea>
                <div>
                    <button id="contact-button" type="submit" onclick="commitUserLeave()">Submit</button>
                </div>
            </form>
        </section>
    </div>

    <!-- 遮罩层 -->
    <div id="cover">
        <div id="cover-container">
            <a id="cover-close" href="javascript:void(0)">X</a>
            <img id="cover-img" src="./images/pic1.jpg" alt="">
            <p id="cover-details">人总要峰回路转的时候才想起过去的种种。</p>
            <a id="cover-link" href=""target="_blank">查看文章</a>
        </div>
    </div>

</div>
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>

<script>
    // 获取元素 返回类数组
    let aDiv = document.querySelectorAll('.picture-list');
    let oCover = document.querySelector('#cover');
    let oClose = document.querySelector('#cover-close');

    let oImg = document.querySelector('#cover-img');
    let oDetails = document.querySelector('#cover-details');
    let oLink = document.querySelector('#cover-link');

    // 给picture-list 数组循环绑定点击事件
    for(let i = 0; i < aDiv.length; i++) {
        aDiv[i].onclick = function() {
            // 给谁绑定了事件谁就是this
            let url = this.querySelector('img').src;
            // 获取对应的属性赋值给cover中对应的元素
            oDetails.innerHTML = this.dataset.intro;
            oLink.href = this.dataset.link;
            oImg.src = url;
            oCover.style.display = 'block';
        }
    }

    // 点击关闭按钮 隐藏cover
    oClose.onclick = function() {
        oCover.style.display = 'none';
    }


    // fetch方法发送请求 jsonbrid来临时处理跨域
    fetch('https://bird.ioliu.cn/v1?url=http://www.bing.com/HPImageArchive.aspx?format=js&idx=1&n=1')
    .then(function(response) {
      return response.json();
    })
    .then(function(myJson) {
      // myJson 真正接口返回的数据
      console.log(myJson);
    });

    function commitUserLeave() {
        //ajax异步操作$ JQuery中语法结构 $.get() 、$.POST()  、$.ajax({})
        $.post("${pageContext.request.contextPath}/saveUserLeave",$("#user_leave_form").serialize(),function(data){
            alert(data);
            window.location.reload();
        });
    }

  </script>
</body>
</html>
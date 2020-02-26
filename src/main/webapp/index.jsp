<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; utf-8" %>
<!doctype html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>主页</title>
    <link rel="stylesheet" href="./boot/css/bootstrap.min.css">
    <script src="./boot/js/jquery-3.3.1.min.js"></script>
    <script src="./boot/js/bootstrap.min.js"></script>
    <style>
        .page-header {
            margin-top: 0px;
            margin-bottom: 12px;
        }
    </style>
</head>
<body>


<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="#">员工管理系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" id="name" name="name" class="form-control" placeholder="请输入用户名...">
                    <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码...">
                </div>
                <button type="submit" class="btn btn-default">登录</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">欢迎:<span class="text-danger">小黑</span></a></li>
                <li><a href="#">退出登录</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container">

    <div class="row">
        <!--页面菜单-->
        <div class="col-md-2">
            <ul class="list-group">
                <li class="list-group-item active">员工管理</li>
                <li class="list-group-item"><a href="tags.jsp">标签管理</a></li>
            </ul>
        </div>
        <!--页面中心布局 头 选项卡 和 table 和 分页-->
        <div class="col-md-10">
            <div class="page-header">员工管理</div>
            <ul class="nav nav-tabs">
                <li role="presentation" class="active"><a href="#">员工列表</a></li>
                <li role="presentation"><a href="javascript:;" data-toggle="modal" data-target="#myModal">添加员工</a></li>
            </ul>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>id</th>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>生日</th>
                    <th>薪资</th>
                    <th>标签</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>张三</td>
                    <td>23</td>
                    <td>2012/12/12</td>
                    <td>2300.12</td>
                    <td>勤劳,踏实,热血</td>
                    <td><a href="" class="btn btn-primary">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=""
                                                                                            class="btn btn-primary"
                                                                                            data-toggle="modal"
                                                                                            data-target="#myModal">修改</a>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>张三</td>
                    <td>23</td>
                    <td>2012/12/12</td>
                    <td>2300.12</td>
                    <td>勤劳,踏实,热血</td>
                    <td><a href="" class="btn btn-primary">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=""
                                                                                            class="btn btn-primary"
                                                                                            data-toggle="modal"
                                                                                            data-target="#myModal">修改</a>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>张三</td>
                    <td>23</td>
                    <td>2012/12/12</td>
                    <td>2300.12</td>
                    <td>勤劳,踏实,热血</td>
                    <td><a href="" class="btn btn-primary">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=""
                                                                                            class="btn btn-primary"
                                                                                            data-toggle="modal"
                                                                                            data-target="#myModal">修改</a>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>张三</td>
                    <td>23</td>
                    <td>2012/12/12</td>
                    <td>2300.12</td>
                    <td>勤劳,踏实,热血</td>
                    <td><a href="" class="btn btn-primary">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=""
                                                                                            class="btn btn-primary"
                                                                                            data-toggle="modal"
                                                                                            data-target="#myModal">修改</a>
                    </td>
                </tr>
                </tbody>
            </table>
            <nav aria-label="Page navigation" class="pull-right">
                <ul class="pagination">
                    <li class="disabled">
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li class="disabled">
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>


</div>


<!--员工添加 修改-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">编辑员工信息</h4>
            </div>
            <div class="modal-body">


                <form>
                    <div class="form-group">
                        <label for="username">用户名</label>
                        <input type="email" class="form-control" id="username" placeholder="用户名">
                    </div>
                    <div class="form-group">
                        <label for="password1">年龄</label>
                        <input type="password" class="form-control" id="password1" placeholder="密码">
                    </div>
                    <div class="form-group">
                        <label for="bir">生日</label>
                        <input type="password" class="form-control" id="bir" placeholder="生日">
                    </div>
                    <div class="form-group">
                        <label for="salary">薪资</label>
                        <input type="password" class="form-control" id="salary" placeholder="薪资">
                    </div>
                    <label>
                        请选择标签:
                    </label>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">
                            <a>任劳任怨&nbsp;<span class="badge">5</span></a>
                        </label>
                        <label>
                            <input type="checkbox">
                            <a>能干&nbsp;<span class="badge">12</span></a>
                        </label>
                    </div>
                </form>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">保存员工信息</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>
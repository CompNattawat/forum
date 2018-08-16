<div class="nav navbar-nav navbar-right navbar-login" style="padding:10px;">
    {# <div class="btn-group">
        <a class="btn btn-sm btn-default" href="https://phalcon.link/fund" target="_blank">
            <span class="p-ico"></span>
            Support Us
        </a>
    </div> #}
    <div class="btn-group">
        {%- if session.get('identity') -%}
            {{- link_to(
            'post/discussion',
            '<span class="octicon octicon-megaphone"></span> Start a Discussion',
            'class': 'btn btn-sm btn-default',
            'rel': 'nofollow'
            ) -}}
        {%- else -%}
            {# {{- link_to(
            'login/oauth/authorize',
            '<span class="octicon octicon-octoface"></span> Log In',
            'class': 'btn btn-sm btn-default',
            'rel': 'nofollow',
            'title': 'Log In with Github'
            ) -}} #}

            <li class="dropdown">
              <a href="" class="dropdown-toggle btn btn-sm btn-default" data-toggle="dropdown"><span class="octicon octicon-octoface"></span> Log In</a>
              <ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu">
                <div class="col-md-12">
                  <div class="text-center"><h3><b>Log In</b></h3></div>
                  <form id="ajax-login-form" action="login/authentication" method="post" role="form" autocomplete="off">
                    <div class="form-group">
                      <label for="username">Username</label>
                      <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="" autocomplete="off">
                    </div>

                    <div class="form-group">
                      <label for="password">Password</label>
                      <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" autocomplete="off">
                    </div>

                    <div class="form-group">
                      <div class="row">
                        <div class="col-xs-12 ">
                          <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-success" value="Log In">
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </ul>
            </li>
        {%- endif -%}
    </div>
</div>

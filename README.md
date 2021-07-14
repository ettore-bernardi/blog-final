<h2>Gettin started on Ubunto</h2>
<p>First you will need to install Ruby: 2.7.3 and Rails: 6.0.4</p>
<a href="https://gorails.com/setup/ubuntu/20.04">Installation guide</a>

<h2>Setup</h2>
<h4>In your terminal:</h4>
<ol>
    <li>Clone this Repo <code>git@github.com:ettore-bernardi/rubyBlogProject.git</code></li>
    <li>Go into the directory <code>cd rubyBlogProject</code></li>
    <li>Do the bundle istalation <code>bundle</code></li>
    <li>Do the yarn instalation <code>yarn</code></li>
    <li>Crete the Database <code>rake db:create db:migrate db:seed</code></li>
    <li>Run the server <code>rails server</code></li>
</ol>

<h4>In your browser</h4>
<ol>
    <li>Go to <code>http://localhost:3000/</code> there you will see the main posts page, this is the principal readers page</li>
    <li>Now if you go to <code>http://localhost:3000/</code> login using the email <code>author@blog.com</code> and password <code>123321</code></li>
    <li>after logging in you will see the authors page, here you can create new posts and manage the posts made by the user who is logged</li>
</ol>
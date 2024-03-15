# Configures an Nginx server to listen on port 80 and perform a 301 redirect from /redirect_me
# The root page should return "Hello World!"

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Define Nginx configuration file for redirection
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => '
    server {
      listen 80;
      listen [::]:80 default_server;
      root   /etc/nginx/html;
      index  index.html index.htm;

      location /redirect_me {
        return 301 http://cuberule.com/;
      }
    }',
  notify  => Service['nginx'],
}

# Ensure the Nginx configuration file is linked to sites-enabled
file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
}

# Define the index.html file content
file { '/etc/nginx/html/index.html':
  ensure  => file,
  content => 'Hello World!',
}

# Restart Nginx service to apply changes
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default', '/etc/nginx/html/index.html'],
}

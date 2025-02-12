require 'htmlentities'
coder = HTMLEntities.new
FIND_IMG_SRC_PATTERN = /(<img[^>]+src=")(?:#{Setting.protocol + ":\d*//[^/]+"})?#{Redmine::Utils.relative_url_root}([^"]+)("[^>]*>)/

Redmine::Plugin.register :redmine_email_images do
  name 'Redmine Email Images plugin'
  author 'Dmitriy Kalachev'
  description 'Send images as attachments instead of using URL and getting a 403 error in email clients.'
  version '0.2.1'
  url 'http://github.com/dkalachov/redmine_email_images'
  author_url 'http://dkalachov.com'
end

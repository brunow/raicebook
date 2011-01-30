require 'raicebook'

module Raicebook
  module Helpers
    
    def fb_include_tag
      raw '<script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>'
    end
    
    def fb_init_tag(options={})
      default_options = {
        :status => "true",
        :cookie => "true",
        :xfbml  => "true",
        :app_id => "0"
      }
      options = default_options.merge(options)
      
      js = <<-JS
        FB.init({
          appId  : '#{options[:app_id]}',
          status : '#{options[:status]}'
          cookie : '#{options[:cookie]}',
          xfbml  : '#{options[:xfbml]}'
        });
      JS
      
      javascript_tag js
    end
    
    def fb_like_button(options={})
      default_options = {
        :layout     => "standart",
        :width      => "450",
        :show_faces => "true",
        :href       => request.url
      }
      options = default_options.merge(options)
      
      content_tag("fb:like", "", options)
    end
    
    def fb_og_meta(options={})
      content = String.new
      
      options.each do |attr,val|
        content += tag("meta", :property => "og:#{attr}", :content => val) + "\n"
      end
      
      content.html_safe
    end
    
    def fb_meta(options={})
      content = String.new
      
      options.each do |attr,val|
        content += tag("meta", :property => "fb:#{attr}", :content => val) + "\n"
      end
      
      content.html_safe
    end
    
    def fb_like_box(options={})
      default_options = {
        :width      => "292",
        :show_faces => "true",
        :stream     => "true",
        :header     => "true",
        :href       => request.url
      }
      options = default_options.merge(options)
      
      content_tag("fb:like-box", "", options)
    end
    
    def fb_comments(options={})
      default_options = {
        :num_pots      => "10",
        :wdith => "425",
        :publish_feed   => "true"
      }
      options = default_options.merge(options)
      
      content_tag("fb:comments", "", options)
    end
    
    def fb_login_button(options={})
      default_options = {
        :width      => "200",
        :show_faces => "true",
        :max_rows   => "1"
      }
      options = default_options.merge(options)
      
      content_tag("fb:login-button", "", options)
    end
    
  end
end
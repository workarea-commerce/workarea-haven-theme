module Workarea
  module Storefront
    module HavenBlogHelper
      def blog_tag_selected(tag)
        uri = URI(request.original_url)
        return false unless uri.path.include?("tagged")

        uri.path.split("/").last == tag[:name]
      end
    end
  end
end

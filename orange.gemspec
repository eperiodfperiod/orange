# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{orange}
  s.version = "0.2.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Haslem"]
  s.date = %q{2010-05-18}
  s.description = %q{Orange is a Ruby framework for building managed websites with code as simple as Sinatra}
  s.email = %q{therabidbanana@gmail.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "lib/orange-core.rb",
     "lib/orange-core/application.rb",
     "lib/orange-core/assets/css/exceptions.css",
     "lib/orange-core/assets/js/exceptions.js",
     "lib/orange-core/carton.rb",
     "lib/orange-core/core.rb",
     "lib/orange-core/magick.rb",
     "lib/orange-core/middleware/base.rb",
     "lib/orange-core/middleware/database.rb",
     "lib/orange-core/middleware/four_oh_four.rb",
     "lib/orange-core/middleware/globals.rb",
     "lib/orange-core/middleware/loader.rb",
     "lib/orange-core/middleware/rerouter.rb",
     "lib/orange-core/middleware/restful_router.rb",
     "lib/orange-core/middleware/route_context.rb",
     "lib/orange-core/middleware/route_site.rb",
     "lib/orange-core/middleware/show_exceptions.rb",
     "lib/orange-core/middleware/static.rb",
     "lib/orange-core/middleware/static_file.rb",
     "lib/orange-core/middleware/template.rb",
     "lib/orange-core/packet.rb",
     "lib/orange-core/plugin.rb",
     "lib/orange-core/resource.rb",
     "lib/orange-core/resources/mapper.rb",
     "lib/orange-core/resources/model_resource.rb",
     "lib/orange-core/resources/not_found.rb",
     "lib/orange-core/resources/page_parts.rb",
     "lib/orange-core/resources/parser.rb",
     "lib/orange-core/resources/routable_resource.rb",
     "lib/orange-core/stack.rb",
     "lib/orange-core/templates/exceptions.haml",
     "lib/orange-core/views/default_resource/create.haml",
     "lib/orange-core/views/default_resource/edit.haml",
     "lib/orange-core/views/default_resource/list.haml",
     "lib/orange-core/views/default_resource/show.haml",
     "lib/orange-core/views/default_resource/table_row.haml",
     "lib/orange-core/views/not_found/404.haml",
     "lib/orange-more.rb",
     "lib/orange-more/administration.rb",
     "lib/orange-more/administration/assets/css/admin.css",
     "lib/orange-more/administration/assets/css/blueprint-ie.css",
     "lib/orange-more/administration/assets/css/blueprint-print.css",
     "lib/orange-more/administration/assets/css/blueprint.css",
     "lib/orange-more/administration/assets/js/jquery.js",
     "lib/orange-more/administration/cartons/site.rb",
     "lib/orange-more/administration/cartons/site_carton.rb",
     "lib/orange-more/administration/cartons/user.rb",
     "lib/orange-more/administration/middleware/access_control.rb",
     "lib/orange-more/administration/middleware/site_load.rb",
     "lib/orange-more/administration/plugin.rb",
     "lib/orange-more/administration/resources/admin_resource.rb",
     "lib/orange-more/administration/resources/site_resource.rb",
     "lib/orange-more/administration/resources/user_resource.rb",
     "lib/orange-more/administration/templates/admin.haml",
     "lib/orange-more/administration/views/openid_login.haml",
     "lib/orange-more/administration/views/users/create.haml",
     "lib/orange-more/administration/views/users/edit.haml",
     "lib/orange-more/adverts.rb",
     "lib/orange-more/adverts/cartons/adverts_carton.rb",
     "lib/orange-more/adverts/plugin.rb",
     "lib/orange-more/adverts/resources/adverts_resource.rb",
     "lib/orange-more/adverts/views/adverts/adverts.haml",
     "lib/orange-more/assets.rb",
     "lib/orange-more/assets/cartons/asset_carton.rb",
     "lib/orange-more/assets/plugin.rb",
     "lib/orange-more/assets/resources/asset_resource.rb",
     "lib/orange-more/assets/views/assets/create.haml",
     "lib/orange-more/blog.rb",
     "lib/orange-more/blog/cartons/blog.rb",
     "lib/orange-more/blog/cartons/blog_post.rb",
     "lib/orange-more/blog/plugin.rb",
     "lib/orange-more/blog/resources/blog_post_resource.rb",
     "lib/orange-more/blog/resources/blog_resource.rb",
     "lib/orange-more/blog/views/blog/blog_archive_view.haml",
     "lib/orange-more/blog/views/blog/blog_offset_list_view.haml",
     "lib/orange-more/blog/views/blog/blog_post_view.haml",
     "lib/orange-more/blog/views/blog/sitemap_row.haml",
     "lib/orange-more/blog/views/blog_posts/edit.haml",
     "lib/orange-more/cloud.rb",
     "lib/orange-more/cloud/plugin.rb",
     "lib/orange-more/cloud/resources/cloud_resource.rb",
     "lib/orange-more/debugger.rb",
     "lib/orange-more/debugger/assets/css/debug_bar.css",
     "lib/orange-more/debugger/middleware/debugger.rb",
     "lib/orange-more/debugger/plugin.rb",
     "lib/orange-more/debugger/views/debug_bar.haml",
     "lib/orange-more/disqus.rb",
     "lib/orange-more/disqus/plugin.rb",
     "lib/orange-more/disqus/resources/disqus_resource.rb",
     "lib/orange-more/disqus/views/disqus/comment_thread.haml",
     "lib/orange-more/events.rb",
     "lib/orange-more/events/assets/js/events.js",
     "lib/orange-more/events/cartons/orange_calendar.rb",
     "lib/orange-more/events/cartons/orange_event.rb",
     "lib/orange-more/events/plugin.rb",
     "lib/orange-more/events/resources/calendar_resource.rb",
     "lib/orange-more/events/resources/event_resource.rb",
     "lib/orange-more/events/views/calendar/calendar.haml",
     "lib/orange-more/events/views/events/create.haml",
     "lib/orange-more/events/views/events/edit.haml",
     "lib/orange-more/events/views/events/list.haml",
     "lib/orange-more/events/views/events/show.haml",
     "lib/orange-more/events/views/events/table_row.haml",
     "lib/orange-more/members.rb",
     "lib/orange-more/members/cartons/member_carton.rb",
     "lib/orange-more/members/plugin.rb",
     "lib/orange-more/members/resources/members_resource.rb",
     "lib/orange-more/members/views/members/create.haml",
     "lib/orange-more/members/views/members/edit.haml",
     "lib/orange-more/members/views/members/live.show.haml",
     "lib/orange-more/members/views/members/login.haml",
     "lib/orange-more/members/views/members/logout.haml",
     "lib/orange-more/members/views/members/profile.haml",
     "lib/orange-more/members/views/members/register.haml",
     "lib/orange-more/news.rb",
     "lib/orange-more/news/cartons/news.rb",
     "lib/orange-more/news/plugin.rb",
     "lib/orange-more/news/resources/news_resource.rb",
     "lib/orange-more/news/views/news/archive.haml",
     "lib/orange-more/news/views/news/edit.haml",
     "lib/orange-more/news/views/news/latest.haml",
     "lib/orange-more/news/views/news/sitemap_row.haml",
     "lib/orange-more/pages.rb",
     "lib/orange-more/pages/cartons/page_carton.rb",
     "lib/orange-more/pages/cartons/page_version_carton.rb",
     "lib/orange-more/pages/plugin.rb",
     "lib/orange-more/pages/resources/page_resource.rb",
     "lib/orange-more/pages/views/pages/edit.haml",
     "lib/orange-more/pages/views/pages/show.haml",
     "lib/orange-more/sitemap.rb",
     "lib/orange-more/sitemap/assets/img/sitemap_down.png",
     "lib/orange-more/sitemap/assets/img/sitemap_down_d.png",
     "lib/orange-more/sitemap/assets/img/sitemap_indent.png",
     "lib/orange-more/sitemap/assets/img/sitemap_indent_d.png",
     "lib/orange-more/sitemap/assets/img/sitemap_outdent.png",
     "lib/orange-more/sitemap/assets/img/sitemap_outdent_d.png",
     "lib/orange-more/sitemap/assets/img/sitemap_up.png",
     "lib/orange-more/sitemap/assets/img/sitemap_up_d.png",
     "lib/orange-more/sitemap/assets/js/sitemap.js",
     "lib/orange-more/sitemap/cartons/route.rb",
     "lib/orange-more/sitemap/middleware/flex_router.rb",
     "lib/orange-more/sitemap/plugin.rb",
     "lib/orange-more/sitemap/resources/sitemap_resource.rb",
     "lib/orange-more/sitemap/views/default_resource/sitemap_row.haml",
     "lib/orange-more/sitemap/views/sitemap/breadcrumb.haml",
     "lib/orange-more/sitemap/views/sitemap/list.haml",
     "lib/orange-more/sitemap/views/sitemap/one_level.haml",
     "lib/orange-more/sitemap/views/sitemap/route_actions.haml",
     "lib/orange-more/sitemap/views/sitemap/sitemap_links.haml",
     "lib/orange-more/sitemap/views/sitemap/table_row.haml",
     "lib/orange-more/sitemap/views/sitemap/two_level.haml",
     "lib/orange-more/slices.rb",
     "lib/orange-more/slices/middleware/radius_parser.rb",
     "lib/orange-more/slices/plugin.rb",
     "lib/orange-more/slices/resources/radius.rb",
     "lib/orange-more/slices/resources/slices.rb",
     "lib/orange-more/subsites.rb",
     "lib/orange-more/subsites/cartons/subsite.rb",
     "lib/orange-more/subsites/middleware/subsite_load.rb",
     "lib/orange-more/subsites/plugin.rb",
     "lib/orange-more/subsites/resources/subsite_resource.rb",
     "lib/orange-more/subsites/views/subsites/index.haml",
     "lib/orange-more/testimonials.rb",
     "lib/orange-more/testimonials/cartons/testimonials_carton.rb",
     "lib/orange-more/testimonials/plugin.rb",
     "lib/orange-more/testimonials/resources/testimonials_resource.rb",
     "lib/orange-more/testimonials/views/testimonials/testimonials.haml",
     "lib/orange.rb"
  ]
  s.homepage = %q{http://github.com/therabidbanana/orange}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Middle ground between Sinatra and Rails}
  s.test_files = [
    "spec/orange-core/application_spec.rb",
     "spec/orange-core/carton_spec.rb",
     "spec/orange-core/core_spec.rb",
     "spec/orange-core/magick_spec.rb",
     "spec/orange-core/middleware/base_spec.rb",
     "spec/orange-core/middleware/globals_spec.rb",
     "spec/orange-core/middleware/rerouter_spec.rb",
     "spec/orange-core/middleware/restful_router_spec.rb",
     "spec/orange-core/middleware/route_context_spec.rb",
     "spec/orange-core/middleware/route_site_spec.rb",
     "spec/orange-core/middleware/show_exceptions_spec.rb",
     "spec/orange-core/middleware/static_file_spec.rb",
     "spec/orange-core/middleware/static_spec.rb",
     "spec/orange-core/mock/mock_app.rb",
     "spec/orange-core/mock/mock_carton.rb",
     "spec/orange-core/mock/mock_core.rb",
     "spec/orange-core/mock/mock_middleware.rb",
     "spec/orange-core/mock/mock_mixins.rb",
     "spec/orange-core/mock/mock_model_resource.rb",
     "spec/orange-core/mock/mock_pulp.rb",
     "spec/orange-core/mock/mock_resource.rb",
     "spec/orange-core/mock/mock_router.rb",
     "spec/orange-core/orange_spec.rb",
     "spec/orange-core/packet_spec.rb",
     "spec/orange-core/resource_spec.rb",
     "spec/orange-core/resources/mapper_spec.rb",
     "spec/orange-core/resources/model_resource_spec.rb",
     "spec/orange-core/resources/parser_spec.rb",
     "spec/orange-core/resources/routable_resource_spec.rb",
     "spec/orange-core/spec_helper.rb",
     "spec/orange-core/stack_spec.rb",
     "spec/stats.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<haml>, [">= 2.2.13"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
    else
      s.add_dependency(%q<rack>, [">= 1.0.1"])
      s.add_dependency(%q<haml>, [">= 2.2.13"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0.1"])
    s.add_dependency(%q<haml>, [">= 2.2.13"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
  end
end


module SketchilyTag
  module InstanceMethods
    def sketchily_tag(name, value = nil, options = {})
      Sketchily.render(:partial => "sketchily/sketchily_tag",
        :locals => {:name => name, :id => sanitize_to_id(name),
                    :value => value, :options => options}).html_safe
    end

    def svg_edit_tag(name, value = nil, options = {})
      sketchily_tag(name, value, options)
    end
  end
end

ActionView::Helpers::FormTagHelper.send :include, SketchilyTag::InstanceMethods

# class ReactInput < SimpleForm::Inputs::Base
#   def input(wrapper_options = nil)
#     template.content_tag :div, '', :data => {
#       :"react-class" => "TextField",
#       :"react-props" => {
#         "name" => "#{object_name}[#{attribute_name}]",
#         "required" => true,
#         "placeholder" => raw_label_text,
#         "error" => object.errors.has_key?(attribute_name),
#         "errorText" => object.errors.messages[attribute_name].first,
#         "defaultValue" => object.send(attribute_name)
#       }.delete_if { |k, v| v.nil? }
#     }
#   end

#   protected

#   # from SimpleForm::Components::Labels
#   def raw_label_text #:nodoc:
#     options[:label] || label_translation
#   end

#   # First check labels translation and then human attribute name.
#   def label_translation #:nodoc:
#     if SimpleForm.translate_labels && (translated_label = translate_from_namespace(:labels))
#       translated_label
#     elsif object.class.respond_to?(:human_attribute_name)
#       object.class.human_attribute_name(reflection_or_attribute_name.to_s)
#     else
#       attribute_name.to_s.humanize
#     end
#   end
# end

module ApplicationHelper

  def react_input(object, object_name, attribute_name, label_text)
    content_tag :div, '', :data => {
      :"react-class" => "TextField",
      :"react-props" => {
        "name" => "#{object_name}[#{attribute_name}]",
        "required" => true,
        "placeholder" => label_text,
        "error" => object.errors.has_key?(attribute_name),
        "errorText" => object.errors.messages[attribute_name].first,
        "defaultValue" => object.send(attribute_name)
      }.delete_if { |k, v| v.nil? }
    }
  end
end

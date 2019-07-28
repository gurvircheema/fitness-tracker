module ApplicationHelper
  def flash_message
    flash.map do |key, msg|
      content_tag :div, id: key, class: flash_class(key) do
        content_tag :button, class: 'delete'
        msg
      end
    end.join.html_safe
  end

  private

  def flash_class(key)
    class_string = case key
    when 'alert'
      'is-danger'
    else
      'is-info'
    end
    "notification is-marginless is-radiusless #{class_string}"
  end
end

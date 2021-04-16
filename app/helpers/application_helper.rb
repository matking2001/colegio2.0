module ApplicationHelper
    # Notificaciones TOASTR
    def custom_bootstrap_flash
        flash_messages = []
        flash.each do |type, message|
            type = 'info' if type == 'notice'
            type = 'success' if type == 'success'
            type = 'error'   if type == 'alert'
            text = "<script>toastr.#{type}('#{message}');</script>"
            flash_messages << text.html_safe if message
        end
        flash_messages.join("\n").html_safe
    end
end

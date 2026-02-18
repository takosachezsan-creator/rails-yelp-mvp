# config/initializers/simple_form.rb
if defined?(SimpleForm)
  SimpleForm.setup do |config|
    config.wrappers :default, class: :input,
      hint_class: :field_with_hint, error_class: :field_with_errors do |b|
      b.use :html5
      b.use :placeholder
      b.optional :maxlength
      b.optional :pattern
      b.optional :min_max
      b.optional :readonly

      b.use :label_input
      b.use :error, wrap_with: { tag: :span, class: :error }
      b.use :hint,  wrap_with: { tag: :p, class: :hint }
    end

    config.default_wrapper = :default
    config.button_class = "btn btn-primary"
  end
end

require_relative '../demo/sample_elements.rb'

module ShowUIExamples
  # State 'module_function' before any method definitions so
  # commands are mixed into Dispatch classes as private methods.
  module_function

  # Commands that showcase main UI elements
  def show_button_template
    UI::FBButtonTemplate.new(SampleElements::BUTTON_TEMPLATE_TEXT,
                             SampleElements::BUTTON_TEMPLATE_BUTTONS).send(@user)
                             # TODO: send to (@user) directly?
  end

  def show_carousel(image_ratio: nil)
    if image_ratio == :square
      UI::FBCarousel.new(SampleElements::CAROUSEL).square_images.send(@user)
    else
      UI::FBCarousel.new(SampleElements::CAROUSEL).send(@user)
    end
  end
end
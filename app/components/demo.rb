class Demo < ShadcnPhlexcomponents::Base
  class_variants(
    base: "flex flex-col"
  )

  def initialize(title:, **attributes)
    @title = title
    super(**attributes)
  end

  def view_template(&)
    div(**@attributes) do
      h2(class: "font-heading mb-2 scroll-m-20 text-lg font-semibold tracking-tight") { @title }

      div(class: "flex items-center justify-center h-full") do
        yield
      end
    end
  end
end

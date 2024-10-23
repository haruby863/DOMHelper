require "js"

module DOMHelper
  def document
    JS.global["document"]
  end

  def create_elem(tag, parent)
    elem = document.createElement(tag)

    yield(elem) if block_given?

    parent&.appendChild(elem)

    elem
  end
end

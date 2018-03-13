Dragonfly.app(:workarea).configure do
  processor :large_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "264x")
    content.process!(:optim)
  end
end

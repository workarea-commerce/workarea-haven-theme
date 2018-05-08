#TODO remove strict dragonfly processes when placeholder image dimensions are set globally.
Dragonfly.app(:workarea).configure do
  processor :large_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "232x232")
    content.process!(:optim)
  end

  processor :large_thumb_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "464x464")
    content.process!(:optim)
  end

  processor :detail do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "600x600")
    content.process!(:optim)
  end

  processor :detail_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "1200x1200")
    content.process!(:optim)
  end

  processor :small_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "136x136")
    content.process!(:optim)
  end

  processor :small_thumb_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "272x272")
    content.process!(:optim)
  end

  processor :swatch_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "32x32")
    content.process!(:optim)
  end
end

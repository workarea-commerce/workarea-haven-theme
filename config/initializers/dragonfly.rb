Dragonfly.app(:workarea).configure do
  processor :large_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "232x")
    content.process!(:optim)
  end

  processor :large_thumb_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "464x")
    content.process!(:optim)
  end

  processor :detail do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "600x")
    content.process!(:optim)
  end

  processor :detail_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "1200x")
    content.process!(:optim)
  end

  # PDP Main Image Size - mobile
  processor :detail_mobile do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "300x")
    content.process!(:optim)
  end

  processor :zoom do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "1200x")
    content.process!(:optim)
  end

  processor :super_zoom do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "2400x")
    content.process!(:optim)
  end

  processor :detail_alt do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "120x")
    content.process!(:optim)
  end

  processor :small_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "136x")
    content.process!(:optim)
  end

  processor :small_thumb_retina do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "272x")
    content.process!(:optim)
  end

  processor :swatch_thumb do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "32x")
    content.process!(:optim)
  end

  processor :blog_thumbnail do |content|
    content.process!(:encode, :jpg, Workarea.config.jpg_encode_options)
    content.process!(:thumb, "452x")
    content.process!(:optim)
  end
end

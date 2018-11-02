module Base64Attach
  extend self

  def from_base64(data:, filename:)
    decoded_image = Base64.decode64(data)
    image_io = StringIO.new(decoded_image)

    { io: image_io, filename: filename }
  end
end

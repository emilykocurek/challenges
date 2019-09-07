class Image

  def initialize(picture)
    @picture = picture
  end

  def output_image
    @picture.each do |data|
      puts data.join
    end
  end

  def blur(distance)
    distance.times do
      blur_pixel!
    end
  end

  private

    def blur_pixel!
      
      blur_pixel = []
      @picture.each_with_index do |row, row_index|
        row.each_with_index do |column, column_index|
          blur_pixel << [row_index, column_index] if column == 1
        end
      end
      
      blur_pixel.each do |pixel|
        @picture[pixel[0]][pixel[1] + 1] = 1 if pixel[1] + 1 <= @picture[pixel[0]].length - 1
        @picture[pixel[0]][pixel[1] - 1] = 1 if pixel[1] - 1 >= 0
        @picture[pixel[0] + 1][pixel[1]] = 1 if pixel[0] + 1 <= @picture.length - 1
        @picture[pixel[0] - 1][pixel[1]] = 1 if pixel[0] - 1 >= 0
      end
    end

end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 1],
])
image.blur(3)
image.output_image
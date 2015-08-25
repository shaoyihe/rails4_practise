require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "empty test" do
      product = Product.new
      assert product.invalid? ,"failed"
      assert product.errors[:title].any?
  end

  test "price test" do
     product = Product.new({
                               title: "test",
                               description: "test",
                               image_url: "test"
                           })
    product.price = 0
    assert product.invalid?
    assert product.errors[:price].any?

    product.price = 1
    assert product.valid?

  end
end

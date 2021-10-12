class Comment < ApplicationRecord
  include Visible
  belongs_to :article #association
end

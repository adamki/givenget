class Identity < OmniAuth::Identity::Models::ActiveRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: {
                      :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
                    }
end

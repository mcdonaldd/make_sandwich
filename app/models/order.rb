class Order < ActiveRecord::Base
  attr_accessible :sandwich, :user
  belongs_to :user
  after_create :email_after_order
  
  def email_after_order
    RestClient.post("https://api:key-26mzn1uxlj1zk7c5xnszcbbxgkhy1ne8"\
                     "@api.mailgun.net/v2/aboxofpaints.mailgun.org/messages",
                      :from => 'David McDonald <david@aboxofpaints.com>',
                      :to => 'make_sandwich@generalthings.com',
                      :subject => "A #{self.sandwich} has been ordered.",
                      :text => "A call to arms is at hand!\n
          #{self.user.email} ordered a #{self.sandwich}.\n
          WERQ.\n
          \"There's nothing like unrequited love to take all the flavor out of a peanut butter sandwich.\" - Charlie Brown \n
                                ")
  end
end

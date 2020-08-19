# Limit Nesting

MAX_PROMO_RATE = 5

def send_promo_email(user)
  if user.email.present?
    if user.promos_sent < MAX_PROMO_RATE
      UserMailer.promo_email(user).deliver
    end
  end
end



MAX_PROMO_RATE = 5

def send_promo_email(user)
  if can_send?(user)
    UserMailer.promo_email(user).deliver
  end
end

def can_send?(user)
  user.email.present? && user.promos_sent < MAX_PROMO_RATE
end

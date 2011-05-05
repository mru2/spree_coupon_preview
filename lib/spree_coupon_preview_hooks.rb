class SpreeCouponPreviewHooks < Spree::ThemeSupport::HookListener
  insert_after :coupon_code_field, 'checkout/spree_coupon_preview_code_field'
  insert_after :inside_head, 'shared/spree_coupon_preview_head'
end
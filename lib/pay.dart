import 'package:pay/pay.dart';

const _paymentItems = [
  PaymentItem(
    label: 'Total',
    amount: '99.99',
    status: PaymentItemStatus.final_price,
  )
];

ApplePayButton(
paymentConfiguration: PaymentConfiguration.fromJsonString(
defaultApplePayConfigString),
paymentItems: _paymentItems,
style: ApplePayButtonStyle.black,
type: ApplePayButtonType.buy,
margin: const EdgeInsets.only(top: 15.0),
onPaymentResult: onApplePayResult,
loadingIndicator: const Center(
child: CircularProgressIndicator(),
),
),

GooglePayButton(
paymentConfiguration: PaymentConfiguration.fromJsonString(
defaultGooglePayConfigString),
paymentItems: _paymentItems,
type: GooglePayButtonType.pay,
margin: const EdgeInsets.only(top: 15.0),
onPaymentResult: onGooglePayResult,
loadingIndicator: const Center(
child: CircularProgressIndicator(),
),
),

void onApplePayResult(paymentResult) {
// Send the resulting Apple Pay token to your server / PSP
}

void onGooglePayResult(paymentResult) {
// Send the resulting Google Pay token to your server / PSP
}
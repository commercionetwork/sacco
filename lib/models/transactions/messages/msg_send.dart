import 'package:sacco/models/transactions/export.dart';

/// [MsgSend] extends [StdMsg] and represents the message that should be
/// used when sending tokens from one user to another one.
/// It requires to specify the address from which to send the tokens,
/// the one that should receive the tokens and the amount of tokens
/// to send.
class MsgSend extends StdMsg {
  /// Bech32 address of the sender.
  final String fromAddress;

  /// Bech32 address of the recipient.
  final String toAddress;

  /// Coins that will be sent.
  final List<StdCoin> amount;

  /// Public constructor.
  MsgSend({
    required this.fromAddress,
    required this.toAddress,
    required this.amount,
  }) : super(type: 'cosmos-sdk/MsgSend', value: {});

  @override
  Map<String, dynamic> get value => {
        'from_address': fromAddress,
        'to_address': toAddress,
        'amount': amount.map((coin) => coin.toJson()).toList(),
      };

  @override
  List<Object?> get props => [type, value, fromAddress, toAddress, amount];
}

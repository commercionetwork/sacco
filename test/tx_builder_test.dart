import 'dart:io';

import 'package:test/test.dart';

import 'package:sacco/models/export.dart';
import 'package:sacco/tx_builder.dart';

void main() {
  test('StdTx is built correctly', () {
    final message = StdMsg(
      type: "cosmos-sdk/MsgSend",
      value: {
        "from_address": "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
        "to_address": "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
        "amount": [
          {"denom": "uatom", "amount": "100"}
        ]
      },
    );

    final file = File('test_resources/SendStdTx.json');

    const defaultGas = "200000";
    const defaultDenom = "ucommercio";
    const defaultAmount = "10000";
    const fee = StdFee(
        gas: defaultGas,
        amount: [const StdCoin(denom: defaultDenom, amount: defaultAmount)]);

    final stdTx = TxBuilder.buildStdTx(stdMsgs: [message], fee: fee);
    expect(stdTx.toString(), file.readAsStringSync());
  });
}

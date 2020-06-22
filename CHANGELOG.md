## Version 0.1.5 - 2020-06-22
* Add Delegate, Redelegate, unbond and withdraw.

## Version 0.1.4 - 2020-05-15
* Updated dependencies  

## Version 0.1.3 - 2020-05-08
* Fixed signature generation
* Updated signature representation
* Added bech32 pub key getter

## Version 0.1.2 - 2020-04-02
* Added derivation path index check.

## Version 0.1.1 - 2020-03-27
* Change `TransactionResult` to adapt to cosmos sdk 0.38 responses
* Added derivation path index 

## Version 0.1.0 - 2019-12-06
* Change a default var in order to maintain backwards compatibility;
* Added json serialization/deserialization to transaction_result class.

## Version 0.0.15 - 2019-12-04
* Fixed errors founded by pub.dev

## Version 0.0.14 - 2019-12-04
* Added the possibility to chose the `mode` (`sync`, `block`, `async`) 
  when you are broadcasting a transaction.

## Version 0.0.13 - 2019-11-28
* Fixed the wrong implementation of `TxSigner` which led to an 
  error in the chain when multiple messages were sent into a single transaction.

## Version 0.0.12 - 2019-11-11
* Renamed `signData` to `sign` 
* Changed how the signatures are created inside `sign`, now they are non-deterministic 

## Version 0.0.11 - 2019-11-11
* Renamed `signData` to `signTxData` 
* Added `signData` that signs the data and returns the ASN.1 DER encoded signature

## Version 0.0.10 - 2019-10-23
* Added missing `const` constructors

## Version 0.0.9 - 2019-10-23
* Renamed `Wallet.signTxData` to `Wallet.sign`
* Changed `Wallet.sign` to accept any `Map<String, dynamic>` and not just a `String`
* Added the `MapSorter` to the exported types

## Version 0.0.8 - 2019-09-25
* Removed the `id` field from the `NetworkInfo` object
* Removed the `derivationPath` field from the `Wallet.derive` method
* Changed the return type of the `TxSender.broadcastTx` method.  
   Now it returns a `TransactionResponse` that include a `success` field and any error 
   that might have occurred during the broadcast.
* Fixed some typos inside the exceptions messages

## Version 0.0.7 - 2019-08-30
* Added the `defaultTokenDenom` field inside `NetworkInfo`

## Version 0.0.6 - 2019-08-30
* Added the serialization of the Bech32 address inside `Wallet` 

## Version 0.0.5 - 2019-08-30
* Renamed `HexWallet` to `Wallet` 
* Added the `Wallet.convert` factory method
* Added the optional `name` and `iconUrl` fields to `NetworkInfo`
* Added the `toJson` and `fromJson` methods to both `Wallet` and `NetworkInfo`
* Added the `Equatable` implementation to both `Wallet` and `NetworkInfo` 

## Version 0.0.4 - 2019-08-29
* Changed the example 
* Fixed some CHANGELOG typos

## Version 0.0.3 - 2019-08-29
* Improved the example by adding how to send a transaction

## Version 0.0.2 - 2019-08-29
* Improved the package.yaml description
* Added some examples inside the `example/` folder
* Removed some unused dependencies
* Improved the README

## Version 0.0.1 - 2019-08-29
* Initial release

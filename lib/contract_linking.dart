import 'package:web3dart/web3dart.dart';

class ContractLinking {
  final String _rpcUrl = "http://127.0.0.1:7545";
  final String _wsUrl = "ws://127.0.0.1:7545";
  final String _privateKey = "YOUR_KEY_HERE";

  Web3Client? _client;
  bool _isLoading = false;
  EthereumAddress? _contractAddress;
  DeployedContract? _contract;
  ContractFunction? _message;
  ContractFunction? _setMessage;

  String? _deployedName;
}

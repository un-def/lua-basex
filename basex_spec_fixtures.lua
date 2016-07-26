return {

  alphabets = {
    base2 = '01',
    base16lower = '0123456789abcdef',
    base58bitcoin = '123456789ABCDEFGHJKLMNPQRSTUVWXYZ' ..
                    'abcdefghijkmnopqrstuvwxyz',
    base58flickr = '123456789abcdefghijkmnopqrstuvwxyz' ..
                   'ABCDEFGHJKLMNPQRSTUVWXYZ',
    base58ripple = 'rpshnaf39wBUDNEGHJKLM4PQRST7VWXYZ' ..
                   '2bcdeCg65jkm8oFqi1tuvAxyz'
  },

  valid = {
    {
      alphabet = 'base2',
      hex = '000f',
      string = '01111'
    },
    {
      alphabet = 'base2',
      hex = '00ff',
      string = '011111111'
    },
    {
      alphabet = 'base2',
      hex = '0fff',
      string = '111111111111'
    },
    {
      alphabet = 'base2',
      hex = 'ff00ff00',
      string = '11111111000000001111111100000000'
    },
    {
      alphabet = 'base16lower',
      hex = '0000000f',
      string = '000f'
    },
    {
      alphabet = 'base16lower',
      hex = '000fff',
      string = '0fff'
    },
    {
      alphabet = 'base16lower',
      hex = 'ffff',
      string = 'ffff'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '',
      string = ''
    },
    {
      alphabet = 'base58bitcoin',
      hex = '61',
      string = '2g'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '626262',
      string = 'a3gV'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '636363',
      string = 'aPEr'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '73696d706c792061206c6f6e6720737472696e67',
      string = '2cFupjhnEsSn59qHXstmK2ffpLv2'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '00eb15231dfceb60925886b67d065299925915aeb172c06647',
      string = '1NS17iag9jJgTHD1VXjvLCEnZuQ3rJDE9L'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '516b6fcd0f',
      string = 'ABnLTmg'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'bf4f89001e670274dd',
      string = '3SEo3LWLoPntC'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '572e4794',
      string = '3EFU7m'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'ecac89cad93923c02321',
      string = 'EJDM8drfXA6uyA'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '10c8511e',
      string = 'Rt5zm'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '00000000000000000000',
      string = '1111111111'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '801184cd2cdd640ca42cfc3a091c51d549b2f016d454b2774019c2b2d2e08529fd206ec97e',
      string = '5Hx15HFGyep2CfPxsJKe2fXJsCVn5DEiyoeGGF6JZjGbTRnqfiD'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '003c176e659bea0f29a3e9bf7880c112b1b31b4dc826268187',
      string = '16UjcYNBG9GTK4uq2f7yYEbuifqCzoLMGS'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'ffffffffffffffffffff',
      string = 'FPBt6CHo3fovdL'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'ffffffffffffffffffffffffff',
      string = 'NKioeUVktgzXLJ1B3t'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'ffffffffffffffffffffffffffffffff',
      string = 'YcVfxkQb6JRzqk5kF2tNLv'
    },
    {
      alphabet = 'base2',
      hex = 'fb6f9ac3',
      string = '11111011011011111001101011000011'
    },
    {
      alphabet = 'base2',
      hex = '179eea7a',
      string = '10111100111101110101001111010'
    },
    {
      alphabet = 'base2',
      hex = '6db825db',
      string = '1101101101110000010010111011011'
    },
    {
      alphabet = 'base2',
      hex = '93976aa7',
      string = '10010011100101110110101010100111'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'ef41b9ce7e830af7',
      string = 'h26E62FyLQN'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '606cbc791036d2e9',
      string = 'H8Sa62HVULG'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'bdcb0ea69c2c8ec8',
      string = 'YkESUPpnfoD'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '1a2358ba67fb71d5',
      string = '5NaBN89ajtQ'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'e6173f0f4d5fb5d7',
      string = 'fVAoezT1ZkS'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '91c81cbfdd58bbd2',
      string = 'RPGNSU3bqTX'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '329e0bf0e388dbfe',
      string = '9U41ZkwwysT'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '30b10393210fa65b',
      string = '99NMW3WHjjY'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'ab3bdd18e3623654',
      string = 'VeBbqBb4rCT'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'fe29d1751ec4af8a',
      string = 'jWhmYLN9dUm'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'c1273ab5488769807d',
      string = '3Tbh4kL3WKW6g'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '6c7907904de934f852',
      string = '2P5jNYhfpTJxy'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '05f0be055db47a0dc9',
      string = '5PN768Kr5oEp'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '3511e6206829b35b12',
      string = 'gBREojGaJ6DF'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'd1c7c2ddc4a459d503',
      string = '3fsekq5Esq2KC'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '1f88efd17ab073e9a1',
      string = 'QHJbmW9ZY7jn'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '0f45dadf4e64c5d5c2',
      string = 'CGyVUMmCKLRf'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'de1e5c5f718bb7fafa',
      string = '3pyy8U7w3KUa5'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '123190b93e9a49a46c',
      string = 'ES3DeFrG1zbd'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '8bee94a543e7242e5a',
      string = '2nJnuWyLpGf6y'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '9fd5f2285362f5cfd834',
      string = '9yqFhqeewcW3pF'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '6987bac63ad23828bb31',
      string = '6vskE5Y1LhS3U4'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '19d4a0f9d459cc2a08b0',
      string = '2TAsHPuaLhh5Aw'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'a1e47ffdbea5a807ab26',
      string = 'A6XzPgSUJDf1W5'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '35c231e5b3a86a9b83db',
      string = '42B8reRwPAAoAa'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'b2351012a48b8347c351',
      string = 'B1hPyomGx4Vhqa'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '71d402694dd9517ea653',
      string = '7Pv2SyAQx2Upu8'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '55227c0ec7955c2bd6e8',
      string = '5nR64BkskyjHMq'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '17b3d8ee7907c1be34df',
      string = '2LEg7TxosoxTGS'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '7e7bba7b68bb8e95827f',
      string = '879o2ATGnmYyAW'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'db9c13f5ba7654b01407fb',
      string = 'wTYfxjDVbiks874'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '6186449d20f5fd1e6c4393',
      string = 'RBeiWhzZNL6VtMG'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '5248751cebf4ad1c1a83c3',
      string = 'MQSVNnc8ehFCqtW'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '32090ef18cd479fc376a74',
      string = 'DQdu351ExDaeYeX'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '7cfa5d6ed1e467d986c426',
      string = 'XzW67T5qfEnFcaZ'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '9d8707723c7ede51103b6d',
      string = 'g4eTCg6QJnB1UU4'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '6f4d1e392d6a9b4ed8b223',
      string = 'Ubo7kZY5aDpAJp2'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '38057d98797cd39f80a0c9',
      string = 'EtjQ2feamJvuqse'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'de7e59903177e20880e915',
      string = 'xB2N7yRBnDYEoT2'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'b2ea24a28bc4a60b5c4b8d',
      string = 'mNFMpJ2P3TGYqhv'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'cf84938958589b6ffba6114d',
      string = '4v8ZbsGh2ePz5sipt'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'dee13be7b8d8a08c94a3c02a',
      string = '5CwmE9jQqwtHkTF45'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '14cb9c6b3f8cd2e02710f569',
      string = 'Pm85JHVAAdeUdxtp'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'ca3f2d558266bdcc44c79cb5',
      string = '4pMwomBAQHuUnoLUC'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'c031215be44cbad745f38982',
      string = '4dMeTrcxiVw9RWvj3'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '1435ab1dbc403111946270a5',
      string = 'P7wX3sCWNrbqhBEC'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'd8c6e4d775e7a66a0d0f9f41',
      string = '56GLoRDGWGuGJJwPN'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'dcee35e74f0fd74176fce2f4',
      string = '5Ap1zyuYiJJFwWcMR'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'bfcc0ca4b4855d1cf8993fc0',
      string = '4cvafQW4PEhARKv9D'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'e02a3ac25ece7b54584b670a',
      string = '5EMM28xkpxZ1kkVUM'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'fe4d938fc3719f064cabb4bfff',
      string = 'NBXKkbHwrAsiWTLAk6'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '9289cb4f6b15c57e6086b87ea5',
      string = 'DCvDpjEXEbHjZqskKv'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'fc266f35626b3612bfe978537b',
      string = 'N186PVoBWrNre35BGE'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '33ff08c06d92502bf258c07166',
      string = '5LC4SoW6jmTtbkbePw'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '6a81cac1f3666bc59dc67b1c3c',
      string = '9sXgUySUzwiqDU5WHy'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '9dfb8e7e744c544c0f323ea729',
      string = 'EACsmGmkgcwsrPFzLg'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '1e7a1e284f70838b38442b682b',
      string = '3YEVk9bE7rw5qExMkv'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '2a862ad57901a8235f5dc74eaf',
      string = '4YS259nuTLfeXa5Wuc'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '74c82096baef21f9d3089e5462',
      string = 'AjAcKEhUfrqm8smvM7'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '7a3edbc23d7b600263920261cc',
      string = 'BBZXyRgey5S5DDZkcK'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '20435664c357d25a9c8df751cf4f',
      string = 'CrwNL6Fbv4pbRx1zd9g'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '51a7aa87cf5cb1c12d045ec3422d',
      string = 'X27NHGgKXmGzzQvDtpC'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '344d2e116aa26f1062a2cb6ebbef',
      string = 'LEDLDvL1Hg4qt1efVXt'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '6941add7be4c0b5c7163e4928f8e',
      string = 'fhMyN6gwoxE3uYraVzV'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '10938fcbb7c4ab991649734a14bf',
      string = '76TPrSDxzGQfSzMu974'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'eafe04d944ba504e9af9117b07de',
      string = '2VPgov563ryfe4L2Bj6M'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '58d0aeed4d35da20b6f052127edf',
      string = 'ZenZhXF9YwP8nQvNtNz'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'd734984e2f5aecf25f7a3e353f8a',
      string = '2N7n3jFsTdyN49Faoq6h'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '57d873fdb405b7daf4bafa62068a',
      string = 'ZJ7NwoP4wHvwyZg3Wjs'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'bda4ec7b40d0d65ca95dec4c4d3b',
      string = '2CijxjsNyvqTwPCfDcpA'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '826c4abdceb1b91f0d4ad665f86d2e',
      string = '4edfvuDQu9KzVxLuXHfMo'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'e7ecb35d07e65b960cb10574a4f51a',
      string = '7VLRYdB4cToipp2J2p3v9'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '4f2d72ead87b31d6869fba39eac6dc',
      string = '3DUjqJRcfdWhpsrLrGcQs'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '8b4f5788d60030950d5dfbf94c585d',
      string = '4u44JSRH5jP5X39YhPsmE'
    },
    {
      alphabet = 'base58bitcoin',
      hex = 'ee4c0a0025d1a74ace9fe349355cc5',
      string = '7fgACjABRQUGUEpN6VBBA'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '58ac05b9a0b4b66083ff1d489b8d84',
      string = '3UtJPyTwGXapcxHx8Rom5'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '1aa35c05e1132e8e049aafaef035d8',
      string = 'kE2eSU7gM2619pT82iGP'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '771b0c28608484562a292e5d5d2b30',
      string = '4LGYeWhyfrjUByibUqdVR'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '78ff9a0e56f9e88dc1cd654b40d019',
      string = '4PLggs66qAdbmZgkaPihe'
    },
    {
      alphabet = 'base58bitcoin',
      hex = '6d691bdd736346aa5a0a95b373b2ab',
      string = '44Y6qTgSvRMkdqpQ5ufkN'
    },
    {
      alphabet = 'base58flickr',
      hex = 'ffff',
      string = 'ktV'
    },
    {
      alphabet = 'base58flickr',
      hex = '989680',
      string = 'TfDN'
    },
    {
      alphabet = 'base58flickr',
      hex = '499602d2',
      string = '2T6u2h'
    },
    {
      alphabet = 'base58flickr',
      hex = '27797f26d671c7',
      string = '2uLf3LFepD'
    },
    {
      alphabet = 'base58ripple',
      hex = '7fff00',
      string = 'jzZm'
    },
    {
      alphabet = 'base58ripple',
      hex = 'ffffffffff',
      string = 'VtBnVXc'
    },
    {
      alphabet = 'base58ripple',
      hex = '000000000f',
      string = 'rrrrG'
    },
    {
      alphabet = 'base58ripple',
      hex = 'aabbccddeeff00',
      string = 'f7GDhdPeDn'
    },
  },

  invalid = {
    {
      alphabet = 'base58bitcoin',
      description = 'non-base58 string',
      string = 'invalid'
    },
    {
      alphabet = 'base58bitcoin',
      description = 'non-base58 alphabet',
      string = 'c2F0b3NoaQo='
    },
    {
      alphabet = 'base58bitcoin',
      description = 'leading whitespace',
      string = ' 1111111111'
    },
    {
      alphabet = 'base58bitcoin',
      description = 'trailing whitespace',
      string = '1111111111 '
    },
    {
      alphabet = 'base58bitcoin',
      description = 'unexpected character after whitespace',
      string = ' \t\n\f\r skip \r\f\n\t a'
    }
  },

  predefined = {'base16lower', 'base16upper',
                'base58bitcoin', 'base58flickr', 'base58ripple'},

}

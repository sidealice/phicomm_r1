.class public Lcom/phicomm/speaker/player/util/RSAUtils;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field private static final PRIVATE_KEY:Ljava/lang/String; = "RSAPrivateKey"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "RSAPublicKey"

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "MD5withRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptByPrivateKey([BLjava/lang/String;)[B
    .locals 14
    .param p0, "encryptedData"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0x80

    .line 137
    const-string v11, "RSAPrivateKey"

    invoke-static {v11}, Lcom/phicomm/speaker/player/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 138
    .local v5, "keyBytes":[B
    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v9, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 139
    .local v9, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v11, "RSA"

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 140
    .local v6, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v6, v9}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v10

    .line 141
    .local v10, "privateK":Ljava/security/Key;
    invoke-virtual {v6}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 142
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x2

    invoke-virtual {v1, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 143
    array-length v4, p0

    .line 144
    .local v4, "inputLen":I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 147
    .local v7, "offSet":I
    const/4 v3, 0x0

    .line 149
    .local v3, "i":I
    :goto_0
    sub-int v11, v4, v7

    if-lez v11, :cond_1

    .line 150
    sub-int v11, v4, v7

    if-le v11, v13, :cond_0

    .line 151
    invoke-virtual {v1, p0, v7, v13}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 155
    .local v0, "cache":[B
    :goto_1
    const/4 v11, 0x0

    array-length v12, v0

    invoke-virtual {v8, v0, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    mul-int/lit16 v7, v3, 0x80

    goto :goto_0

    .line 153
    .end local v0    # "cache":[B
    :cond_0
    sub-int v11, v4, v7

    invoke-virtual {v1, p0, v7, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .restart local v0    # "cache":[B
    goto :goto_1

    .line 159
    .end local v0    # "cache":[B
    :cond_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 160
    .local v2, "decryptedData":[B
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 161
    return-object v2
.end method

.method public static decryptByPublicKey([BLjava/lang/String;)[B
    .locals 14
    .param p0, "encryptedData"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0x80

    .line 178
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 179
    .local v5, "keyBytes":[B
    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v10, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 180
    .local v10, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v11, "RSA"

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 181
    .local v6, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v6, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    .line 182
    .local v9, "publicK":Ljava/security/Key;
    invoke-virtual {v6}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 183
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x2

    invoke-virtual {v1, v11, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 184
    array-length v4, p0

    .line 185
    .local v4, "inputLen":I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 188
    .local v7, "offSet":I
    const/4 v3, 0x0

    .line 190
    .local v3, "i":I
    :goto_0
    sub-int v11, v4, v7

    if-lez v11, :cond_1

    .line 191
    sub-int v11, v4, v7

    if-le v11, v13, :cond_0

    .line 192
    invoke-virtual {v1, p0, v7, v13}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 196
    .local v0, "cache":[B
    :goto_1
    const/4 v11, 0x0

    array-length v12, v0

    invoke-virtual {v8, v0, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 197
    add-int/lit8 v3, v3, 0x1

    .line 198
    mul-int/lit16 v7, v3, 0x80

    goto :goto_0

    .line 194
    .end local v0    # "cache":[B
    :cond_0
    sub-int v11, v4, v7

    invoke-virtual {v1, p0, v7, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .restart local v0    # "cache":[B
    goto :goto_1

    .line 200
    .end local v0    # "cache":[B
    :cond_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 201
    .local v2, "decryptedData":[B
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 202
    return-object v2
.end method

.method public static encryptByPrivateKey([BLjava/lang/String;)[B
    .locals 14
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0x75

    .line 277
    const-string v11, "RSAPrivateKey"

    invoke-static {v11}, Lcom/phicomm/speaker/player/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 278
    .local v5, "keyBytes":[B
    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v9, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 279
    .local v9, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v11, "RSA"

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 280
    .local v6, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v6, v9}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v10

    .line 281
    .local v10, "privateK":Ljava/security/Key;
    invoke-virtual {v6}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 282
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x1

    invoke-virtual {v1, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 283
    array-length v4, p0

    .line 284
    .local v4, "inputLen":I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 285
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 287
    .local v7, "offSet":I
    const/4 v3, 0x0

    .line 289
    .local v3, "i":I
    :goto_0
    sub-int v11, v4, v7

    if-lez v11, :cond_1

    .line 290
    sub-int v11, v4, v7

    if-le v11, v13, :cond_0

    .line 291
    invoke-virtual {v1, p0, v7, v13}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 295
    .local v0, "cache":[B
    :goto_1
    const/4 v11, 0x0

    array-length v12, v0

    invoke-virtual {v8, v0, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 296
    add-int/lit8 v3, v3, 0x1

    .line 297
    mul-int/lit8 v7, v3, 0x75

    goto :goto_0

    .line 293
    .end local v0    # "cache":[B
    :cond_0
    sub-int v11, v4, v7

    invoke-virtual {v1, p0, v7, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .restart local v0    # "cache":[B
    goto :goto_1

    .line 299
    .end local v0    # "cache":[B
    :cond_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 300
    .local v2, "encryptedData":[B
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 301
    return-object v2
.end method

.method public static encryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    :cond_0
    const-string v1, ""

    .line 218
    :goto_0
    return-object v1

    .line 217
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/phicomm/speaker/player/util/RSAUtils;->encryptByPublicKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 218
    .local v0, "result":[B
    invoke-static {v0}, Lcom/phicomm/speaker/player/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static encryptByPublicKey([BLjava/lang/String;)[B
    .locals 14
    .param p0, "data"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, 0x75

    .line 235
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 236
    .local v5, "keyBytes":[B
    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v10, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 237
    .local v10, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v11, "RSA"

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 238
    .local v6, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v6, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9

    .line 240
    .local v9, "publicK":Ljava/security/Key;
    invoke-virtual {v6}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 241
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x1

    invoke-virtual {v1, v11, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 242
    array-length v4, p0

    .line 243
    .local v4, "inputLen":I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 244
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 246
    .local v7, "offSet":I
    const/4 v3, 0x0

    .line 248
    .local v3, "i":I
    :goto_0
    sub-int v11, v4, v7

    if-lez v11, :cond_1

    .line 249
    sub-int v11, v4, v7

    if-le v11, v13, :cond_0

    .line 250
    invoke-virtual {v1, p0, v7, v13}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 254
    .local v0, "cache":[B
    :goto_1
    const/4 v11, 0x0

    array-length v12, v0

    invoke-virtual {v8, v0, v11, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 256
    mul-int/lit8 v7, v3, 0x75

    goto :goto_0

    .line 252
    .end local v0    # "cache":[B
    :cond_0
    sub-int v11, v4, v7

    invoke-virtual {v1, p0, v7, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .restart local v0    # "cache":[B
    goto :goto_1

    .line 258
    .end local v0    # "cache":[B
    :cond_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 259
    .local v2, "encryptedData":[B
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 260
    return-object v2
.end method

.method public static genKeyPair()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 60
    .local v2, "keyPairGen":Ljava/security/KeyPairGenerator;
    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 61
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 62
    .local v1, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    .line 63
    .local v4, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    .line 64
    .local v3, "privateKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v0, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 65
    .local v0, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "RSAPublicKey"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v5, "RSAPrivateKey"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v0
.end method

.method public static getPrivateKey(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "RSAPrivateKey"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 317
    .local v0, "key":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKey(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "RSAPublicKey"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 333
    .local v0, "key":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 337
    return-void
.end method

.method public static sign([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 86
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 87
    .local v2, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 88
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 89
    .local v3, "privateK":Ljava/security/PrivateKey;
    const-string v5, "MD5withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 90
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 91
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 92
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    invoke-static {v5}, Lcom/phicomm/speaker/player/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static verify([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "data"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p1}, Lcom/phicomm/speaker/player/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 114
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 115
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 116
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 117
    .local v3, "publicK":Ljava/security/PublicKey;
    const-string v5, "MD5withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 118
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 119
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 120
    invoke-static {p2}, Lcom/phicomm/speaker/player/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    return v5
.end method

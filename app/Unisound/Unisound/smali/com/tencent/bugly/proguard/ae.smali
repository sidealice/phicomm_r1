.class public final Lcom/tencent/bugly/proguard/ae;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/ag;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ae;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 79
    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ae;->a:Ljava/lang/String;

    .line 87
    :cond_1
    return-void
.end method

.method public final a([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 17
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ae;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 39
    :cond_1
    return-object v0

    .line 22
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-byte v4, p1, v0

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ae;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 30
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ae;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 31
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 32
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 34
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-byte v4, v0, v1

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final b([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ae;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 67
    :cond_1
    return-object v0

    .line 50
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-byte v4, p1, v0

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ae;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 58
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ae;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 59
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 62
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-byte v4, v0, v1

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

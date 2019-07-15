.class public Lorg/eclipse/paho/client/mqttv3/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final B:[B

.field private static final C:Ljava/lang/String; = "{xor}"

.field public static final a:Ljava/lang/String; = "com.ibm.ssl.protocol"

.field public static final b:Ljava/lang/String; = "com.ibm.ssl.contextProvider"

.field public static final c:Ljava/lang/String; = "com.ibm.ssl.keyStore"

.field public static final d:Ljava/lang/String; = "com.ibm.ssl.keyStorePassword"

.field public static final e:Ljava/lang/String; = "com.ibm.ssl.keyStoreType"

.field public static final f:Ljava/lang/String; = "com.ibm.ssl.keyStoreProvider"

.field public static final g:Ljava/lang/String; = "com.ibm.ssl.keyManager"

.field public static final h:Ljava/lang/String; = "com.ibm.ssl.trustStore"

.field public static final i:Ljava/lang/String; = "com.ibm.ssl.trustStorePassword"

.field public static final j:Ljava/lang/String; = "com.ibm.ssl.trustStoreType"

.field public static final k:Ljava/lang/String; = "com.ibm.ssl.trustStoreProvider"

.field public static final l:Ljava/lang/String; = "com.ibm.ssl.trustManager"

.field public static final m:Ljava/lang/String; = "com.ibm.ssl.enabledCipherSuites"

.field public static final n:Ljava/lang/String; = "com.ibm.ssl.clientAuthentication"

.field public static final o:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field public static final p:Ljava/lang/String; = "javax.net.ssl.keyStoreType"

.field public static final q:Ljava/lang/String; = "javax.net.ssl.keyStorePassword"

.field public static final r:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field public static final s:Ljava/lang/String; = "javax.net.ssl.trustStoreType"

.field public static final t:Ljava/lang/String; = "javax.net.ssl.trustStorePassword"

.field public static final u:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field public static final v:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field public static final w:Ljava/lang/String; = "TLS"

.field private static final x:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

.field private static final y:[Ljava/lang/String;


# instance fields
.field private A:Ljava/util/Properties;

.field private D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private z:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x8

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ibm.ssl.protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ibm.ssl.contextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.ibm.ssl.keyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.ibm.ssl.keyStorePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ibm.ssl.keyStoreType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ibm.ssl.keyStoreProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ibm.ssl.keyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.ibm.ssl.trustStore"

    aput-object v2, v0, v1

    const-string v1, "com.ibm.ssl.trustStorePassword"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "com.ibm.ssl.trustStoreType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ibm.ssl.trustStoreProvider"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.ibm.ssl.trustManager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.ibm.ssl.clientAuthentication"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->y:[Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    return-void

    :array_0
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/logging/Logger;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/Properties;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " is not a valid IBM SSL property key."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a()Z
    .locals 1

    const-string v0, "javax.net.ssl.SSLServerSocketFactory"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([C)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    move v1, v0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x1

    aget-char v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)[C
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "{xor}"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/b;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a([B)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v2, v1, v0

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    array-length v4, v4

    rem-int v4, v0, v4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a([B)[C
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    new-array v3, v1, [C

    move v2, v0

    :goto_1
    array-length v1, p0

    if-lt v2, v1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v5, v2, 0xff

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v3, v0

    move v0, v1

    goto :goto_1
.end method

.method public static b([C)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a([C)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "{xor}"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v2, v1, v0

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    array-length v4, v4

    rem-int v4, v0, v4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "{xor}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "{xor}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2c

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    const/4 v3, -0x1

    if-gt v1, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1
.end method

.method private t(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a/a;->y:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :cond_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a/a;->y:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a/a;->y:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private u(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 13

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TLS"

    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "getSSLContext"

    const-string v6, "12000"

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz p1, :cond_e

    move-object v1, p1

    :goto_0
    aput-object v1, v7, v8

    aput-object v0, v7, v9

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    :try_start_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v6, v0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v4, "getSSLContext"

    const-string v5, "12001"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p1, :cond_10

    move-object v0, p1

    :goto_2
    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-interface {v1, v3, v4, v5, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v0, "com.ibm.ssl.keyStore"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_27

    if-nez v4, :cond_3

    const-string v0, "com.ibm.ssl.keyStore"

    const-string v1, "javax.net.ssl.keyStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "getSSLContext"

    const-string v7, "12004"

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-eqz p1, :cond_11

    move-object v0, p1

    :goto_3
    aput-object v0, v8, v9

    const/4 v9, 0x1

    if-eqz v4, :cond_12

    move-object v0, v4

    :goto_4
    aput-object v0, v8, v9

    invoke-interface {v1, v3, v5, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->h(Ljava/lang/String;)[C

    move-result-object v5

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v7, "getSSLContext"

    const-string v8, "12005"

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p1, :cond_13

    move-object v0, p1

    :goto_5
    aput-object v0, v9, v10

    const/4 v10, 0x1

    if-eqz v5, :cond_14

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b([C)Ljava/lang/String;

    move-result-object v0

    :goto_6
    aput-object v0, v9, v10

    invoke-interface {v1, v3, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    :cond_6
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v7, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v8, "getSSLContext"

    const-string v9, "12006"

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_15

    move-object v0, p1

    :goto_7
    aput-object v0, v10, v11

    const/4 v11, 0x1

    if-eqz v3, :cond_16

    move-object v0, v3

    :goto_8
    aput-object v0, v10, v11

    invoke-interface {v1, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->k(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    if-eqz v0, :cond_28

    :goto_9
    if-eqz v4, :cond_27

    if-eqz v3, :cond_27

    if-eqz v0, :cond_27

    :try_start_1
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v7, :cond_17

    invoke-static {v0, v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    move-object v3, v1

    :goto_a
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v1, :cond_8

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v7, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v9, "getSSLContext"

    const-string v10, "12010"

    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    if-eqz p1, :cond_18

    move-object v1, p1

    :goto_b
    aput-object v1, v11, v12

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    :goto_c
    aput-object v0, v11, v1

    invoke-interface {v4, v7, v9, v10, v11}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v7, "getSSLContext"

    const-string v9, "12009"

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_1a

    move-object v0, p1

    :goto_d
    aput-object v0, v10, v11

    const/4 v0, 0x1

    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-interface {v1, v4, v7, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v3, v8, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    move-object v5, v0

    :goto_e
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v7, "getSSLContext"

    const-string v8, "12011"

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p1, :cond_1b

    move-object v0, p1

    :goto_f
    aput-object v0, v9, v10

    const/4 v10, 0x1

    if-eqz v4, :cond_1c

    move-object v0, v4

    :goto_10
    aput-object v0, v9, v10

    invoke-interface {v1, v3, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->m(Ljava/lang/String;)[C

    move-result-object v7

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v8, "getSSLContext"

    const-string v9, "12012"

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_1d

    move-object v0, p1

    :goto_11
    aput-object v0, v10, v11

    const/4 v11, 0x1

    if-eqz v7, :cond_1e

    invoke-static {v7}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b([C)Ljava/lang/String;

    move-result-object v0

    :goto_12
    aput-object v0, v10, v11

    invoke-interface {v1, v3, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    :cond_b
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v8, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v9, "getSSLContext"

    const-string v10, "12013"

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    if-eqz p1, :cond_1f

    move-object v0, p1

    :goto_13
    aput-object v0, v11, v12

    const/4 v12, 0x1

    if-eqz v3, :cond_20

    move-object v0, v3

    :goto_14
    aput-object v0, v11, v12

    invoke-interface {v1, v8, v9, v10, v11}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->p(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    if-eqz v0, :cond_26

    :goto_15
    if-eqz v4, :cond_25

    if-eqz v3, :cond_25

    if-eqz v0, :cond_25

    :try_start_3
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v8, :cond_21

    invoke-static {v0, v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    move-object v2, v1

    :goto_16
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v1, :cond_d

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v7, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v8, "getSSLContext"

    const-string v9, "12017"

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_22

    move-object v1, p1

    :goto_17
    aput-object v1, v10, v11

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    :goto_18
    aput-object v0, v10, v1

    invoke-interface {v4, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v4, "getSSLContext"

    const-string v7, "12016"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-eqz p1, :cond_24

    :goto_19
    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v0, v1, v4, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_1a
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v6, v5, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_5

    return-object v6

    :cond_e
    const-string v1, "null (broker defaults)"

    goto/16 :goto_0

    :cond_f
    :try_start_5
    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_1

    :cond_10
    const-string v0, "null (broker defaults)"

    goto/16 :goto_2

    :cond_11
    const-string v0, "null (broker defaults)"

    goto/16 :goto_3

    :cond_12
    const-string v0, "null"

    goto/16 :goto_4

    :cond_13
    const-string v0, "null (broker defaults)"

    goto/16 :goto_5

    :cond_14
    const-string v0, "null"

    goto/16 :goto_6

    :cond_15
    const-string v0, "null (broker defaults)"

    goto/16 :goto_7

    :cond_16
    const-string v0, "null"
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_8

    :cond_17
    :try_start_6
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_a

    :cond_18
    const-string v1, "null (broker defaults)"

    goto/16 :goto_b

    :cond_19
    const-string v0, "null"

    goto/16 :goto_c

    :cond_1a
    const-string v0, "null (broker defaults)"
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_d

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_1
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_3
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    :try_start_9
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    :try_start_a
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1b
    const-string v0, "null (broker defaults)"

    goto/16 :goto_f

    :cond_1c
    const-string v0, "null"

    goto/16 :goto_10

    :cond_1d
    const-string v0, "null (broker defaults)"

    goto/16 :goto_11

    :cond_1e
    const-string v0, "null"

    goto/16 :goto_12

    :cond_1f
    const-string v0, "null (broker defaults)"

    goto/16 :goto_13

    :cond_20
    const-string v0, "null"
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_14

    :cond_21
    :try_start_b
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_16

    :cond_22
    const-string v1, "null (broker defaults)"

    goto/16 :goto_17

    :cond_23
    const-string v0, "null"

    goto/16 :goto_18

    :cond_24
    const-string p1, "null (broker defaults)"
    :try_end_b
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_19

    :catch_8
    move-exception v0

    :try_start_c
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_b
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_c} :catch_5

    :cond_25
    move-object v0, v2

    goto/16 :goto_1a

    :cond_26
    move-object v0, v1

    goto/16 :goto_15

    :cond_27
    move-object v5, v2

    goto/16 :goto_e

    :cond_28
    move-object v0, v1

    goto/16 :goto_9
.end method


# virtual methods
.method public a(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/util/Properties;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b(Ljava/util/Properties;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    goto :goto_0
.end method

.method public b(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/util/Properties;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b(Ljava/util/Properties;)V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    :goto_0
    check-cast v0, Ljava/util/Properties;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyStore"

    const-string v1, "javax.net.ssl.keyStore"

    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)[C
    .locals 2

    const-string v0, "com.ibm.ssl.keyStorePassword"

    const-string v1, "javax.net.ssl.keyStorePassword"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v0, "{xor}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;)[C

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyManager"

    const-string v1, "ssl.KeyManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)[C
    .locals 2

    const-string v0, "com.ibm.ssl.trustStorePassword"

    const-string v1, "javax.net.ssl.trustStorePassword"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v0, "{xor}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;)[C

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustManager"

    const-string v1, "ssl.TrustManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.enabledCipherSuites"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "com.ibm.ssl.clientAuthentication"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public s(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 9

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->u(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v4, "createSocketFactory"

    const-string v5, "12020"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->q(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "com.ibm.ssl.enabledCipherSuites"

    const/4 v8, 0x0

    invoke-direct {p0, p1, v0, v8}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "null (broker defaults)"

    goto :goto_0

    :cond_2
    const-string v0, "null (using platform-enabled cipher suites)"

    goto :goto_1
.end method

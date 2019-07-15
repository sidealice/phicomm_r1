.class public Lcom/ta/utdid2/device/c;
.super Ljava/lang/Object;
.source "UTUtdid.java"


# static fields
.field private static a:Lcom/ta/utdid2/device/c;

.field private static final f:Ljava/lang/Object;

.field private static final o:Ljava/lang/String;


# instance fields
.field private a:Lcom/ta/utdid2/c/a/c;

.field private a:Lcom/ta/utdid2/device/d;

.field private a:Ljava/util/regex/Pattern;

.field private b:Lcom/ta/utdid2/c/a/c;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/c;->f:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/c;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    const-string v1, "xx_utdid_key"

    .line 32
    iput-object v1, p0, Lcom/ta/utdid2/device/c;->m:Ljava/lang/String;

    const-string v1, "xx_utdid_domain"

    .line 33
    iput-object v1, p0, Lcom/ta/utdid2/device/c;->n:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/c/a/c;

    .line 39
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v0, "[^0-9a-zA-Z=/+]+"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Ljava/util/regex/Pattern;

    .line 46
    iput-object p1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/ta/utdid2/c/a/c;

    .line 48
    sget-object v3, Lcom/ta/utdid2/device/c;->o:Ljava/lang/String;

    const-string v4, "Alvin2"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/ta/utdid2/c/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    .line 50
    new-instance v0, Lcom/ta/utdid2/c/a/c;

    const-string v9, ".DataStorage"

    const-string v10, "ContextData"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p1

    .line 51
    invoke-direct/range {v7 .. v12}, Lcom/ta/utdid2/c/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 50
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/c/a/c;

    .line 52
    new-instance p1, Lcom/ta/utdid2/device/d;

    invoke-direct {p1}, Lcom/ta/utdid2/device/d;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    const-string p1, "K_%d"

    const/4 v0, 0x1

    .line 53
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/c;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/device/c;->m:Ljava/lang/String;

    const-string p1, "D_%d"

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/device/c;->n:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;
    .locals 2

    if-eqz p0, :cond_1

    .line 97
    sget-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    if-nez v0, :cond_1

    .line 98
    sget-object v0, Lcom/ta/utdid2/device/c;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/ta/utdid2/device/c;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    .line 101
    sget-object p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->d()V

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 106
    :cond_1
    :goto_0
    sget-object p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    return-object p0
.end method

.method private final a()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 437
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 440
    invoke-static {v1}, Lcom/ta/utdid2/b/a/e;->getBytes(I)[B

    move-result-object v1

    .line 441
    invoke-static {v2}, Lcom/ta/utdid2/b/a/e;->getBytes(I)[B

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 442
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 443
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v1, 0x3

    .line 444
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/b/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)I

    move-result v1

    .line 453
    invoke-static {v1}, Lcom/ta/utdid2/b/a/e;->getBytes(I)[B

    move-result-object v1

    .line 454
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 456
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/device/c;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/ta/utdid2/b/a/e;->getBytes(I)[B

    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 459
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    const-string v1, "HmacSHA1"

    .line 471
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 472
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 473
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 474
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 475
    invoke-static {p0, v0}, Lcom/ta/utdid2/b/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "\n"

    .line 255
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x18

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 259
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method private d()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v1, "UTDID"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v2, "DID"

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/c/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v1, "DID"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/c;->remove(Ljava/lang/String;)V

    move v0, v2

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v3, "EI"

    invoke-virtual {v1, v3}, Lcom/ta/utdid2/c/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v1, "EI"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/c;->remove(Ljava/lang/String;)V

    move v0, v2

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v3, "SI"

    invoke-virtual {v1, v3}, Lcom/ta/utdid2/c/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v1, "SI"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/c;->remove(Ljava/lang/String;)V

    move v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/c/a/c;->commit()Z

    :cond_4
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .line 117
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\n"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/c/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    invoke-virtual {p1}, Lcom/ta/utdid2/c/a/c;->commit()Z

    :cond_1
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/c/a/c;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/c/a/c;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/c/a/c;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/c/a/c;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/c/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/c/a/c;

    invoke-virtual {p1}, Lcom/ta/utdid2/c/a/c;->commit()Z

    :cond_0
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\n"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x18

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mqBRboGZkQPcAkyk"

    .line 166
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 173
    :catch_0
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    .line 175
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 279
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ta/utdid2/device/c;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 275
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mqBRboGZkQPcAkyk"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 304
    :catch_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 306
    monitor-exit p0

    return-object v0

    .line 309
    :cond_0
    :try_start_3
    new-instance v0, Lcom/ta/utdid2/device/e;

    invoke-direct {v0}, Lcom/ta/utdid2/device/e;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 317
    :try_start_4
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dxCRMxhQkdGePGnp"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-object v3, v2

    .line 322
    :goto_0
    :try_start_5
    invoke-static {v3}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 324
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 327
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    monitor-exit p0

    return-object v4

    .line 331
    :cond_1
    :try_start_6
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    iget-object v5, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v5, v4}, Lcom/ta/utdid2/device/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-static {v4}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 336
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 340
    :try_start_7
    iget-object v4, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dxCRMxhQkdGePGnp"

    .line 339
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v4

    .line 347
    :catch_2
    :cond_2
    :try_start_8
    iget-object v4, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    iput-object v4, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;

    .line 351
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    const/4 v1, 0x1

    .line 365
    :cond_4
    :try_start_9
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->g()Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 367
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5

    .line 370
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    .line 373
    :cond_5
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    .line 376
    iput-object v3, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 377
    monitor-exit p0

    return-object v3

    .line 381
    :cond_6
    :try_start_a
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/c/a/c;

    iget-object v4, p0, Lcom/ta/utdid2/device/c;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ta/utdid2/c/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-static {v3}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 383
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 385
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_7
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 388
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-static {v0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 390
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 393
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    .line 396
    :cond_8
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    .line 405
    :cond_9
    :try_start_b
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->a()[B

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v3, 0x2

    .line 408
    invoke-static {v0, v3}, Lcom/ta/utdid2/b/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;

    .line 409
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->c([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_a

    .line 415
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    .line 418
    :cond_a
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    .line 420
    :cond_b
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->l:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_3
    move-exception v0

    .line 423
    :try_start_c
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 425
    :cond_c
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    .line 294
    monitor-exit p0

    throw v0
.end method

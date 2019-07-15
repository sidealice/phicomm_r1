.class public Lcom/phicomm/speaker/device/ui/service/YzsKeyThread;
.super Ljava/lang/Thread;
.source "YzsKeyThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YzsKeyThread"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/device/ui/service/YzsKeyThread;->handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method public static byte2int([B)I
    .locals 4
    .param p0, "res"    # [B

    .prologue
    .line 63
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 65
    .local v0, "targets":I
    return v0
.end method

.method private getChars([B)[C
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 69
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 70
    .local v2, "cs":Ljava/nio/charset/Charset;
    array-length v3, p1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 73
    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 75
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    return-object v3
.end method

.method private stringToInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "a":I
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/ui/service/YzsKeyThread;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 89
    .end local v0    # "a":I
    .local v1, "a":I
    :goto_0
    return v1

    .line 84
    .end local v1    # "a":I
    .restart local v0    # "a":I
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 89
    .end local v0    # "a":I
    .restart local v1    # "a":I
    goto :goto_0

    .line 85
    .end local v1    # "a":I
    .restart local v0    # "a":I
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v1, v0

    .line 87
    .end local v0    # "a":I
    .restart local v1    # "a":I
    goto :goto_0
.end method


# virtual methods
.method public isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 94
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 98
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 27
    const/4 v6, 0x0

    .line 29
    .local v6, "s":Landroid/net/LocalSocket;
    new-instance v6, Landroid/net/LocalSocket;

    .end local v6    # "s":Landroid/net/LocalSocket;
    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V

    .line 30
    .restart local v6    # "s":Landroid/net/LocalSocket;
    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v10, "yzskey"

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v10, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 32
    .local v4, "l":Landroid/net/LocalSocketAddress;
    :try_start_0
    const-string v10, "YzsKeyThread"

    const-string v11, "yzskey socket connect start"

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v6, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 34
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 35
    .local v1, "is":Ljava/io/InputStream;
    const/4 v10, 0x4

    new-array v8, v10, [B

    .line 36
    .local v8, "socketReadBuffer":[B
    const/4 v7, 0x0

    .line 37
    .local v7, "socketCount":I
    const/4 v3, 0x0

    .line 38
    .local v3, "keyEvent":I
    const/4 v2, 0x0

    .line 40
    .local v2, "keyCode":I
    :cond_0
    :goto_0
    const-string v10, "YzsKeyThread"

    const-string v11, "while yzskey socket connect"

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    .line 42
    invoke-direct {p0, v8}, Lcom/phicomm/speaker/device/ui/service/YzsKeyThread;->getChars([B)[C

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "resultValue":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/ui/service/YzsKeyThread;->stringToInt(Ljava/lang/String;)I

    move-result v9

    .line 44
    .local v9, "temp":I
    if-eqz v9, :cond_0

    .line 45
    shr-int/lit8 v3, v9, 0xc

    .line 46
    and-int/lit16 v2, v9, 0xfff

    .line 47
    const-string v10, "YzsKeyThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " socket resultValue = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ; socketCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " keyEvent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  keyCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " temp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v10, p0, Lcom/phicomm/speaker/device/ui/service/YzsKeyThread;->handler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 50
    iget-object v10, p0, Lcom/phicomm/speaker/device/ui/service/YzsKeyThread;->handler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/phicomm/speaker/device/ui/service/YzsKeyThread;->handler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v3, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "keyCode":I
    .end local v3    # "keyEvent":I
    .end local v5    # "resultValue":Ljava/lang/String;
    .end local v7    # "socketCount":I
    .end local v8    # "socketReadBuffer":[B
    .end local v9    # "temp":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    return-void
.end method

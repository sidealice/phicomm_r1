.class public Lcom/phicomm/speaker/player/airplay/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/phicomm/speaker/player/airplay/NetworkHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHardwareAddress()[B
    .locals 8

    .prologue
    const/4 v7, 0x6

    .line 20
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 21
    .local v2, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :cond_0

    .line 24
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isPointToPoint()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 28
    :try_start_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 29
    .local v3, "ifaceMacAddress":[B
    if-eqz v3, :cond_0

    array-length v4, v3

    if-ne v4, v7, :cond_0

    invoke-static {v3}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->isBlockedHardwareAddress([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    sget-object v4, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hardware address is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 31
    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 55
    .end local v2    # "iface":Ljava/net/NetworkInterface;
    .end local v3    # "ifaceMacAddress":[B
    :goto_1
    return-object v0

    .line 39
    :catch_0
    move-exception v4

    .line 45
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 46
    .local v0, "hostAddress":[B
    sget-object v4, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->LOG:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hardware address is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (IP address)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 49
    .end local v0    # "hostAddress":[B
    :catch_1
    move-exception v4

    .line 54
    sget-object v4, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->LOG:Ljava/util/logging/Logger;

    const-string v5, "Hardware address is 00DEADBEEF00 (last resort)"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 55
    new-array v0, v7, [B

    fill-array-data v0, :array_0

    goto :goto_1

    .line 34
    .restart local v2    # "iface":Ljava/net/NetworkInterface;
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 55
    :array_0
    .array-data 1
        0x0t
        -0x22t
        -0x53t
        -0x42t
        -0x11t
        0x0t
    .end array-data
.end method

.method public static getHardwareAddressString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->getHardwareAddress()[B

    move-result-object v0

    .line 99
    .local v0, "hardwareAddressBytes":[B
    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isBlockedHardwareAddress([B)Z
    .locals 5
    .param p0, "addr"    # [B

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 81
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    aget-byte v2, p0, v1

    if-nez v2, :cond_2

    aget-byte v2, p0, v0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_2

    aget-byte v2, p0, v4

    const/16 v3, 0x56

    if-eq v2, v3, :cond_0

    .line 87
    :cond_2
    aget-byte v2, p0, v1

    if-nez v2, :cond_3

    aget-byte v2, p0, v0

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v4

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    .line 90
    :cond_3
    aget-byte v2, p0, v1

    if-nez v2, :cond_4

    aget-byte v2, p0, v0

    const/16 v3, 0x25

    if-ne v2, v3, :cond_4

    aget-byte v2, p0, v4

    const/16 v3, -0x52

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v5, "s":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 67
    .local v1, "b":B
    or-int/lit16 v6, v1, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "h":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "b":B
    .end local v2    # "h":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
